(require 'cmake-mode
	 (concat jd:path-prefix "emacs-modes/third-party-packages/cmake-mode/cmake-mode.el"))

(require 'jd:c++-mode-keybindings.el
         (concat jd:path-prefix "emacs-modes/third-party-packages/cmake-mode/jd:cmake-mode-keybindings.el"))
(require 'jd:c++-mode-settings.el
         (concat jd:path-prefix "emacs-modes/third-party-packages/cmake-mode/jd:cmake-mode-settings.el"))

(provide 'jd:cmake-mode.el)
