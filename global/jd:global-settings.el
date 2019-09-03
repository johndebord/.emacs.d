(defun jd:describe-keymap (keymap)
  "Describe a keymap using `substitute-command-keys'"
  (interactive
   (list (completing-read
          "Keymap: " (let (maps)
                       (mapatoms (lambda (sym)
                                   (and (boundp sym)
                                        (keymapp (symbol-value sym))
                                        (push sym maps))))
                       maps)
          nil t)))
  (with-output-to-temp-buffer (format "*keymap: %s*" keymap)
    (princ (format "%s\n\n" keymap))
    (princ (substitute-command-keys (format "\\{%s}" keymap)))
    (with-current-buffer standard-output ;; temp buffer
      (setq help-xref-stack-item (list #'my-describe-keymap keymap)))))

;;; Custom mode line configuration
(setq mode-line-position
      '((-3 "%p")
        (line-number-mode (" %l" (column-number-mode ":%c")))))

;;; `C source code'
(put 'erase-buffer 'disabled nil)
(defalias 'yes-or-no-p 'y-or-n-p)
(push "/usr/local/opt/findutils/bin" exec-path)
(setq-default truncate-lines t)
(setq default-directory (substring jd:path-prefix 0 -9))
(setq echo-keystrokes 0.001)
(setq enable-recursive-minibuffers t)
(setq fill-column 80)
(setq gc-cons-threshold 64000000)
(setq hscroll-margin 2)
(setq hscroll-step 14)
(setq indent-tabs-mode nil)
(setq make-pointer-invisible nil)
(setq show-help-function nil)
(setq x-stretch-cursor 1)

;;; `elec-pair.el'
(electric-pair-mode 1)

;;; `etags.el'
(setq tags-revert-without-query t)

;;; `files.el'
(defalias 'ff 'find-file)
(setq auto-save-file-name-transforms `(("*" ,(concat jd:path-prefix "file-backups/") t)))
(setq backup-by-copying t)
(setq backup-directory-alist `(("*" . ,(concat jd:path-prefix "file-backups/"))))
(setq large-file-warning-threshold nil)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.ipp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("[Mm]akefile\\'" . makefile-mode))

;;; `frame.el'
(blink-cursor-mode 0)

;;; `linum.el'
(global-linum-mode 1)

;;; `mb-depth.el'
(minibuffer-depth-indicate-mode 1)

;;; `menu-bar.el'
(menu-bar-mode 0)

;;; `mwheel.el'
(setq mouse-wheel-scroll-amount '(1))
(setq mouse-wheel-tilt-scroll t)

;;; `paren.el'
(show-paren-mode 1)

;;; `register.el'
(setq register-preview-delay 0.001)

;;; `scroll-bar.el'
(scroll-bar-mode 0)

;;; `simple.el'
(setq column-number-mode 1)

;;; `startup.el'
(defun display-startup-echo-area-message () (message ""))
(setq inhibit-startup-screen 1)
(setq initial-buffer-choice 'eshell)
(setq initial-scratch-message "")

;;; `tool-bar.el'
(setq tool-bar-mode 0)
(setq tooltip-mode nil)

;;; `window.el'
(setq pop-up-frames nil)
(add-to-list 'same-window-buffer-names "*Help*")
(add-to-list 'same-window-buffer-names "*Faces*")
(add-to-list 'same-window-regexps ".+el.gz")

(provide 'jd:global-settings.el)
