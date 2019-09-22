(defun jd:construct-mode-folder ()
  "Automates the construction of a mode directory for customization.
[ ] TODO: Add feature to insert templates for rebinding all keymaps and
their respective keybinds by parsing through their respective files.
As a reminder:
v   = variable
pt  = package type
pn  = package name
pfp = package folder path
ps  = package string
pkb = package keybindings
pst = package settings"
  (interactive)
  (let ((jd:pt nil)
	(jd:pn nil))
    (setq jd:pt (read-from-minibuffer "Please enter the mode-type: "))
    (if (not (or (equal jd:pt "external")
                 (equal jd:pt "internal")))
	(error "Please enter a valied mode-type"))
    (setq jd:pn (read-from-minibuffer "Please enter the mode-name: "))
    (if (y-or-n-p (format "Is \"%s\" and \"%s\" correct?" jd:pt jd:pn))
	(progn
	  (let* ((jd:v-str
                  (if (equal jd:pt "external") "jd:external-prefix" "jd:internal-prefix"))
                 (jd:pfp
                  (if (equal jd:pt "external") jd:external-prefix jd:internal-prefix))
		 (jd:ps
                  (concat "jd:" jd:pn ".el"))
		 (jd:pkb-str
                  (concat "jd:" jd:pn "-kb.el"))
		 (jd:pst-str
                  (concat "jd:" jd:pn "-st.el"))
                 (jd:x.el-str
                  (concat ";; (require ' (concat jd:lisp-prefix \".elc\"))\n\n"
                          "(require '" jd:pkb-str " (concat jd:path-prefix " jd:v-str " \"" jd:pn "/" jd:pkb-str"\"))\n"
                          "(require '" jd:pst-str " (concat jd:path-prefix " jd:v-str " \"" jd:pn "/" jd:pst-str"\"))\n\n"
                          "(provide '" jd:ps ")\n"))
                 (jd:x-kb.el-str
                  (concat ";; (defun jd:-map ()\n"
	                  ";;   (setf (cdr -map) nil)\n"
	                  ";;   (define-key -map (kbd "") '))\n"
	                  ";; (add-hook '-mode-hook 'jd:-map)\n\n"
	                  "(provide '" jd:pkb-str ")\n"))
                 (jd:x-st.el-str
                  (concat "(provide '" jd:pst-str ")\n")))
	    (shell-command (concat "mkdir " jd:path-prefix jd:pfp "/" jd:pn))
	    (shell-command (concat "touch " jd:path-prefix jd:pfp "/" jd:pn "/" jd:ps))
	    (shell-command (concat "touch " jd:path-prefix jd:pfp "/" jd:pn "/" jd:pkb-str))
	    (shell-command (concat "touch " jd:path-prefix jd:pfp "/" jd:pn "/" jd:pst-str))
            (with-temp-file (concat jd:path-prefix jd:pfp "/" jd:pn "/" jd:ps)
	      (insert jd:x.el-str))
            (with-temp-file (concat jd:path-prefix jd:pfp "/" jd:pn "/" jd:pkb-str)
	      (insert jd:x-kb.el-str))
            (with-temp-file (concat jd:path-prefix jd:pfp "/" jd:pn "/" jd:pst-str)
	      (insert jd:x-st.el-str))
	    (let ((jd:match nil)
		  (jd:matches nil)
		  (jd:match-pos nil)
		  (jd:new-buffer-string nil))
	      (with-temp-buffer
		(insert-file-contents (concat jd:path-prefix jd:pfp "jd:" jd:pt "-config.el"))
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
		 (concat "(require '" jd:ps " (concat jd:path-prefix " jd:v-str " \"" jd:pn "/" jd:ps "\"))"))
		(setq jd:new-buffer-string (buffer-string)))
	      (with-temp-file (concat jd:path-prefix jd:pfp "/" "jd:" jd:pt "-config.el")
		(insert jd:new-buffer-string)))))
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

(defun jd:describe-elpa-file-keymaps ()
  "Describes the keymaps in the given elpa file.
[ ] TODO:  Combine the two functions.
[ ] TODO:  Produce more readable/robust output.
[ ] TODO:  Revisit when a deeper understanding of Emacs Lisp is gained.
[ ] TODO:  Auto-completion for both stock and/or elpa files.
[ ] FIXME: Swapping buffers is buggy after buffer generation."
  (interactive)
  (let ((jd:file-name nil))
    (setq jd:file-name (concat jd:elpa-prefix (read-from-minibuffer "Please enter the file-name: ")))
    (let ((jd:keymap-symbols nil))
      (mapatoms
       (lambda (jd:symbol)
         (when (and (boundp jd:symbol)
                    (keymapp (symbol-value jd:symbol))
                    (string= (symbol-file jd:symbol) jd:file-name))
           (push jd:symbol jd:keymap-symbols))))
      (with-output-to-temp-buffer "*Keymap*"
        (princ (format "File: %s\n\n" jd:file-name))
        (seq-do (lambda (jd:keymap)
                  (princ (format "%s\n\n" jd:keymap))
                  (princ (substitute-command-keys (format "\\{%s}" jd:keymap))))
                jd:keymap-symbols)))))

(defun jd:describe-stock-file-keymaps ()
  "Describes the keymaps in the given elpa file.
[ ] TODO:  Combine the two functions.
[ ] TODO:  Produce more readable/robust output.
[ ] TODO:  Revisit when a deeper understanding of Emacs Lisp is gained.
[ ] TODO:  Auto-completion for both stock and/or elpa files.
[ ] FIXME: Swapping buffers is buggy after buffer generation."
  (interactive)
  (let ((jd:file-name nil))
    (setq jd:file-name (concat jd:lisp-prefix (read-from-minibuffer "Please enter the file-name: ")))
    (let ((jd:keymap-symbols nil))
      (mapatoms
       (lambda (jd:symbol)
         (when (and (boundp jd:symbol)
                    (keymapp (symbol-value jd:symbol))
                    (string= (symbol-file jd:symbol) jd:file-name))
           (push jd:symbol jd:keymap-symbols))))
      (with-output-to-temp-buffer "*Keymap*"
        (princ (format "File: %s\n\n" jd:file-name))
        (seq-do (lambda (jd:keymap)
                  (princ (format "%s\n\n" jd:keymap))
                  (princ (substitute-command-keys (format "\\{%s}" jd:keymap))))
                jd:keymap-symbols)))))

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

(defun jd:scroll-down ()
  (interactive "^")
  (recenter)
  (scroll-up-command)
  (move-to-window-line nil))

(defun jd:scroll-up ()
  (interactive "^")
  (recenter)
  (scroll-down-command)
  (move-to-window-line nil))

(defun jd:self-insert-space ()
  (interactive)
  (insert ?\s))

(defun jd:swap-buffers ()
  (interactive)
  (switch-to-buffer nil))

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
  (save-excursion
    (forward-line)
    (transpose-lines 1))
  (forward-line))

(defun jd:transpose-line-up ()
  (interactive)
  (save-excursion
    (forward-line)
    (transpose-lines -1))
  (forward-line -1))

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
  (other-window  1))

(provide 'jd:global-definitions.el)
