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

(defun jd:incredibly-smart-tab ()
  "[ ] TODO: Use a custom indentation function.
[ ] TODO: Possibly different behavior with `skippable-char-p'.
[ ] TODO: Get this operating with correctly before brackets."
  (interactive)
  (cl-flet
      ((jd:skippable-char-p
        ()
        (if (memq
             (char-after)
             '(#x29   ; ')'
               #x7d   ; '}'
               #x5d   ; ']'
               #x3e   ; '>'
               #x27   ; '''
               #x22)) ; '"'
            t
          nil))
       (jd:empty-line-p
        ()
        (save-excursion
          (beginning-of-line)
          (looking-at "[[:space:]]*$")))
       (jd:nothing-before-or-after-cursor-p
        ()
        (and
         (or
          (equal (char-before) nil)
          (equal (string-match "[[:blank:]\n]+" (char-to-string (char-before))) 0))
         (or
          (equal (char-after) nil)
          (equal (string-match "[[:blank:]\n]+" (char-to-string (char-after))) 0))))
       (jd:nothing-before-but-something-after-cursor-p
        ()
        (and
         (or
          (equal (char-before) nil)
          (equal (string-match "[[:blank:]\n]+" (char-to-string (char-before))) 0))
         (and
          (not (equal (char-after) nil))
          (equal (string-match "[[:blank:]\n]+" (char-to-string (char-after))) nil))))
       (jd:something-before-and-after-cursor-p
        ()
        (and
         (and
          (not (equal (char-after) nil))
          (equal (string-match "[[:blank:]\n]+" (char-to-string (char-before))) nil))
         (and
          (not (equal (char-after) nil))
          (equal (string-match "[[:blank:]\n]+" (char-to-string (char-after))) nil)))))
    (cond
     ((equal (jd:skippable-char-p) t)
      (forward-char 1))
     ((equal (region-active-p) t)
      (indent-for-tab-command))
     ((equal (jd:empty-line-p) t)
      (indent-for-tab-command))
     ((equal (jd:nothing-before-or-after-cursor-p) t)
      (indent-for-tab-command))
     ((equal (jd:nothing-before-but-something-after-cursor-p) t)
      (indent-for-tab-command))
     ((equal (jd:something-before-and-after-cursor-p) t)
      (indent-for-tab-command))
     ((equal company-mode t)
      (if (equal jd:company-select nil)
          (progn
            (company-complete-common)
            (setq jd:company-select t))
        (progn
          (company-complete-selection)
          (setq jd:company-select nil)))))))

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
