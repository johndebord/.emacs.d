(setq-default debugger-bury-or-kill nil)

(defun jd:debugger-mode-hook ()
  (idle-highlight-mode 1))

(add-hook 'debugger-mode-hook 'jd:debugger-mode-hook)

(jd:provide-feature jd:debug-st)
