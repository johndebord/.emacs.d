(provide 'jd:global-settings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function for my temporary use to describe keymap variables
;;; Fully comprehend it later on
(defun jd:describe-keymap (keymap)
  "Describe a keymap using `substitute-command-keys'."
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Custom mode line configuration
;;; Fully comprehend it later on
(setq mode-line-position
      '((-3 "%p")
        (line-number-mode (" %l" (column-number-mode ":%c")))))

;;;;;;;;;;;;;;;;;;;
;;; `C source code'
(defalias 'yes-or-no-p 'y-or-n-p)
(put 'erase-buffer 'disabled nil)
;; (setq debug-on-error t)
(setq echo-keystrokes 0.001)
(setq enable-recursive-minibuffers t)
(setq fill-column 80)
(setq indent-tabs-mode nil)
(setq gc-cons-threshold 64000000)
(setq make-pointer-invisible nil)
(setq x-stretch-cursor 1)

;;;;;;;;;;;;;;;;;;
;;; `elec-pair.el'
(electric-pair-mode 1)

;;;;;;;;;;;;;;
;;; `etags.el'
(setq tags-revert-without-query t)

;;;;;;;;;;;;;;
;;; `files.el'
(defalias 'ff 'find-file)
(setq auto-save-file-name-transforms `((".*" ,"~/.emacs.d/file-backups/" t)))
(setq backup-by-copying t)
(setq backup-directory-alist `((".*" . ,"~/.emacs.d/file-backups/")))
(setq large-file-warning-threshold nil)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.ipp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("[Mm]akefile\\'" . makefile-mode))

;;;;;;;;;;;;;;
;;; `frame.el'
(blink-cursor-mode 0)

;;;;;;;;;;;;;;
;;; `linum.el'
(global-linum-mode 1)

;;;;;;;;;;;;;;;;;
;;; `mb-depth.el'
(minibuffer-depth-indicate-mode 1)

;;;;;;;;;;;;;;;;;
;;; `menu-bar.el'
(menu-bar-mode 0)

;;;;;;;;;;;;;;
;;; `paren.el'
(show-paren-mode 1)

;;;;;;;;;;;;;;;;;
;;; `register.el'
(setq register-preview-delay 0.001)

;;;;;;;;;;;;;;;;;;;
;;; `scroll-bar.el'
(scroll-bar-mode 0)

;;;;;;;;;;;;;;;
;;; `simple.el'
(setq column-number-mode 1)

;;;;;;;;;;;;;;;;
;;; `startup.el'
(defun display-startup-echo-area-message () (message ""))
(setq inhibit-startup-screen 1)
(setq initial-scratch-message "")

;;;;;;;;;;;;;;;;;
;;; `tool-bar.el'
(tool-bar-mode 0)

;;;;;;;;;;;;;;;
;;; `window.el'
(setq pop-up-frames nil)
;; (setq pop-up-windows nil)
;; (add-to-list 'same-window-buffer-names "*Completions*")
(add-to-list 'same-window-buffer-names "*Help*")
(add-to-list 'same-window-buffer-names "*Faces*")
(add-to-list 'same-window-regexps ".+el.gz")
