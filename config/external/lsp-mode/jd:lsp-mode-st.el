;; Faces.
(defvar lsp-face-highlight-read)
(defvar lsp-face-highlight-textual)
(defvar lsp-face-highlight-write)
(defvar lsp-face-semhl-constant)
(defvar lsp-face-semhl-deprecated)
(defvar lsp-face-semhl-disable)
(defvar lsp-face-semhl-enummember)
(defvar lsp-face-semhl-field)
(defvar lsp-face-semhl-field-static)
(defvar lsp-face-semhl-function)
(defvar lsp-face-semhl-method)
(defvar lsp-face-semhl-namespace)
(defvar lsp-face-semhl-preprocessor)
(defvar lsp-face-semhl-static-method)
(defvar lsp-face-semhl-type-class)
(defvar lsp-face-semhl-type-enum)
(defvar lsp-face-semhl-type-primitive)
(defvar lsp-face-semhl-type-template)
(defvar lsp-face-semhl-type-typedef)
(defvar lsp-face-semhl-variable)
(defvar lsp-face-semhl-variable-local)
(defvar lsp-face-semhl-variable-parameter)
(defvar lsp-lens-face)
(defvar lsp-lens-mouse-face)

;; Customization variables.
(defvar lsp-after-diagnostics-hook)
(defvar lsp-after-initialize-hook)
(defvar lsp-after-open-hook)
(defvar lsp-after-uninitialized-functions)
(defvar lsp-auto-configure)
(defvar lsp-auto-execute-action)
(defvar lsp-auto-guess-root)
(defvar lsp-before-apply-edits-hook)
(defvar lsp-before-initialize-hook)
(defvar lsp-before-open-hook)
(defvar lsp-before-save-edits)
(defvar lsp-client-packages)
(defvar lsp-debounce-full-sync-notifications)
(defvar lsp-debounce-full-sync-notifications-interval)
(defvar lsp-diagnostics-modeline-scope)
(defvar lsp-diagnostics-updated-hook)
(defvar lsp-disabled-clients)
(defvar lsp-document-sync-method)
(defvar lsp-eldoc-enable-hover)
(defvar lsp-eldoc-hook)
(defvar lsp-eldoc-render-all)
(defvar lsp-enable-completion-at-point)
(defvar lsp-enable-file-watchers)
(defvar lsp-enable-folding)
(defvar lsp-enable-imenu)
(defvar lsp-enable-indentation)
(defvar lsp-enable-links)
(defvar lsp-enable-on-type-formatting)
(defvar lsp-enable-semantic-highlighting)
(defvar lsp-enable-snippet)
(defvar lsp-enable-text-document-color)
(defvar lsp-enable-xref)
(defvar lsp-file-watch-ignored)
(defvar lsp-file-watch-threshold)
(defvar lsp-flycheck-live-reporting)
(defvar lsp-folding-line-folding-only)
(defvar lsp-folding-range-limit)
(defvar lsp-idle-delay)
(defvar lsp-imenu-container-name-separator)
(defvar lsp-imenu-show-container-name)
(defvar lsp-imenu-sort-methods)
(defvar lsp-io-messages-max)
(defvar lsp-keep-workspace-alive)
(defvar lsp-keymap-prefix)
(defvar lsp-lens-auto-enable)
(defvar lsp-lens-check-interval)
(defvar lsp-lens-debounce-interval)
(defvar lsp-links-check-internal)
(defvar lsp-log-io)
(defvar lsp-log-max)
(defvar lsp-on-change-hook)
(defvar lsp-on-idle-hook)
(defvar lsp-overlay-document-color-char)
(defvar lsp-prefer-capf)
(defvar lsp-print-performance)
(defvar lsp-report-if-no-buffer)
(defvar lsp-response-timeout)
(defvar lsp-restart)
(defvar lsp-server-install-dir)
(defvar lsp-server-trace)
(defvar lsp-session-file)
(defvar lsp-signature-auto-activate)
(defvar lsp-signature-doc-lines)
(defvar lsp-signature-render-documentation)
(defvar lsp-symbol-highlighting-skip-current)
(defvar lsp-tcp-connection-timeout)
(defvar lsp-workspace-folders-changed-functions)

(setq-default lsp-diagnostic-package :flymake)
(setq-default lsp-enable-symbol-highlighting nil)
(setq-default lsp-session-file (concat
                                jd:external-prefix
                                "lsp-mode/lsp-sessions/.lsp-session-v1"))

;; `lsp-clients.el`
(setq-default lsp-clients-clangd-args '("--background-index=true" "--header-insertion=never" "--pretty"))
(setq-default lsp-clients-clangd-executable "/home/i/install/bin/clangd")

;; Find lsp declaration in either the `company` popup or in a normal fashion.
(defun jd:lsp-find-declaration ()
  (interactive)
  (if (and (company--active-p) (jd:lsp-backend-p))
      (progn
        (jd:lsp-dispatch 'declaration))
    (progn
      (lsp-find-declaration))))

;; Find lsp definitions in either the `company` popup or in a normal fashion.
(defun jd:lsp-find-definition ()
  (interactive)
  (if (and (company--active-p) (jd:lsp-backend-p))
      (progn
        (jd:lsp-dispatch 'definition))
    (progn
      (lsp-find-definition))))

;; Find lsp references in either the `company` popup or in a normal fashion.
(defun jd:lsp-find-references ()
(interactive)
(if (and (company--active-p) (jd:lsp-backend-p))
    (progn
      (jd:lsp-dispatch 'references))
  (progn
    (lsp-find-references))))

(defun jd:lsp-backend-p ()
  (let ((backend (company--group-lighter
                  (nth company-selection
                       company-candidates)
                  company-lighter-base)))
    (if (not (string-equal backend "company-<lsp>"))
        (error "`jd:lsp-backend-p`")
      t)))

(defun jd:lsp-dispatch (tag)
  (let ((current-company-index company-selection)
        (saved-position (current-column))
        (line (buffer-substring (point-at-bol) (point-at-eol)))
        (source-buffer (current-buffer))
        (result-buffer)
        (inhibit-redisplay t))

    (company-complete-selection)
    
    ;; Prevent `yasnippet` from complaining.
    (let ((inhibit-message t))
      (if (eq (char-before) #x28) ; '('
          (progn
            (backward-char 1)
            (while (not (eq (char-after) #x29))
              (delete-char 1))
            (delete-char 1)))
      (if (eq (char-before) #x29) ; ')'
          (progn
            (backward-char 2)
            (delete-char 2)))
      (backward-char 1))

    (condition-case nil
        (cond
         ((eq tag 'declaration)
          (if (null (lsp-find-declaration))
              (progn
                ;; (jd:lsp-dispatch-reset)
                (error "`jd:lsp-dispatch`::declaration"))))
         ((eq tag 'definition)
          (if (null (lsp-find-definition))
              (progn
                ;; (jd:lsp-dispatch-reset)
                (error "`jd:lsp-dispatch`::definition"))))
         ((eq tag 'references)
          (if (null (lsp-find-references))
              (progn
                ;; (jd:lsp-dispatch-reset)
                (error "`jd:lsp-dispatch`::references")))))
      (error (jd:lsp-dispatch-reset)
             (error "`jd:lsp-dispatch`")))

    (setq result-buffer (current-buffer))
    (switch-to-buffer source-buffer)
    (xref-pop-marker-stack)
    (jd:lsp-dispatch-reset)
    (xref-push-marker-stack)
    (switch-to-buffer result-buffer)))

(defun jd:lsp-dispatch-reset ()
  (delete-region (point-at-bol)
                 (point-at-eol))
  (insert line)
  (beginning-of-line)
  (forward-char saved-position)
  
  ;; To fake that we actually make a completion.
  (jd:recently-finished-completion-nil)
  
  (jd:incredibly-smart-tab 'progmode)
  (company-set-selection current-company-index))

(jd:provide-feature jd:lsp-mode-st)
