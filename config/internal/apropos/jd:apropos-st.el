;; Faces.
(defvar apropos-function-button)
(defvar apropos-keybinding)
(defvar apropos-misc-button)
(defvar apropos-property)
(defvar apropos-symbol)
(defvar apropos-user-option-button)
(defvar apropos-variable-button)

;; Customization variables.
(defvar apropos-compact-layout)
(defvar apropos-do-all)
(defvar apropos-documentation-sort-by-scores)
(defvar apropos-match-face)
(defvar apropos-sort-by-scores)

(defun jd:apropos-mode-hook ()
  (font-lock-mode 1)
  (idle-highlight-mode 1))

(add-hook 'apropos-mode-hook 'jd:apropos-mode-hook)

(provide 'jd:apropos-st)
