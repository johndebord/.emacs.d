(require 'gnuplot-mode
	 (concat jd:path-prefix "emacs-modes/third-party-packages/gnuplot-mode/gnuplot-mode.el"))

(require 'jd:gnuplot-mode-keybindings.el
         (concat jd:path-prefix "emacs-modes/third-party-packages/gnuplot-mode/jd:gnuplot-mode-keybindings.el"))
(require 'jd:gnuplot-mode-settings.el
         (concat jd:path-prefix "emacs-modes/third-party-packages/gnuplot-mode/jd:gnuplot-mode-settings.el"))

(provide 'jd:gnuplot-mode.el)
