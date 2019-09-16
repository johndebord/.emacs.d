(defun jd:gnuplot-mode-map ()
  (setf (cdr gnuplot-mode-map) nil)
  (define-key gnuplot-mode-map (kbd "<C-b>") 'gnuplot-compile))
(add-hook 'gnuplot-mode-hook 'jd:gnuplot-mode-map)

(provide 'jd:gnuplot-mode-kb.el)
