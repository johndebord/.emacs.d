;; Normal `keyboard-quit` behavior does not go to the end of the snippet, thus
;; this function is for exactly that.
(defun jd:incredibly-smart-keyboard-quit ()
  (interactive)
  (if (equal (yas--field-p (yas-current-field)) t)
      (yas-exit-all-snippets)
    (keyboard-quit)))

;; Depending on the context of the `eshell` buffer and where the cursor is, this
;; function will navigate to the given file and possibly line of context.
(defun jd:incredibly-smart-return ()
  (interactive)
  (if (get-char-property (point) 'face)
      
      (let ((save-point (point))
            (char-property-value nil)
            (file-name nil)
            (line-number nil)
            (column-number nil))
        
        (setq char-property-value (get-char-property (point) 'face))
        
        (cond ((or
                (equal (cdr (nth 0 char-property-value)) "green3")
                (equal (cdr (nth 0 char-property-value)) "blue2"))
	       (setq file-name (thing-at-point 'filename 'no-properties))
	       (find-file file-name)
	       (forward-line (- (line-number-at-pos))))
              
	      ((equal (cdr (nth 0 char-property-value)) "yellow3")
	       (setq line-number (thing-at-point 'word 'no-properties))
	       (beginning-of-line)
	       (while (not (equal (cdr (nth 0 (get-char-property (point) 'face))) "green3"))
	         (forward-line -1))
	       (setq file-name (thing-at-point 'filename 'no-properties))
               (goto-char save-point)
	       (find-file file-name)
               (goto-char (point-min))
	       (forward-line (- (string-to-number line-number) 1)))
              
              ((equal (nth 0 (cdr char-property-value)) "#666666")
	       (setq file-name (car (split-string (thing-at-point 'filename 'no-properties) ":")))
               (setq line-number (car (cdr (split-string (thing-at-point 'filename 'no-properties) ":"))))
               (setq column-number (car (cddr (split-string (thing-at-point 'filename 'no-properties) ":"))))
               (find-file file-name)
               (goto-char (point-min))
               (forward-line (- (string-to-number line-number) 1))
               (forward-char (- (string-to-number column-number) 1)))))
    (eshell-send-input)))

;; Depending on the context of where the cursor is, this function will be smart
;; enough to know whether to do the following: complete a `yasnippet` snippet,
;; complete a `company` completion, indent the line appropriately, or skip a
;; skippable-char.
(defun jd:incredibly-smart-tab (arg)
  (cond
   ((eq arg 'eshell)
    (funcall 'jd:ist-eshell))
   ((eq arg 'progmode)
    (funcall 'jd:ist-progmode))))

(defun jd:ist-eshell ()
  (cond
   ((and (eq company-mode t)
         (null (jd:recently-finished-completion-p))
         (jd:has-context-for-completion-p))
    (jd:company-complete 'eshell))
   
   (t
    (jd:skip-char 'eshell))))

(defun jd:ist-progmode ()
  (cond
   ((region-active-p)
    (indent-for-tab-command))

   ((and (eq company-mode t)
         (null (jd:has-context-for-yasnippet-p))
         (null (jd:recently-finished-completion-p))
         (jd:has-context-for-completion-p))
    (jd:company-complete 'progmode))

   ((and (eq yas-minor-mode t)
         (jd:has-context-for-yasnippet-p))
    (yas-next-field))

   (t
    (jd:skip-char 'progmode))))

(defun jd:company-complete (mode)
  (if (null jd:company-select)
      (progn
        (if (null (company-complete-common))
            (jd:skip-char mode))
        (jd:company-select-t))
    (progn
      (company-complete-selection)
      (jd:recently-finished-completion-t))))

(defun jd:skip-char (mode)
  (if (jd:skippable-char-after-p)
      (forward-char 1)
    (if (eq mode 'progmode)
        (indent-for-tab-command))))

(defun jd:skippable-char-before-p ()
  (if (memq
       (char-before)
       '(list #x28    ; '('
              #x29    ; ')'
              #x7B    ; '{'
              #x7D    ; '}'
              #x5B    ; '['
              #x5D    ; ']'
              #x3C    ; '<'
              #x3E    ; '>'
              #x27    ; '\''
              #x22))  ; '\"'
      t
    nil))

(defun jd:skippable-char-after-p ()
  (if (memq
       (char-after)
       '(list #x28    ; '('
              #x29    ; ')'
              #x7B    ; '{'
              #x7D    ; '}'
              #x5B    ; '['
              #x5D    ; ']'
              #x3C    ; '<'
              #x3E    ; '>'
              #x27    ; '\''
              #x22))  ; '\"'
      t
    nil))

(defun jd:quotation-char-after-p ()
  (if (memq
       (char-after)
       (list #x27   ; '\''
             #x22)) ; '\"'
      t
    nil))

(defun jd:nothing-before-cusor-p ()
  (if (or
       (equal (char-before) nil)
       (equal (string-match "[[:blank:]\n]+"
                            (char-to-string (char-before))) 0))
      t
    nil))

(defun jd:nothing-after-cusor-p ()
  (if (or
       (equal (char-after) nil)
       (equal (string-match "[[:blank:]\n]+"
                            (char-to-string (char-after))) 0))
      t
    nil))

(defun jd:recently-finished-completion-p ()
  (if jd:recently-finished-completion
      t
    nil))
       
(defun jd:has-context-for-completion-p ()
  (if (and (not (jd:nothing-before-cusor-p))
           (not (jd:skippable-char-before-p))
           (or (jd:skippable-char-after-p)
               (jd:nothing-after-cusor-p)))
      t
    nil))

(defun jd:has-context-for-yasnippet-p ()
  (if (yas--field-p (yas-current-field))
      t
    nil))

(provide 'jd:incredible)
