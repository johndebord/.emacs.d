;; Describes all current keybindings in the buffer in the format:
;; `````````````````````
;; keymap (major-mode)
;; -------------------
;; key             binding
;; ---             -------
;;
;; keymap (minor-mode)
;; -------------------
;; key             binding
;; ---             -------
;;
;; `````````````````````
(defun jd:describe-bindings ()
  (interactive)
  (cl-flet*
      ((keymap-symbol
        (keymap)
        (catch 'return
          (mapatoms
           (lambda (symbol)
             (and (boundp symbol)
                  (eq (symbol-value symbol) keymap)
                  (not (eq symbol 'keymap))
                  (throw 'return symbol))))))
       
       (construct-minor-modes-keymaps-list
        ()
        (let ((list nil))
          (dolist (keymap (cdr (current-minor-mode-maps)))
            (add-to-list 'list (keymap-symbol keymap)))
          (setq list (sort list (lambda (a b) (string< a b)))))))
    
    (let ((major-mode  (keymap-symbol (current-local-map)))
          (minor-modes (construct-minor-modes-keymaps-list))
          (global-mode (keymap-symbol (current-global-map))))

      (with-output-to-temp-buffer "*Help*"
        (let ((name (symbol-name major-mode)))
          (princ name) (princ " (major-mode)") (terpri)
          (princ (make-string (length (concat name " (major-mode)")) #x2D)) (terpri) ; '-'
          (with-current-buffer "*Help*"
            (insert (substitute-command-keys (concat "\\{" name "}"))))
          
          (dolist (minor-mode-keymap minor-modes)
            (setq name (symbol-name minor-mode-keymap))
            (princ name) (princ " (minor-mode)") (terpri)
            (princ (make-string (length (concat name " (minor-mode)")) #x2D)) (terpri) ; '-'
            (with-current-buffer "*Help*"
              (insert (substitute-command-keys (concat "\\{" name "}")))))
          
          (setq name (symbol-name global-mode))
          (princ name) (princ " (global-mode)") (terpri)
          (princ (make-string (length (concat name " (global-mode)")) #x2D)) (terpri) ; '-'
          (with-current-buffer "*Help*"
            (insert (substitute-command-keys (concat "\\{" name "}")))))))))

;; Describes all keybindings defined in the current file in the format:
;; `````````````````````
;; File: file.el[c]
;; 
;; keymap
;; ------
;; key             binding
;; ---             -------
;; 
;; keymap
;; ------
;; key             binding
;; ---             -------
;;
;; `````````````````````
(defun jd:describe-keymaps-in-file ()
  (interactive)
  (let ((file-name
         (if (equal (file-name-extension (buffer-file-name)) "gz")
             (concat (file-name-sans-extension (buffer-file-name)) "c")
           (buffer-file-name)))
        (keymap-symbols nil))
    
    (load-file file-name)
    (mapatoms
     (lambda (symbol)
       (when (and (boundp symbol)
                  (keymapp (symbol-value symbol))
                  (string= (symbol-file symbol) file-name))
         (push symbol keymap-symbols))))

    (with-output-to-temp-buffer "*Help*"
      (princ (format "File: %s" file-name)) (terpri) (terpri)
      (let ((name nil))
        (dolist (keymap keymap-symbols)
          (setq name (symbol-name keymap))
          (princ name) (terpri)
          (princ (make-string (length name) #x2D)) (terpri) ; '-'
          (with-current-buffer "*Help*"
            (insert (substitute-command-keys (concat "\\{" name "}")))))))))

(provide 'jd:describe)
