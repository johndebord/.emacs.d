(provide 'jd:flymake-mode-settings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function for syntax checking with no Makefile
;;; Fully comprehend it later on
(defun jd:flymake-c++-init ()
  (let* (;; Create temp file which is copy of current file
         (temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         ;; Get relative path of temp file from current directory
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))

    ;; Construct compile command which is defined list.
    ;; First element is program name, "clang++" in this case.
    ;; Second element is list of options.
    ;; So this means "clang++ -Wall -Wextra -fsyntax-only tempfile-path"
    (list "clang++" (list "-Wall" "-Wextra" "-fsyntax-only" local-file))))

;; Enable above flymake setting for C++ files(suffix is '.cpp' and '.h')
(push '("\\.cpp$" jd:flymake-c++-init) flymake-allowed-file-name-masks)
(push '("\\.h$" jd:flymake-c++-init) flymake-allowed-file-name-masks)
(add-hook 'c++-mode-hook 'flymake-mode)
