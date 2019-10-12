(defvar jd:company-select nil)

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

(defun jd:incredibly-smart-tab ()
  "[ ] TODO: Use a custom indentation function.
[ ] TODO: Possibly different behavior with `skippable-char-p'."
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
         (equal (string-match "[[:blank:]\n]+" (char-to-string (char-before))) 0)
         (equal (string-match "[[:blank:]\n]+" (char-to-string (char-after))) 0)))
       (jd:nothing-before-but-something-after-cursor-p
        ()
        (and
         (equal (string-match "[[:blank:]\n]+" (char-to-string (char-before))) 0)
         (equal (string-match "[[:blank:]\n]+" (char-to-string (char-after))) nil)))
       (jd:something-before-and-after-cursor-p
        ()
        (and
         (equal (string-match "[[:blank:]\n]+" (char-to-string (char-before))) nil)
         (equal (string-match "[[:blank:]\n]+" (char-to-string (char-after))) nil))))
    (cond
     ((equal (jd:skippable-char-p) t)
      (forward-char 1))
     ((equal (region-active-p) t)
      (indent-according-to-mode))
     ((equal (jd:empty-line-p) t)
      (indent-according-to-mode))
     ((equal (jd:nothing-before-or-after-cursor-p) t)
      (indent-according-to-mode))
     ((equal (jd:nothing-before-but-something-after-cursor-p) t)
      (indent-according-to-mode))
     ((equal (jd:something-before-and-after-cursor-p) t)
      (indent-according-to-mode))
     ((equal company-mode t)
      (if (equal jd:company-select nil)
          (progn
            (company-complete-common)
            (setq jd:company-select t))
        (progn
          (company-complete-selection)
          (setq jd:company-select nil)))))))

(add-hook 'company-after-completion-hook
          (lambda (_)
            (setq jd:company-select nil)))

(add-hook 'company-completion-cancelled-hook
          (lambda (_)
            (setq jd:company-select nil)))



;; (setq jd:company-select nil)
;; (message (format "%s" jd:company-select))
;; (setq company-after-completion-hook nil)
;; (setq company-completion-cancelled-hook nil)

; move or del should reset variable?

;; [ ] Make sure to adjust the variable so that company only initiates manually
;; [ ] Always enable drop-down
;; [ ] Get appropriat backends

;; test: make sure mouse completion sets `jd:company-selection to nil'
;; test: 
;; test: 
;; test: 
;; test: 
;; test:

(advice-add 'company-show-doc-buffer :override #'jd:company-show-doc-buffer)
(advice-add 'company-show-location :override #'jd:company-show-location)

(provide 'jd:company-st.el)
