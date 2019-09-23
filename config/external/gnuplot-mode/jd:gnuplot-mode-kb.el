(setf (cdr gnuplot-mode-map) nil)
(define-key gnuplot-mode-map (kbd "<C-b>") 'gnuplot-compile)

(provide 'jd:gnuplot-mode-kb.el)
