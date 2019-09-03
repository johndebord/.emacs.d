;;; `gnuplot-mode.el'
;;; specify the gnuplot executable (if other than /usr/bin/gnuplot)
(setq gnuplot-program "/usr/local/bin/gnuplot")

;;; automatically open files ending with .gp or .gnuplot in gnuplot mode
(setq auto-mode-alist (append '(("\\.\\(gp\\|gnuplot\\)$" . gnuplot-mode)) auto-mode-alist))

(provide 'jd:gnuplot-mode-settings.el)
