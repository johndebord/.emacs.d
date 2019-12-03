(defun jd:internal--byte-compile-file (file_)
  (cl-flet
      ((reconstruct-file_
        (prefix_ filename_)
        (let ((file_))
          (setq file_
                (concat jd:elc-prefix
                        "config/"
                        (file-name-nondirectory (directory-file-name (file-name-directory prefix_)))
                        "/"))
          (if (not (equal (file-name-nondirectory (directory-file-name (file-name-directory filename_)))
                          (file-name-nondirectory (directory-file-name (file-name-directory prefix_)))))
              (setq file_
                    (concat
                     file_
                     (file-name-nondirectory (directory-file-name (file-name-directory filename_)))
                     "/")))
          (setq file_
                (concat
                 file_
                 (file-name-sans-extension (file-name-nondirectory filename_))
                 ".elc"))
          file_)))
    (cond
     ((and (string-prefix-p jd:external-prefix file_)
           (not (string-prefix-p jd:elpa-prefix file_)))
      (let ((byte-compile-dest-file-function
             (lambda (filename_)
               (reconstruct-file_ jd:external-prefix filename_))))
        (byte-compile-file file_)))
     
     ((string-prefix-p jd:global-prefix file_)
      (let ((byte-compile-dest-file-function
             (lambda (filename_)
               (reconstruct-file_ jd:global-prefix filename_))))
        (byte-compile-file file_)))
     
     ((string-prefix-p jd:internal-prefix file_)
      (let ((byte-compile-dest-file-function
             (lambda (filename_)
               (reconstruct-file_ jd:internal-prefix filename_))))
        (byte-compile-file file_)))
     
     (t
      (byte-compile-file file_)))))

(defun jd:byte-recompile-all-files ()
  (interactive)
  
  (cl-flet
      ((construct-files-list_
        (directory-search-function_ &optional predicate_)
        (delq nil
              (mapcar
               (lambda (filename_)
                 (if (equal "el" (file-name-extension filename_))
                     (if (not (null predicate_))
                         (if (funcall predicate_ filename_)
                             filename_
                           nil)
                       filename_)
                   nil))
               (funcall directory-search-function_)))))
    
    (let ((root-files_
           (construct-files-list_
            (lambda ()
              (directory-files jd:path-prefix t ".el$"))))
          
          (elpa-files_
           (construct-files-list_
            (lambda ()
              (directory-files-recursively jd:external-prefix ".el"))
            (lambda (filename_)
              (string-prefix-p jd:elpa-prefix filename_))))
          
          (external-files_
           (construct-files-list_
            (lambda ()
              (directory-files-recursively jd:external-prefix ".el"))
            (lambda (filename_)
              (not (string-prefix-p jd:elpa-prefix filename_)))))
          
          (global-files_
           (construct-files-list_
            (lambda ()
              (directory-files jd:global-prefix t ".el$"))))
          
          (internal-files_
           (construct-files-list_
            (lambda ()
              (directory-files-recursively jd:internal-prefix ".el")))))
      
      (dolist (file_ root-files_) (jd:internal--byte-compile-file file_))
      (dolist (file_ elpa-files_) (jd:internal--byte-compile-file file_))
      (dolist (file_ external-files_) (jd:internal--byte-compile-file file_))
      (dolist (file_ global-files_) (jd:internal--byte-compile-file file_))
      (dolist (file_ internal-files_) (jd:internal--byte-compile-file file_)))))

(defun jd:delete-all-elc-files ()
  (interactive)
  (let ((files_))
    (setq files_ (directory-files-recursively jd:elc-prefix ".elc"))
    (delete-file (concat (getenv "HOME") "/.emacs.d/init.elc"))
    (dolist (file_ files_)
      (delete-file file_))))

(defun jd:byte-compile-file ()
  (interactive)
  (jd:internal--byte-compile-file (buffer-file-name)))

(provide 'jd:bytecomp-st)
