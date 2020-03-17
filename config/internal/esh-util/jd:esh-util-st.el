;; Customization variables.
(defvar eshell-ange-ls-uids)
(defvar eshell-convert-numeric-arguments)
(defvar eshell-group-file)
(defvar eshell-handle-errors)
(defvar eshell-hosts-file)
(defvar eshell-number-regexp)
(defvar eshell-passwd-file)
(defvar eshell-private-directory-modes)
(defvar eshell-private-file-modes)
(defvar eshell-stringify-t)
(defvar eshell-tar-regexp)

(setq-default eshell-path-env
              (concat "/home/johndebord/install/bin:"
                      "/bin:"
                      "/sbin:"
                      "/usr/bin:"
                      "/usr/sbin:"
                      "/usr/local/bin:"
                      "/usr/local/sbin"))

(provide 'jd:esh-util-st)
