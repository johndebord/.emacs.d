(setq-default lsp-diagnostics-provider :none)
(setq-default lsp-eldoc-enable-hover nil)
(setq-default lsp-enable-links nil)
(setq-default lsp-enable-symbol-highlighting nil)
(setq-default lsp-modeline-code-actions-enable nil)
(setq-default lsp-modeline-diagnostics-enable nil)
(setq-default lsp-session-file (concat jd:path-prefix "/lsp-session-v1"))

;; `lsp-clangd.el`
(setq-default lsp-clients-clangd-args '("-j=8" "--background-index" "--header-insertion=never" "--pretty" "--log=verbose"))

(defun jd:lsp-find-declaration ()
  "Find lsp declaration in either the `company` popup or in a normal fashion."
  (interactive)
  (if (and (company--active-p) (jd:lsp-backend-p))
      (progn
        (jd:lsp-dispatch 'declaration))
    (progn
      (lsp-find-declaration))))

(defun jd:lsp-find-definition ()
  "Find lsp definitions in either the `company` popup or in a normal fashion."
  (interactive)
  (if (and (company--active-p) (jd:lsp-backend-p))
      (progn
        (jd:lsp-dispatch 'definition))
    (progn
      (lsp-find-definition))))

(defun jd:lsp-find-references ()
  "Find lsp references in either the `company` popup or in a normal fashion."
(interactive)
(if (and (company--active-p) (jd:lsp-backend-p))
    (progn
      (jd:lsp-dispatch 'references))
  (progn
    (lsp-find-references))))

(defun jd:lsp-backend-p ()
  "Ensure if the `company` backend being referred to is `company-lsp`."
  (let ((backend (company--group-lighter
                  (nth company-selection
                       company-candidates)
                  company-lighter-base)))
    (if (not (string-equal backend "company-<lsp>"))
        (error "`jd:lsp-backend-p`")
      t)))

(defun jd:lsp-dispatch (tag)
  "Core logic for interacting with `lsp-mode`."
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
                (error "`jd:lsp-dispatch`::declaration"))))
         ((eq tag 'definition)
          (if (null (lsp-find-definition))
              (progn
                (error "`jd:lsp-dispatch`::definition"))))
         ((eq tag 'references)
          (if (null (lsp-find-references))
              (progn
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
  "Reset the appropriate variables."
  (delete-region (point-at-bol)
                 (point-at-eol))
  (insert line)
  (beginning-of-line)
  (forward-char saved-position)
  
  ;; To fake that we actually make a completion.
  (jd:recently-finished-completion-nil)
  
  (jd:incredibly-smart-tab 'default)
  (company-set-selection current-company-index))

;; Boiler-plate for making `lsp-mode` work during an `ssh` session.
(lsp-register-client
 (make-lsp-client
  :new-connection
  (lsp-tramp-connection "/root/install/bin/clangd --background-index=true --header-insertion=never --pretty")
  :major-modes '(c++-mode)
  :remote? t
  :server-id 'work))

(jd:provide-feature jd:lsp-mode-st)
