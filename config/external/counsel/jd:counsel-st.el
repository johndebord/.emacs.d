(setq-default counsel-grep-base-command "rg -i -M 120 --no-heading --line-number --color never '%s' %s")
(setq-default counsel-preselect-current-file t)
(setq-default counsel-rg-base-command "rg -i -M 120 --no-heading --line-number --color never %s .")

(defun jd:counsel-M-x-transformer (cmd)
  "Return CMD annotated with its active key binding, if any."
  (let ((alias (symbol-function (intern cmd)))
        (key (where-is-internal (intern cmd) nil t)))
    (concat cmd
            (when (and (symbolp alias) counsel-alias-expand)
              (format " (%s)" alias))
            (when key
              ;; Prefer `<f2>' over `C-x 6' where applicable
              (let ((i (cl-search [?\C-x ?6] key)))
                (when i
                  (let ((dup (vconcat (substring key 0 i) [f2] (substring key (+ i 2))))
                        (map (current-global-map)))
                    (when (equal (lookup-key map key)
                                 (lookup-key map dup))
                      (setq key dup)))))
              (setq key (key-description key))
              (put-text-property 0 (length key) 'face 'counsel-key-binding key)
              ;; (format " (%s)" key)
              ))))

(advice-add 'counsel-M-x-transformer :override #'jd:counsel-M-x-transformer)

(provide 'jd:counsel-st.el)
