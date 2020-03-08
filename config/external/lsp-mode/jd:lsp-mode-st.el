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
(defvar lsp-diagnostic-package)
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
(defvar lsp-enable-symbol-highlighting)
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

(setq-default lsp-session-file (concat
                                jd:external-prefix
                                "lsp-mode/lsp-sessions/.lsp-session-v1"))

;; Disable `flymake-mode` whenever using `lsp-mode`, because `flymake-mode` adds
;; more confusion than value due to it identifying false-positives in code.
(defun jd:lsp ()
  (lsp)
  (flymake-mode 0))

(provide 'jd:lsp-mode-st)
