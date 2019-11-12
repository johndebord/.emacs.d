(setq-default company-async-timeout 10)
(setq-default company-backends nil)
(setq-default company-idle-delay nil)
(setq-default company-frontends '(company-echo-metadata-frontend
                                  company-pseudo-tooltip-frontend))
(setq-default company-tooltip-limit 10)

(defvar-local jd:company-select nil
  "Determines whether to complete common or complete the selection.")

(defun jd:company-show-doc-buffer ()
  "Temporarily show the documentation buffer for the selection."
  (interactive)
  (let* ((selected (nth company-selection company-candidates))
         (doc-buffer (or (company-call-backend 'doc-buffer selected)
                         (user-error "No documentation available")))
         start)
    (when (consp doc-buffer)
      (setq start (cdr doc-buffer)
            doc-buffer (car doc-buffer)))
    (set-buffer (get-buffer doc-buffer))
    (display-buffer doc-buffer)))

(defun jd:company-next-page ()
  (interactive)
  (when (company-manual-begin)
    (if (and company-selection-wrap-around
             (= company-selection (1- company-candidates-length)))
        (company-set-selection 0)
      (let (company-selection-wrap-around)
        (company-set-selection (+ company-selection
                                  (1- company-tooltip-limit)))))))

(defun jd:company-previous-page ()
  (interactive)
  (when (company-manual-begin)
    (if (and company-selection-wrap-around
             (zerop company-selection))
        (company-set-selection (1- company-candidates-length))
      (let (company-selection-wrap-around)
        (company-set-selection (- company-selection
                                  (1- company-tooltip-limit)))))))

(defun jd:company-beginning-of-candidates ()
  (interactive)
  (company-set-selection 0))

(defun jd:company-end-of-candidates ()
  (interactive)
  (company-set-selection company-candidates-length))

(add-hook 'company-after-completion-hook
          (lambda (_)
            (setq jd:company-select nil)))

(add-hook 'company-completion-cancelled-hook
          (lambda (_)
            (setq jd:company-select nil)))

(advice-add 'company-show-doc-buffer :override 'jd:company-show-doc-buffer)
(advice-add 'company-show-location :override 'jd:company-show-location)

(provide 'jd:company-st.el)
