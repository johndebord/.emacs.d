(defun jd:company-show-doc-buffer ()
  "Temporarily show the documentation buffer for the selection."
  (interactive)
  (company--electric-do
    (let* ((selected (nth company-selection company-candidates))
           (doc-buffer (or (company-call-backend 'doc-buffer selected)
                           (user-error "No documentation available")))
           start)
      (when (consp doc-buffer)
        (setq start (cdr doc-buffer)
              doc-buffer (car doc-buffer)))
      (set-buffer (get-buffer doc-buffer))
      (display-buffer doc-buffer))))

(defun jd:company-show-location ()
  "Temporarily display a buffer showing the selected candidate in context."
  (interactive)
  (company--electric-do
    (let* ((selected (nth company-selection company-candidates))
           (location (company-call-backend 'location selected))
           (pos (or (cdr location) (user-error "No location available")))
           (buffer (or (and (bufferp (car location)) (car location))
                       (find-file-noselect (car location) t))))
      (set-buffer (get-buffer buffer))
      (with-selected-window (display-buffer buffer)
        (save-restriction
          (widen)
          (if (bufferp (car location))
              (goto-char pos)
            (goto-char (point-min))
            (forward-line (1- pos))))
        (set-window-start nil (point))))))

(advice-add 'company-show-doc-buffer :override #'jd:company-show-doc-buffer)
(advice-add 'company-show-location :override #'jd:company-show-location)

(provide 'jd:company-st.el)
