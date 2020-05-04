;; Customization variables.
(defvar eshell-destroy-buffer-when-process-dies)
(defvar eshell-escape-control-x)
(defvar eshell-term-load-hook)
(defvar eshell-term-name)
(defvar eshell-visual-commands)
(defvar eshell-visual-options)

(add-to-list 'eshell-visual-commands "git")
(add-to-list 'eshell-visual-commands "sudo")

(jd:provide-feature jd:em-term-st)
