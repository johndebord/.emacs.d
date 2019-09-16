(defun jd:edit-abbrevs-mode-map ()
  (setf (cdr edit-abbrevs-mode-map) nil)
  (define-key edit-abbrevs-mode-map (kbd "<C-s>") 'abbrev-edit-save-buffer))
(add-hook 'edit-abbrevs-mode-hook 'jd:edit-abbrevs-mode-map)

(provide 'jd:abbrev-kb.el)
