;; Automates the construction of a top-level customization directory.
;; 
;;
;; A directory shall have this structure:
;; `````````````````````
;; ~/.emacs.d/config/internal/cc-mode $ tree
;; .
;; ├── jd:cc-mode.el
;; ├── jd:cc-mode-kb.el
;; └── jd:cc-mode-st.el
;; 
;; 0 directories, 3 files
;; `````````````````````
;;
;; The `*.el` file should have this structure:
;; ``````````````````````
;; (jd:load-feature cc-mode jd:site-lisp-prefix "progmodes/")
;; (jd:load-feature jd:cc-mode-kb jd:internal-prefix "cc-mode/")
;; (jd:load-feature jd:cc-mode-st jd:internal-prefix "cc-mode/")
;; 
;; (jd:provide-feature 'jd:cc-mode)
;; `````````````````````
;;
;; The `*-kb.el` file should have this structure:
;; `````````````````````
;; (setq-default c++-mode-map (make-sparse-keymap))
;; (define-key ...)
;; 
;; (provide 'jd:cc-mode-kb)
;; 
;; ;; File: /usr/local/share/emacs/26.3.50/lisp/progmodes/cc-mode.elc
;; ;; 
;; `````````````````````
;;
;; The `*-st.el` file should have this structure:
;; `````````````````````
;; ;; Faces.
;; (defvar ...)

;; ;; Customization variables.
;; (defvar ...)
;;
;; (defun jd:c++-mode-hook ()
;;   ...)
;; 
;; (add-hook ...)
;; 
;; (provide 'jd:cc-mode-st)
;; `````````````````````
(defun jd:construct-folder ()
  (interactive)
  (let ((customization-folder-type nil)
	(customization-name nil))
    (setq customization-folder-type (read-from-minibuffer "Please enter the folder type: "))
    (if (not (or (equal customization-folder-type "external")
                 (equal customization-folder-type "internal")))
	(error "Please enter a valid folder type"))
    (setq customization-name (read-from-minibuffer "Please enter the folder name: "))
    (if (y-or-n-p (format "Is \"%s\" and \"%s\" correct?" customization-folder-type customization-name))
	(progn
	  (let* ((customization-path-prefix-str
                  (if (equal customization-folder-type "internal") "jd:internal-prefix" "jd:external-prefix"))
                 (source-path-prefix-str
                  (if (equal customization-folder-type "internal") "jd:site-lisp-prefix" "jd:elpa-prefix"))
                 (customization-folder-path
                  (if (equal customization-folder-type "internal") jd:internal-prefix jd:external-prefix))
                 (root-name
                  (concat "jd:" customization-name))
                 (keybindings-name
                  (concat "jd:" customization-name "-kb"))
		 (settings-name
                  (concat "jd:" customization-name "-st"))
		 (root-file
                  (concat "jd:" customization-name ".el"))
		 (keybindings-file
                  (concat "jd:" customization-name "-kb.el"))
		 (settings-file
                  (concat "jd:" customization-name "-st.el"))
                 (root-file-str
                  (concat ";; (jd:load-feature " customization-name " " source-path-prefix-str        " \"\")\n"
                          "(jd:load-feature "    keybindings-name   " " customization-path-prefix-str " \"" customization-name "/\")\n"
                          "(jd:load-feature "    settings-name      " " customization-path-prefix-str " \"" customization-name "/\")\n\n"
                          "(jd:provide-feature " root-name ")\n"))
                 (keybindings-file-str
                  (concat "(jd:provide-feature " keybindings-name ")\n"))
                 (settings-file-str
                  (concat "(jd:provide-feature " settings-name ")\n")))
            
	    (shell-command (concat "mkdir " customization-folder-path "/" customization-name))
	    (shell-command (concat "touch " customization-folder-path "/" customization-name "/" root-file))
	    (shell-command (concat "touch " customization-folder-path "/" customization-name "/" keybindings-file))
	    (shell-command (concat "touch " customization-folder-path "/" customization-name "/" settings-file))
            
            (with-temp-file (concat customization-folder-path "/" customization-name "/" root-file)
	      (insert root-file-str))
            (with-temp-file (concat customization-folder-path "/" customization-name "/" keybindings-file)
	      (insert keybindings-file-str))
            (with-temp-file (concat customization-folder-path "/" customization-name "/" settings-file)
	      (insert settings-file-str))
            
	    (let ((root-name-expression (concat "jd:load-feature " root-name " " customization-path-prefix-str " "))
                  (match nil)
		  (matches nil)
		  (match-pos nil)
		  (new-buffer-string nil)))))
      (error "Please give valid arguments"))))

(jd:provide-feature jd:construct-folder)
