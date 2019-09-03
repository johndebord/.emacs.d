;;; Redefinition
(define-button-type 'help-function
  :supertype 'help-xref
  'help-function 'describe-function
  'help-echo (purecopy "describe this function"))

;;; Redefinition
(define-button-type 'help-variable
  :supertype 'help-xref
  'help-function 'describe-variable
  'help-echo (purecopy "describe this variable"))

;;; Redefinition
(define-button-type 'help-face
  :supertype 'help-xref
  'help-function 'describe-face
  'help-echo (purecopy "describe this face"))

;;; Redefinition
(define-button-type 'help-coding-system
  :supertype 'help-xref
  'help-function 'describe-coding-system
  'help-echo (purecopy "describe this coding system"))

;;; Redefinition
(define-button-type 'help-input-method
  :supertype 'help-xref
  'help-function 'describe-input-method
  'help-echo (purecopy "describe this input method"))

;;; Redefinition
(define-button-type 'help-character-set
  :supertype 'help-xref
  'help-function 'describe-character-set
  'help-echo (purecopy "describe this character set"))

;;; Redefinition
(define-button-type 'help-symbol
  :supertype 'help-xref
  'help-function #'describe-symbol
  'help-echo (purecopy "describe this symbol"))

;;; Redefinition
(define-button-type 'help-back
  :supertype 'help-xref
  'help-function #'help-xref-go-back
  'help-echo (purecopy "go back to previous help buffer"))

;;; Redefinition
(define-button-type 'help-forward
  :supertype 'help-xref
  'help-function #'help-xref-go-forward
  'help-echo (purecopy "move forward to next help buffer"))

;;; Redefinition
(define-button-type 'help-info-variable
  :supertype 'help-xref
  ;; the name of the variable is put before the argument to Info
  'help-function (lambda (_a v) (info v))
  'help-echo (purecopy "read this Info node"))

;;; Redefinition
(define-button-type 'help-info
  :supertype 'help-xref
  'help-function #'info
  'help-echo (purecopy "read this Info node"))

;;; Redefinition
(define-button-type 'help-url
  :supertype 'help-xref
  'help-function #'browse-url
  'help-echo (purecopy "view this URL in a browser"))

;;; Redefinition
(define-button-type 'help-customize-variable
  :supertype 'help-xref
  'help-function (lambda (v)
		   (customize-variable v))
  'help-echo (purecopy "customize variable"))

;;; Redefinition
(define-button-type 'help-customize-face
  :supertype 'help-xref
  'help-function (lambda (v)
		   (customize-face v))
  'help-echo (purecopy "customize face"))

;;; Redefinition
(define-button-type 'help-function-def
  :supertype 'help-xref
  'help-function (lambda (fun file &optional type)
		   (require 'find-func)
		   (when (eq file 'C-source)
		     (setq file
			   (help-C-file-name (indirect-function fun) 'fun)))
		   ;; Don't use find-function-noselect because it follows
		   ;; aliases (which fails for built-in functions).
		   (let ((location
			  (find-function-search-for-symbol fun type file)))
		     (pop-to-buffer (car location))
			 (run-hooks 'find-function-after-hook)
		     (if (cdr location)
			 (goto-char (cdr location))
		       (message "Unable to find location in file"))))
  'help-echo (purecopy "find function's definition"))

;;; Redefinition
(define-button-type 'help-function-cmacro ; FIXME: Obsolete since 24.4.
  :supertype 'help-xref
  'help-function (lambda (fun file)
		   (setq file (locate-library file t))
		   (if (and file (file-readable-p file))
		       (progn
			 (pop-to-buffer (find-file-noselect file))
			 (goto-char (point-min))
			 (if (re-search-forward
			      (format "^[ \t]*(\\(cl-\\)?define-compiler-macro[ \t]+%s"
				      (regexp-quote (symbol-name fun)))
                              nil t)
			     (forward-line 0)
			   (message "Unable to find location in file")))
		     (message "Unable to find file")))
  'help-echo (purecopy "find function's compiler macro"))

;;; Redefinition
(define-button-type 'help-variable-def
  :supertype 'help-xref
  'help-function (lambda (var &optional file)
		   (when (eq file 'C-source)
		     (setq file (help-C-file-name var 'var)))
		   (let ((location (find-variable-noselect var file)))
		     (pop-to-buffer (car location))
		     (run-hooks 'find-function-after-hook)
		     (if (cdr location)
		       (goto-char (cdr location))
		       (message "Unable to find location in file"))))
  'help-echo (purecopy "find variable's definition"))

;;; Redefinition
(define-button-type 'help-face-def
  :supertype 'help-xref
  'help-function (lambda (fun file)
		   (require 'find-func)
		   ;; Don't use find-function-noselect because it follows
		   ;; aliases (which fails for built-in functions).
		   (let ((location
			  (find-function-search-for-symbol fun 'defface file)))
		     (pop-to-buffer (car location))
		     (if (cdr location)
			 (goto-char (cdr location))
		       (message "Unable to find location in file"))))
  'help-echo (purecopy "find face's definition"))

;;; Redefinition
(define-button-type 'help-package
  :supertype 'help-xref
  'help-function 'describe-package
  'help-echo (purecopy "describe package"))

;;; Redefinition
(define-button-type 'help-package-def
  :supertype 'help-xref
  'help-function (lambda (file) (dired file))
  'help-echo (purecopy "visit package directory"))

;;; Redefinition
(define-button-type 'help-theme-def
  :supertype 'help-xref
  'help-function 'find-file
  'help-echo (purecopy "visit theme file"))

;;; Redefinition
(define-button-type 'help-theme-edit
  :supertype 'help-xref
  'help-function 'customize-create-theme
  'help-echo (purecopy "edit this theme file"))

;;; Redefinition
(define-button-type 'help-dir-local-var-def
  :supertype 'help-xref
  'help-function (lambda (_var &optional file)
		   ;; FIXME: this should go to the point where the
		   ;; local variable was defined.
		   (find-file file))
  'help-echo (purecopy "open directory-local variables file"))

(provide 'jd:help-mode-settings.el)
