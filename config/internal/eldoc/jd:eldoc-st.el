;; Faces.
(defvar eldoc-highlight-function-argument)

;; Customization variables.
(defvar eldoc-argument-case)
(defvar eldoc-echo-area-use-multiline-p)
(defvar eldoc-minor-mode-string)
(defvar eldoc-print-after-edit)

(setq-default eldoc-idle-delay 0)

(global-eldoc-mode -1)

(eldoc-add-command 'jd:delete-backward-char)
(eldoc-add-command 'delete-char)
(eldoc-add-command 'jd:self-insert-space)

(jd:provide-feature jd:eldoc-st)
