(defun jd:tings-truncate-xref-references ()
  "I made this specifically for organizing the output of
`xref-find-references'; narrowing it down to just the file names where
the references are found."
  (interactive)
  (next-line)
  (set-mark (point))
  (let ((b 0))
    (while (equal b 0)
      (next-line)
      (if (or (equal (string (char-after (point))) "/")
	      ;;; FIXME
	      (equal (point) (point-max)))
	  (progn
	    (delete-active-region)
	    (setq b 1))))))

;;; REFACTORME
(defun jd:tings-construct-new-mode-folder ()
  "Automates the construction of a mode directory for customization.
[ ] Add feature to insert templates for rebinding all keymaps and
their respective keybinds."
  (interactive)
  (let ((jd:mode-type nil)
	(jd:mode-name nil))
    (setq jd:mode-type (read-from-minibuffer "Please enter a `jd:mode-type': "))
    (if (not (or (equal jd:mode-type "major-modes")
		 (equal jd:mode-type "minor-modes")
		 (equal jd:mode-type "third-party-packages")))
	(error "Please enter a valied `jd:mode-type'"))
    (setq jd:mode-name (read-from-minibuffer "Please enter the `jd:mode-name': "))
    (if (y-or-n-p (format "Is the `jd:mode-name' \`%s\' correct?" jd:mode-name))
	(progn
	  (let ((mode-folder-path (concat jd:path-prefix "emacs-modes/" jd:mode-type "/" jd:mode-name))
		(mode-string (concat "jd:" jd:mode-name ".el"))
		(mode-keybindings-string (concat "jd:" jd:mode-name "-keybindings.el"))
		(mode-settings-string (concat "jd:" jd:mode-name "-settings.el")))
	    (shell-command (concat "mkdir " mode-folder-path))
	    (shell-command (concat "touch " (concat mode-folder-path "/" mode-string)))
	    (shell-command (concat "touch " (concat mode-folder-path "/" mode-keybindings-string)))
	    (shell-command (concat "touch " (concat mode-folder-path "/" mode-settings-string)))
	    (shell-command (concat "echo "
				   "\"(require '" mode-keybindings-string "\n"
				   "         (concat jd:path-prefix \\\"emacs-modes/" jd:mode-type "/" jd:mode-name "/" mode-keybindings-string "\\\"))\n"
				   "(require '" mode-settings-string "\n"
				   "         (concat jd:path-prefix \\\"emacs-modes/" jd:mode-type "/" jd:mode-name "/" mode-settings-string "\\\"))\n\n"
				   "(provide '" mode-string ")\""
				   "> " mode-folder-path "/" mode-string))
	    (shell-command (concat "echo "
				   "\";;; \\\`-map\' --- \\\`.el\'\n"
				   ";;(defun jd:-map ()\n"
				   ";;  (setf (cdr -map) nil)\n"
				   ";;  (define-key -map (kbd "") '))\n"
				   ";;(add-hook '-mode-hook 'jd:-map)\n\n"
				   "(provide '" mode-keybindings-string ")\""
				   "> " mode-folder-path "/" mode-keybindings-string))
	    (shell-command (concat "echo "
				   "\";;; \\\`.el\'\n\n"
				   "(provide '" mode-settings-string ")\""
				   "> " mode-folder-path "/" mode-settings-string))
	    (let ((match nil)
		  (matches nil)
		  (match-pos nil)
		  (new-buffer-string nil))
	      (with-temp-buffer
		(insert-file-contents (concat jd:path-prefix "emacs-modes/" jd:mode-type "/" "jd:" jd:mode-type ".el"))
		(goto-char 1)
		(while (search-forward-regexp "jd:.*mode.el$" nil t 1)
		  (setq match (match-string-no-properties 0))
		  (setq match-pos (string-match (match-string-no-properties 0) (buffer-string)))
		  (push (cons match match-pos) matches))
		(while (string< mode-string (car (car matches))) ;; edge case, test if it's less than everything
		  (pop matches))
		(if (eq matches nil)
		    (goto-char 1)
		  (progn
		    (goto-char (cdr (car matches)))
		    (next-line)
		    (end-of-line)))
		(newline)
		(insert (concat "(require '" mode-string "\n"
				"         (concat jd:path-prefix \"emacs-modes/" jd:mode-type "/" jd:mode-name "/" mode-string "\"))"))
		(setq new-buffer-string (buffer-string)))
	      (with-temp-file (concat jd:path-prefix "emacs-modes/" jd:mode-type "/" "jd:" jd:mode-type ".el")
		(insert new-buffer-string)))))
      (error "You weren't confident with the `jd:mode-name' you gave"))))

;; You can make a tags table include another tags table, by passing
;; the ‘--include=file’ option to etags. It then covers all the files
;; covered by the included tags file, as well as its own.
(defun jd:generate-tags ()
  (interactive)
  (let ((path nil))
    (setq path (read-from-minibuffer "Please enter the root directory: "))
    (if (not (file-directory-p path))
	(error)
      (shell-command (concat "cd " path " && find . -type f -regex \".*\\.\\(c\\|h\\|cpp\\|hpp\\|cpp.in\\|hpp.in\\)\" | etags -")))))

(provide 'jd:tings.el)
