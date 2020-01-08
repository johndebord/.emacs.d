;; Customization variables.
(defvar show-paren-highlight-openparen)
(defvar show-paren-priority)
(defvar show-paren-ring-bell-on-mismatch)
(defvar show-paren-style)
(defvar show-paren-when-point-in-periphery)
(defvar show-paren-when-point-inside-paren)

(setq-default show-paren-delay 0.001)

(show-paren-mode 1)

(provide 'jd:paren-st)
