(defun jd:asm-mode-hook ()
  (electric-pair-mode 1)
  (idle-highlight-mode 1))

(add-hook 'asm-mode-hook 'jd:asm-mode-hook)

(jd:provide-feature jd:asm-mode-st)