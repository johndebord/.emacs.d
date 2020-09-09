(setq-default gnuplot-program "/usr/local/bin/gnuplot")

(defun jd:gnuplot-mode-hook ()
  (electric-pair-mode 1)
  (idle-highlight-mode 1))

(add-hook 'gnuplot-mode-hook 'jd:gnuplot-mode-hook)

(jd:provide-feature jd:gnuplot-mode-st)
