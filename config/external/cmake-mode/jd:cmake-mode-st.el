(setq-default cmake-tab-width 4)

(defun jd:cmake-mode-hook ()
  (idle-highlight-mode 1))

(add-hook 'cmake-mode-hook 'jd:cmake-mode-hook)

(jd:provide-feature jd:cmake-mode-st)
