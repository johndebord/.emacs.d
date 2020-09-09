(column-number-mode 1)
(size-indication-mode 1)

(defun jd:eval-expression-minibuffer-setup-hook ()
  (eldoc-mode 1)
  (electric-pair-mode 1)
  (idle-highlight-mode 1))

(add-hook 'eval-expression-minibuffer-setup-hook 'jd:eval-expression-minibuffer-setup-hook)

;; Force point to tail the end of the `*Messages*` buffer.
;; Slight modification to:
;; Courtesy: https://stackoverflow.com/questions/4682033
(advice-add 'message :after
            (lambda (&rest _)
              (let* ((win (get-buffer-window "*Messages*"))
                     (buf (and win (window-buffer win))))
                (and win (not (equal (current-buffer) buf))
                     (set-window-point win (with-current-buffer buf (point-max)))))))

(jd:provide-feature jd:simple-st)
