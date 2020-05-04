;; Customization variables.
(defvar abbrev-all-caps)
(defvar only-global-abbrevs)
(defvar pre-abbrev-expand-hook)

(setq-default abbrev-file-name
              (concat jd:internal-prefix "abbrev/abbrev_defs"))

(jd:provide-feature jd:abbrev-st)
