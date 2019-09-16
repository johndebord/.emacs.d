(setf (cdr edmacro-mode-map) nil)
(define-key edmacro-mode-map (kbd "<C-c> <C-c>") 'edmacro-finish-edit)
(define-key edmacro-mode-map (kbd "<C-c> <C-q>") 'edmacro-insert-key)

(provide 'jd:edmacro-kb.el)
