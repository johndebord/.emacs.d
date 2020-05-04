;; Customization variables.
(defvar help-mode-hook)

(defun jd:help-mode-hook ()
  (font-lock-mode 1)
  (idle-highlight-mode 1))

(add-hook 'help-mode-hook 'jd:help-mode-hook)

(jd:provide-feature jd:help-mode-st)
