;;; method for testing site-listp changes and then committing:
;;; - remove all .elc files
;;; - run make in build directory
;;; - if success, then sudo make install

;; find . -name "*.elc" -type f -delete    jd:delete all
;; But use it with precaution. Run first:
;; find . -name "*.elc" -type f            jd:preview-delete-all

(defvar jd:cpp-print-active nil)

(defvar jd:cpp-print-value nil)

(defvar jd:cpp-print-string nil)

(defvar jd:cpp-print-count 0)

(defvar jd:cpp-print-strlen 0)

(defun jd:copy-and-comment-out ()
  (interactive)
  (cl-assert (region-active-p)
             nil
             "Region is not active.")
  (let ((beg_ (mark))
        (end_ (point)))
    (copy-region-as-kill beg_ end_)
    (comment-region beg_ end_)))

(defun jd:describe-bindings ()
  (interactive)
  (cl-flet*
      ((jd:keymap-symbol
        (jd:keymap)
        (catch 'return
          (mapatoms
           (lambda (jd:symbol)
             (and (boundp jd:symbol)
                  (eq (symbol-value jd:symbol) jd:keymap)
                  (not (eq jd:symbol 'jd:keymap))
                  (throw 'return jd:symbol))))))
       
       (jd:construct-minor-modes-keymaps-list
        (jd:keymaps)
        (let ((jd:list nil))
          (dolist (jd:keymap (cdr (current-minor-mode-maps)))
            (add-to-list 'jd:list (jd:keymap-symbol jd:keymap)))
          (setq jd:list (sort jd:list (lambda (a b) (string< a b)))))))
    
    (let ((jd:major-mode  (jd:keymap-symbol (current-local-map)))
          (jd:minor-modes (jd:construct-minor-modes-keymaps-list (current-minor-mode-maps)))
          (jd:global-mode (jd:keymap-symbol (current-global-map))))

      (with-output-to-temp-buffer "*Help*"
        (let ((jd:name (symbol-name jd:major-mode)))
          (princ jd:name) (princ " (major-mode)") (terpri)
          (princ (make-string (length (concat jd:name " (major-mode)")) ?-)) (terpri)
          (with-current-buffer "*Help*"
            (insert (substitute-command-keys (concat "\\{" jd:name "}"))))
          
          (dolist (jd:minor-mode-keymap jd:minor-modes)
            (setq jd:name (symbol-name jd:minor-mode-keymap))
            (princ jd:name) (princ " (minor-mode)") (terpri)
            (princ (make-string (length (concat jd:name " (minor-mode)")) ?-)) (terpri)
            (with-current-buffer "*Help*"
              (insert (substitute-command-keys (concat "\\{" jd:name "}")))))
          
          (setq jd:name (symbol-name jd:global-mode))
          (princ jd:name) (princ " (global-mode)") (terpri)
          (princ (make-string (length (concat jd:name " (global-mode)")) ?-)) (terpri)
          (with-current-buffer "*Help*"
            (insert (substitute-command-keys (concat "\\{" jd:name "}")))))))))

(defun jd:describe-keymaps-in-file ()
  (interactive)
  (let ((jd:file-name (concat (file-name-sans-extension (buffer-file-name)) "c"))
        (jd:keymap-symbols nil))
    
    (load-file jd:file-name)
    (mapatoms
     (lambda (jd:symbol)
       (when (and (boundp jd:symbol)
                  (keymapp (symbol-value jd:symbol))
                  (string= (symbol-file jd:symbol) jd:file-name))
         (push jd:symbol jd:keymap-symbols))))

    (with-output-to-temp-buffer "*Help*"
      (princ (format "File: %s" jd:file-name)) (terpri) (terpri)
      (let ((jd:name nil))
        (dolist (jd:keymap jd:keymap-symbols)
          (setq jd:name (symbol-name jd:keymap))
          (princ jd:name) (terpri)
          (princ (make-string (length jd:name) ?-)) (terpri)
          (with-current-buffer "*Help*"
            (insert (substitute-command-keys (concat "\\{" jd:name "}")))))))))

(defun jd:remove-text-properties ()
  (interactive)
  (remove-text-properties (mark) (point) '(face nil)))

;; bind to C-c C-c
(defun jd:cpp-print ()
  (interactive)
  (if (null jd:cpp-print-active)
      (progn
        (setq jd:cpp-print-value (read-from-minibuffer "Enter an optional value to print (if any): "))
        (if (not (= (length jd:cpp-print-value) 0))
            (setq jd:cpp-print-string (concat " /*jd:cpp-print*/ std::cout << \"---"
                                              (number-to-string jd:cpp-print-count)
                                              "---\" << "
                                              jd:cpp-print-value
                                              " << std::endl;"))
          (setq jd:cpp-print-string (concat " /*jd:cpp-print*/ std::cout << \"---"
                                            (number-to-string jd:cpp-print-count)
                                            "---\" << std::endl;"))))
    (progn
      (if (= (length jd:cpp-print-value) 0)
          (setq jd:cpp-print-string (concat " /*jd:cpp-print*/ std::cout << \"---"
                                            (number-to-string jd:cpp-print-count)
                                            "---\" << std::endl;"))
        (setq jd:cpp-print-string (concat " /*jd:cpp-print*/ std::cout << \"---"
                                          (number-to-string jd:cpp-print-count)
                                          "---\" << "
                                          jd:cpp-print-value
                                          " << std::endl;")))))
  (setq jd:cpp-print-active t)
  (point-to-register jd:cpp-print-count)
  (insert jd:cpp-print-string)
  (indent-for-tab-command)
  (setq jd:cpp-print-count (1+ jd:cpp-print-count)))

;; bind to C-c C-d
(defun jd:delete-cpp-prints ()
  (interactive)
  (save-excursion
    (let ((i 0))
      (while (< i jd:cpp-print-count)
        (progn
          (jump-to-register i)
          (delete-region (point)
                         (save-excursion
                           (end-of-line)
                           (point)))
          (setq i (1+ i))))))
  (setq jd:cpp-print-active nil)
  (setq jd:cpp-print-value nil)
  (setq jd:cpp-print-string nil)
  (setq jd:cpp-print-count 0))

(defun jd:construct-mode-folder ()
  "Automates the construction of a mode directory for customization.
[ ] TODO: Add feature to insert templates for rebinding all keymaps and
their respective keybinds by parsing through their respective files.
As a reminder:
v   = variable
b   = base lisp file
pt  = package type
pn  = package name
pfp = package folder path
ps  = package string
pkb = package keybindings
pst = package settings"
  (interactive)
  (let ((jd:pt nil)
	(jd:pn nil))
    (setq jd:pt (read-from-minibuffer "Please enter the folder type: "))
    (if (not (or (equal jd:pt "external")
                 (equal jd:pt "internal")))
	(error "Please enter a valid folder type"))
    (setq jd:pn (read-from-minibuffer "Please enter the folder name: "))
    (if (y-or-n-p (format "Is \"%s\" and \"%s\" correct?" jd:pt jd:pn))
	(progn
	  (let* ((jd:v-str
                  (if (equal jd:pt "external") "jd:external-prefix" "jd:internal-prefix"))
                 (jd:b-str
                  (if (equal jd:pt "external") "jd:elpa-prefix" "jd:site-lisp-prefix"))
                 (jd:pfp
                  (if (equal jd:pt "external") jd:external-prefix jd:internal-prefix))
		 (jd:ps
                  (concat "jd:" jd:pn ".el"))
		 (jd:pkb-str
                  (concat "jd:" jd:pn "-kb.el"))
		 (jd:pst-str
                  (concat "jd:" jd:pn "-st.el"))
                 (jd:x.el-str
                  (concat ";; (require '" jd:pn " (concat " jd:b-str " \".elc\"))\n\n"
                          "(require '" jd:pkb-str " (concat " jd:v-str " \"" jd:pn "/" jd:pkb-str "c\"))\n"
                          "(require '" jd:pst-str " (concat " jd:v-str " \"" jd:pn "/" jd:pst-str "c\"))\n\n"
                          "(provide '" jd:ps ")\n"))
                 (jd:x-kb.el-str
                  (concat "(provide '" jd:pkb-str ")\n"))
                 (jd:x-st.el-str
                  (concat "(provide '" jd:pst-str ")\n")))
	    (shell-command (concat "mkdir " jd:pfp "/" jd:pn))
	    (shell-command (concat "touch " jd:pfp "/" jd:pn "/" jd:ps))
	    (shell-command (concat "touch " jd:pfp "/" jd:pn "/" jd:pkb-str))
	    (shell-command (concat "touch " jd:pfp "/" jd:pn "/" jd:pst-str))
            (with-temp-file (concat jd:pfp "/" jd:pn "/" jd:ps)
	      (insert jd:x.el-str))
            (with-temp-file (concat jd:pfp "/" jd:pn "/" jd:pkb-str)
	      (insert jd:x-kb.el-str))
            (with-temp-file (concat jd:pfp "/" jd:pn "/" jd:pst-str)
	      (insert jd:x-st.el-str))
	    (let ((jd:match nil)
		  (jd:matches nil)
		  (jd:match-pos nil)
		  (jd:new-buffer-string nil))
	      (with-temp-buffer
		(insert-file-contents (concat jd:pfp "jd:" jd:pt "-config.el"))
		(goto-char 1)
		(while (search-forward-regexp "jd:.*.el\s" nil t 1)
		  (setq jd:match (match-string-no-properties 0))
		  (setq jd:match-pos (string-match (match-string-no-properties 0) (buffer-string)))
		  (push (cons jd:match jd:match-pos) jd:matches))
		(while (and (string< jd:ps (caar jd:matches))
                            (not (null jd:matches)))
		  (pop jd:matches))
		(if (eq jd:matches nil)
                    (progn
		      (goto-char 1)
                      (newline)
                      (forward-line -1))
		  (progn
		    (goto-char (cdr (car jd:matches)))
		    (end-of-line)
                    (newline)))
		(insert
		 (concat "(require '" jd:ps " (concat " jd:v-str " \"" jd:pn "/" jd:ps "c\"))"))
		(setq jd:new-buffer-string (buffer-string)))
	      (with-temp-file (concat jd:pfp "/" "jd:" jd:pt "-config.el")
		(insert jd:new-buffer-string)))
            (byte-compile-file (concat jd:pfp "/" jd:pn "/" jd:pkb-str))
            (byte-compile-file (concat jd:pfp "/" jd:pn "/" jd:pst-str))
            (byte-compile-file (concat jd:pfp "/" jd:pn "/" jd:ps))))
      (error "Please give valid arguments"))))

(defun jd:copy-line-and-goto-beg ()
  (interactive)
  (back-to-indentation)
  (copy-region-as-kill (point) (point-at-eol))
  (back-to-indentation)
  (message "Line copied"))

(defun jd:copy-line-and-goto-end ()
  (interactive)
  (back-to-indentation)
  (copy-region-as-kill (point) (point-at-eol))
  (end-of-line)
  (message "Line copied"))

(defun jd:counsel-find-file ()
  (interactive)
  (let ((jd:current-selection-file-path nil))
    (if (and (equal major-mode 'minibuffer-inactive-mode)
             (setq jd:current-selection-file-path
                   (buffer-file-name (get-buffer (ivy-state-current ivy-last)))))
        (progn
          (setq jd:current-selection-file-path (file-name-directory jd:current-selection-file-path))
          (funcall 'counsel-find-file jd:current-selection-file-path))
      (funcall 'counsel-find-file))))

(defun jd:delete-line ()
  (interactive)
  (beginning-of-line)
  (delete-region (point) (progn (end-of-line) (point)))
  (delete-char -1))

(defun jd:delete-word-backward ()
  (interactive)
  (delete-region
   (point)
   (progn
     (backward-word)
     (point))))

(defun jd:delete-word-forward ()
  "[ ] FIXME: Delete corresponding chars as well."
  (interactive)
  (delete-region
   (progn
     (forward-word)
     (point))
   (progn
     (backward-word)
     (point))))

(defun jd:incredibly-smart-backspace ()
  (interactive)
  (if (equal (yas--field-p (yas-current-field)) t)
      (yas-skip-and-clear-field)))

(defun jd:incredibly-smart-keyboard-quit ()
  (interactive)
  (if (equal (yas--field-p (yas-current-field)) t)
      (yas-exit-all-snippets)
    (keyboard-quit)))

(defun jd:incredibly-smart-return ()
  (interactive)
  (if (get-char-property (point) 'face)
      (let ((jd:save-point (point))
            (jd:char-property-value nil)
            (jd:file-name nil)
            (jd:line-number nil)
            (jd:column-number nil))
        (setq jd:char-property-value (get-char-property (point) 'face))
        (cond ((or
                (equal (nth 0 (cdr jd:char-property-value)) "#ADCF44")
                (equal (nth 0 (cdr jd:char-property-value)) "#63B4F6"))
	       (setq jd:file-name (thing-at-point 'filename 'no-properties))
	       (find-file jd:file-name)
	       (forward-line (- (line-number-at-pos))))
	      ((equal (nth 0 (cdr jd:char-property-value)) "#F0C649")
	       (setq jd:line-number (thing-at-point 'word 'no-properties))
	       (beginning-of-line)
	       (while (not (equal (nth 0 (cdr (get-char-property (point) 'face))) "#ADCF44"))
	         (forward-line -1))
	       (setq jd:file-name (thing-at-point 'filename 'no-properties))
               (goto-char jd:save-point)
	       (find-file jd:file-name)
               (goto-char (point-min))
	       (forward-line (- (string-to-number jd:line-number) 1)))
              ((equal (nth 0 (cdr jd:char-property-value)) "#666666")
	       (setq jd:file-name (car (split-string (thing-at-point 'filename 'no-properties) ":")))
               (setq jd:line-number (car (cdr (split-string (thing-at-point 'filename 'no-properties) ":"))))
               (setq jd:column-number (car (cddr (split-string (thing-at-point 'filename 'no-properties) ":"))))
               (find-file jd:file-name)
               (goto-char (point-min))
               (forward-line (- (string-to-number jd:line-number) 1))
               (forward-char (- (string-to-number jd:column-number) 1)))))
    (eshell-send-input)))

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
     ((equal (yas--field-p (yas-current-field)) t)
      (yas-next-field))
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

(defun jd:indent-region ()
  "Indents the entire function the cursor is currently in.
[ ] TODO:  Get this to work in other modes as well; in particuluar,
`fundamental-mode'.
[ ] FIXME: Check if the cursor jumps out of the current
function; if it does, let the user know and don't execute the function.
[ ] FIXME: Buggy when in `c++-mode'; fix this behavior."
  (interactive)
  (save-excursion
    (beginning-of-defun)
    (set-mark (point))
    (end-of-defun)
    (indent-for-tab-command)))

(defun jd:next-error ()
  (interactive)
  (select-window (get-buffer-window))
  (next-error))

(defun jd:previous-error ()
  (interactive)
  (select-window (get-buffer-window))
  (previous-error))

(defun jd:remove-unneeded-files ()
  "[ ] TODO: Conglomerate."
  (shell-command (concat "cd " jd:path-prefix "&& find . -name \"*.elc\" -type f -delete"))
  (shell-command (concat "cd " jd:path-prefix "&& find . -name \"*~\" -type f -delete"))
  (shell-command (concat "cd " jd:path-prefix "&& find . -name \"*#\" -type f -delete")))

(defun jd:reset-registers ()
  (interactive)
  (setq register-alist (append '((1)(2)(3)(4)(5)(6)(7)(8)(9)) register-alist)))

(defun jd:scroll-down ()
  (interactive "^")
  (let ((jd:proper-center-point
         (save-excursion
           (move-to-window-line nil)
           (point))))
    (if (not (eobp))
        (if (not (equal jd:proper-center-point (point)))
            (progn
              (move-to-window-line nil))
          (progn
            (cua-scroll-up)
            (if (not (eobp))
                (move-to-window-line nil)))))))

(defun jd:scroll-up ()
  (interactive "^")
  (let ((jd:proper-center-point
         (save-excursion
           (move-to-window-line nil)
           (point))))
    (if (not (bobp))
        (if (not (equal jd:proper-center-point (point)))
            (progn
              (move-to-window-line nil))
          (progn
            (cua-scroll-down)
            (if (not (bobp))
                (move-to-window-line nil)))))))

(defun jd:self-insert-space ()
  (interactive)
  (insert ?\s))

(defun jd:transpose-char-left ()
  (interactive)
  (save-excursion
    (forward-char)
    (transpose-chars -1))
  (backward-char))

(defun jd:transpose-char-right ()
  (interactive)
  (save-excursion
    (forward-char)
    (transpose-chars 1))
  (forward-char))

(defun jd:transpose-line-down ()
  (interactive)
  (let ((jd:current-column (current-column)))
    (forward-line 1)
    (transpose-lines 1)
    (forward-line -1)
    (move-to-column jd:current-column)))

(defun jd:transpose-line-up ()
  (interactive)
  (if (not (equal (line-number-at-pos) 1))
      (let ((jd:current-column (current-column)))
        (progn
          (forward-line 1)
          (transpose-lines -1)
          (forward-line -1)
          (move-to-column jd:current-column)))))

(defun jd:truncate-xref-references ()
  "Organizes output of `xref-find-references'; narrowing it down to
just the file names where the references are found."
  (interactive)
  (forward-line)
  (set-mark (point))
  (let ((jd:b 0))
    (while (equal jd:b 0)
      (forward-line)
      (if (or (equal (string (char-after (point))) "/")
	      ;;; FIXME
	      (equal (point) (point-max)))
	  (progn
	    (delete-active-region)
	    (setq jd:b 1))))))

(defun jd:window-backward ()
  (interactive)
  (other-window -1))

(defun jd:window-forward ()
  (interactive)
  (other-window 1))

(defun jd:xref-find-definitions ()
  (interactive)
  (if (equal (sexp-at-point) nil)
      (message "Point is not over a valid s-expression.")
    (if (and (memq 'company-etags (car company-backends))
             (equal tags-file-name nil))
        (message "`TAGS' file has not been set.")
      (if (company--active-p)
          (progn
            (xref-find-definitions (nth company-selection company-candidates)))
        (progn
          (xref-find-definitions (symbol-name (symbol-at-point))))))))

(defun jd:xref-find-references ()
  (interactive)
  (if (equal (sexp-at-point) nil)
      (message "Point is not over a valid s-expression.")
    (if (and (memq 'company-etags (car company-backends))
             (equal tags-file-name nil))
        (message "`TAGS` file has not been set.")
      (if (company--active-p)
          (progn
            (xref-find-references (nth company-selection company-candidates)))
        (progn
          (xref-find-references (symbol-name (symbol-at-point))))))))

(provide 'jd:global-procedure-definitions)
