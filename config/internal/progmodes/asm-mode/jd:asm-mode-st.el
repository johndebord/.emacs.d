(defun jd:asm-mode-hook ()
  (idle-highlight-mode 1))

(add-hook 'asm-mode-hook 'jd:asm-mode-hook)

(jd:provide-feature jd:asm-mode-st)
