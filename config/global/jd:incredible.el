(defun jd:incredibly-smart-keyboard-quit ()
  "Normal `keyboard-quit` behavior does not go to the end of the snippet, thus
this function is for exactly that."
  (interactive)
  (if (equal (yas--field-p (yas-current-field)) t)
      (yas-exit-all-snippets)
    (keyboard-quit)))

;; TODO select the buffer `(select-window (get-buffer-window))`
;; TODO fix the "or: Wrong type argument: number-or-marker-p, nil [2 times]" error
(defun jd:incredibly-smart-return ()
  "Depending on the context of the `eshell-mode` buffer and where the cursor is,
this function will navigate to the given file and possibly line of context."
  (interactive)
  (cond
   ((get-char-property (point) 'face)
    
    (let ((save-point (point))
          (char-property-value nil)
          (file-name nil)
          (line-number nil)
          (column-number nil))
      
      (setq char-property-value (get-char-property (point) 'face))
      
      (cond ((button-at (point))
             (jd:push-button))
            
            ((or
              (equal (cdr (nth 0 char-property-value)) "green3")
              (equal (cdr (nth 0 char-property-value)) "blue2"))
             (setq file-name (thing-at-point 'filename 'no-properties))
             (find-file file-name)
             (select-window (get-buffer-window))
             (forward-line (- (line-number-at-pos))))
            
            ((equal (cdr (nth 0 char-property-value)) "yellow3")
             (setq line-number (thing-at-point 'word 'no-properties))
             (beginning-of-line)
             (while (not (equal (cdr (nth 0 (get-char-property (point) 'face))) "green3"))
               (forward-line -1))
             (setq file-name (thing-at-point 'filename 'no-properties))
             (goto-char save-point)
             (find-file file-name)
             (select-window (get-buffer-window))
             (goto-char (point-min))
             (forward-line (- (string-to-number line-number) 1)))
            
            ((or (equal (nth 0 (cdr char-property-value)) "#666666")
                 (not (null (string-match ":[0-9]+:[0-9]+:" (thing-at-point 'filename 'no-properties)))))
             (setq file-name (car (split-string (thing-at-point 'filename 'no-properties) ":")))
             (setq line-number (car (cdr (split-string (thing-at-point 'filename 'no-properties) ":"))))
             (setq column-number (car (cddr (split-string (thing-at-point 'filename 'no-properties) ":"))))
             (find-file file-name)
             (select-window (get-buffer-window))
             (goto-char (point-min))
             (forward-line (- (string-to-number line-number) 1))
             (forward-char (- (string-to-number column-number) 1)))

            ((not (null (string-match ":[0-9]+:[0-9]+:" (thing-at-point 'filename 'no-properties))))
             (setq file-name (car (split-string (thing-at-point 'filename 'no-properties) ":")))
             (setq line-number (car (cdr (split-string (thing-at-point 'filename 'no-properties) ":"))))
             (setq column-number (car (cddr (split-string (thing-at-point 'filename 'no-properties) ":"))))
             (find-file file-name)
             (select-window (get-buffer-window))
             (goto-char (point-min))
             (forward-line (- (string-to-number line-number) 1))
             (forward-char (- (string-to-number column-number) 1))))))
   
   ((and (thing-at-point 'filename)
         (not (null (string-match ":[0-9]+:[0-9]+:" (thing-at-point 'filename 'no-properties)))))
    (progn
      (setq file-name (car (split-string (thing-at-point 'filename 'no-properties) ":")))
      (setq line-number (car (cdr (split-string (thing-at-point 'filename 'no-properties) ":"))))
      (setq column-number (car (cddr (split-string (thing-at-point 'filename 'no-properties) ":"))))
      (find-file file-name)
      (select-window (get-buffer-window))
      (goto-char (point-min))
      (forward-line (- (string-to-number line-number) 1))
      (forward-char (- (string-to-number column-number) 1))))

   (t
    (eshell-send-input))))

(defun jd:incredibly-smart-tab-default () (interactive) (jd:incredibly-smart-tab 'default))
(defun jd:incredibly-smart-tab-eshell () (interactive) (jd:incredibly-smart-tab 'eshell))
(defun jd:incredibly-smart-tab-term-mode () (interactive) (jd:incredibly-smart-tab 'term-mode))

(defun jd:incredibly-smart-tab (arg)
  "Depending on the context of where the cursor is, this function will be smart
enough to know whether to do the following: complete a `yasnippet` snippet,
complete a `company` completion, indent the line appropriately, or skip a
skippable-char."
  (cond
   ((eq arg 'default)
    (funcall 'jd:ist-progmode))
   ((eq arg 'eshell)
    (funcall 'jd:ist-eshell))
   ((eq arg 'term-mode)
    (funcall 'jd:ist-term-mode))))

(defun jd:ist-eshell ()
  "Handle incredibly smart tab `eshell-mode` case."
  (cond
   ((and (eq company-mode t)
         (jd:has-context-for-completion-p))
    (jd:company-complete 'eshell))
   
   (t
    (jd:skip-char-if-possible 'eshell))))

(defun jd:ist-progmode ()
  "Handle incredibly smart tab any progmode case."
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
    (jd:skip-char-if-possible 'progmode))))

(defun jd:ist-term-mode ()
  "Handle incredibly smart tab `term-mode` case."
  (term-send-raw-string "\C-I"))

(defun jd:company-complete (mode)
  "Core logic for completion in context."
  (cond
   ((eq mode 'eshell)
    (if (or (null jd:company-select)
            (jd:recently-finished-completion-p))
        (progn
          (if (null (company-manual-begin))
              (jd:skip-char-if-possible 'eshell)
            (progn
              ;; This is to deal with the case that a full completion may happen
              ;; with `company-complete-common` which can beget an all new
              ;; completion.
              (if (jd:recently-finished-completion-p)
                  (jd:recently-finished-completion-nil))
              
              (company-complete-common)
              (jd:company-select-t))))
      (progn
        (company-complete-selection)
        (jd:recently-finished-completion-t))))
   
   ((eq mode 'progmode)
    (if (null jd:company-select)
        (progn
          (if (null (company-manual-begin))
              (jd:skip-char-if-possible 'progmode)
            (progn
              (company-complete-common)
              (jd:company-select-t))))
      (progn
        (company-complete-selection)
        (jd:recently-finished-completion-t))))))

(defun jd:skip-char-if-possible (mode)
  "Check if character after is skippable depending on mode."
  (if (jd:skippable-char-after-p)
      (forward-char 1)
    (if (eq mode 'progmode) (indent-for-tab-command))))

(defun jd:skippable-char-before-p ()
  "Check for completion context before the cursor."
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
  "Check for completion context after the cursor."
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
  "Check for quotation marks for completion context after the cursor."
  (if (memq
       (char-after)
       (list #x27   ; '\''
             #x22)) ; '\"'
      t
    nil))

(defun jd:nothing-before-cusor-p ()
  "Check for completion context before the cursor."
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
  "Check if recently finished a completion."
  (if jd:recently-finished-completion
      t
    nil))
       
(defun jd:has-context-for-completion-p ()
  "Check surrounding characters if completion is a possibility."
  (if (and (not (jd:nothing-before-cusor-p))
           (not (jd:skippable-char-before-p))
           (or (jd:skippable-char-after-p)
               (jd:nothing-after-cusor-p)))
      t
    nil))

(defun jd:has-context-for-yasnippet-p ()
  "Check if in a `yasnippet` field."
  (if (yas--field-p (yas-current-field))
      t
    nil))

(defun jd:incredibly-smart-eshell (&optional arg)
  "Depending on the context of where the cursor is, this function will
instantiate a new `eshell-mode` buffer in the given directory or it will pop to
the default `eshell-mode` buffer."
  (interactive "P")
  (if (minibuffer-window-active-p (get-buffer-window))
      (ivy-exit-with-action
       (lambda (_)
         (let ((current-prefix-arg '-)
               (default-directory ivy--directory))
           (call-interactively 'eshell))))
    (eshell arg)))

(defvar jd:macro-count-for-session 1
  "Variable to keep track of the number of custom macros saved during this Emacs
  seesion.")

(defun jd:incredible-save-and-bind-last-macro ()
  "Save the last macro used and bind it to a convenient keybinding."
  (interactive)
  (cl-assert (and (>= jd:macro-count-for-session 1)
                  (<= jd:macro-count-for-session 9)))
  (let* ((macro-count-str (number-to-string jd:macro-count-for-session))
         (macro-count-sym (make-symbol macro-count-str)))
    (kmacro-name-last-macro macro-count-sym)
    (define-key global-map (kbd (concat "<M-" macro-count-str ">")) macro-count-sym)
    (message (format "Macro number %s assigned to keybind <M-%s>"
                     macro-count-str
                     macro-count-str)))
  (setq jd:macro-count-for-session (1+ jd:macro-count-for-session)))

(jd:provide-feature jd:incredible)
