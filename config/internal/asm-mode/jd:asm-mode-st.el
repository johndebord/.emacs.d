;; Customization variables.
(defvar asm-comment-char)

(defun jd:asm-mode-hook ()
  (electric-pair-mode 1)
  (font-lock-mode 1)
  (idle-highlight-mode 1))

(add-hook 'asm-mode-hook 'jd:asm-mode-hook)

(provide 'jd:asm-mode-st)
