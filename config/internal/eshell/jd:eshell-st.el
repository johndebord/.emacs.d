;; Customization variables.
(defvar eshell-buffer-name)
(defvar eshell-load-hook)
(defvar eshell-unload-hook)

(setq-default eshell-directory-name
              (concat jd:internal-elisp-files-prefix "eshell/eshell"))

(jd:provide-feature jd:eshell-st)
