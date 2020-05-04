;; Customization variables.
(defvar byte-compile-call-tree-sort)
(defvar byte-compile-cond-use-jump-table)
(defvar byte-compile-delete-errors)
(defvar byte-compile-dest-file-function)
(defvar byte-compile-dynamic-docstrings)
(defvar byte-compile-error-on-warn)
(defvar byte-compile-generate-call-tree)
(defvar byte-compile-verbose)
(defvar byte-compile-warnings)
(defvar byte-optimize)
(defvar byte-optimize-log)
(defvar emacs-lisp-file-regexp)

;; Reconstruct the name of the given file if it is indeed one of my personal
;; configuration files; this is so that the byte-compiled file may be saved in
;; the appropriate directory. If the file is not indeed one of my configuration
;; files, the `.elc` file shall be placed in the current directory. After the
;; name of the file has been established, byte-compile it.
(defun jd:internal--byte-compile-file (file)
  (cl-flet
      ((reconstruct-file
        (prefix filename)
        (let ((file))
          (setq file
                (concat jd:elc-prefix
                        "config/"
                        (file-name-nondirectory (directory-file-name (file-name-directory prefix)))
                        "/"))
          (if (not (equal (file-name-nondirectory (directory-file-name (file-name-directory filename)))
                          (file-name-nondirectory (directory-file-name (file-name-directory prefix)))))
              (setq file
                    (concat
                     file
                     (file-name-nondirectory (directory-file-name (file-name-directory filename)))
                     "/")))
          (setq file
                (concat
                 file
                 (file-name-sans-extension (file-name-nondirectory filename))
                 ".elc"))
          file)))

    (cond
     ((and (string-prefix-p jd:external-prefix file)
           (not (string-prefix-p jd:elpa-prefix file)))
      (let ((byte-compile-dest-file-function
             (lambda (filename)
               (reconstruct-file jd:external-prefix filename))))
        (byte-compile-file file)))

     ((string-prefix-p jd:global-prefix file)
      (let ((byte-compile-dest-file-function
             (lambda (filename)
               (reconstruct-file jd:global-prefix filename))))
        (byte-compile-file file)))

     ((string-prefix-p jd:internal-prefix file)
      (let ((byte-compile-dest-file-function
             (lambda (filename)
               (reconstruct-file jd:internal-prefix filename))))
        (byte-compile-file file)))

     (t
      (byte-compile-file file)))))

;; Byte-compile all of my personal configuration files and, place them in their
;; appropriate directory; where all of my corresponding `.elc` files reside.
(defun jd:byte-recompile-all-files ()
  (interactive)
  (cl-flet
      ((construct-files-list
        (directory-search-function &optional predicate)
        (delq nil
              (mapcar
               (lambda (filename)
                 (if (equal "el" (file-name-extension filename))
                     (if (not (null predicate))
                         (if (funcall predicate filename)
                             filename
                           nil)
                       filename)
                   nil))
               (funcall directory-search-function)))))

    (let ((root-files
           (construct-files-list
            (lambda ()
              (directory-files jd:path-prefix t ".el$"))))

          (elpa-files
           (construct-files-list
            (lambda ()
              (directory-files-recursively jd:external-prefix ".el"))
            (lambda (filename)
              (string-prefix-p jd:elpa-prefix filename))))

          (external-files
           (construct-files-list
            (lambda ()
              (directory-files-recursively jd:external-prefix ".el"))
            (lambda (filename)
              (not (string-prefix-p jd:elpa-prefix filename)))))

          (global-files
           (construct-files-list
            (lambda ()
              (directory-files jd:global-prefix t ".el$"))))

          (internal-files
           (construct-files-list
            (lambda ()
              (directory-files-recursively jd:internal-prefix ".el")))))

      (dolist (file root-files) (jd:internal--byte-compile-file file))
      (dolist (file elpa-files) (jd:internal--byte-compile-file file))
      (dolist (file external-files) (jd:internal--byte-compile-file file))
      (dolist (file global-files) (jd:internal--byte-compile-file file))
      (dolist (file internal-files) (jd:internal--byte-compile-file file)))))

;; Delete all of my byte-compiled personal configuration files. This is to keep
;; my configuration clean and portable when need be.
(defun jd:delete-all-elc-files ()
  (interactive)
  (let ((files))
    (setq files (directory-files-recursively jd:elc-prefix ".elc"))
    (delete-file (concat (getenv "HOME") "/.emacs.d/init.elc"))
    (dolist (file files)
      (delete-file file))))

;; Byte-compile one individual file.
(defun jd:byte-compile-file ()
  (interactive)
  (jd:internal--byte-compile-file (buffer-file-name)))

(jd:provide-feature jd:bytecomp-st)
