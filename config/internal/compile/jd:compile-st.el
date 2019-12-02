(setq-default compilation-environment '("TERM=xterm-256color"))
(setq-default compilation-scroll-output 'first-error)

;; Redefinition.
(defun compilation-next-error-function (n &optional reset)
  (interactive "p")
  (when reset
    (setq compilation-current-error nil))
  (let* ((screen-columns compilation-error-screen-columns)
	 (first-column compilation-first-column)
	 (last 1)
	 (msg (compilation-next-error (or n 1) nil
				      (or compilation-current-error
					  compilation-messages-start
					  (point-min))))
	 (loc (compilation--message->loc msg))
	 (end-loc (compilation--message->end-loc msg))
	 (marker (point-marker)))
    (setq compilation-current-error (point-marker)
	  overlay-arrow-position
	  (if (bolp)
	      compilation-current-error
	    (copy-marker (line-beginning-position))))
    (let ((jd:compilation-window
           (get-buffer-window (marker-buffer marker)))
          (jd:compilation-error-window
           (if (equal (get-file-buffer (caar (compilation--loc->file-struct loc))) nil)
               nil
             (get-buffer-window (get-file-buffer (caar (compilation--loc->file-struct loc)))))))
      (if (not (equal jd:compilation-window nil))
          (progn
            (select-window jd:compilation-window)
            (goto-char (marker-position marker))
            (recenter)))
      (if (not (equal jd:compilation-error-window nil))
          (select-window jd:compilation-error-window)
        (find-file (caar (compilation--loc->file-struct loc))))
      (unless (and (compilation--loc->marker loc)
                   (marker-buffer (compilation--loc->marker loc)))
      (if (bufferp (caar (compilation--loc->file-struct loc)))
          (caar (compilation--loc->file-struct loc))
        (apply #'compilation-find-file
               marker
               (caar (compilation--loc->file-struct loc))
               (cadr (car (compilation--loc->file-struct loc)))
               (compilation--file-struct->formats
                (compilation--loc->file-struct loc))))
      (let ((screen-columns
             (if (local-variable-p 'compilation-error-screen-columns)
                 compilation-error-screen-columns screen-columns))
            (compilation-first-column
             (if (local-variable-p 'compilation-first-column)
                 compilation-first-column first-column)))
        (save-restriction
          (widen)
          (goto-char (point-min))
          (dolist (line (reverse (cddr (compilation--loc->file-struct loc))))
            (when (car line)
              (compilation-beginning-of-line (- (car line) last -1))
              (setq last (car line)))
            (dolist (col (cdr line))
              (if (compilation--loc->col col)
                  (if (eq (compilation--loc->col col) -1)
                      (end-of-line)
                    (compilation-move-to-column (compilation--loc->col col)
                                                screen-columns))
                (beginning-of-line)
                (skip-chars-forward " \t"))
              (if (compilation--loc->marker col)
                  (set-marker (compilation--loc->marker col) (point))
                (setf (compilation--loc->marker col) (point-marker)))))))))
    (compilation-goto-locus marker (compilation--loc->marker loc)
                            (compilation--loc->marker end-loc))
    (recenter)
    (setf (compilation--loc->visited loc) t)))

(defun jd:advice-compilation-filter (f proc string)
  (funcall f proc (xterm-color-filter string)))

(defun jd:compile (command &optional comint)
  (interactive
   (list
    (let ((command (eval compile-command)))
      (if (or compilation-read-command current-prefix-arg)
	  (compilation-read-command command)
	command))
    (consp current-prefix-arg)))
  (unless (equal command (eval compile-command))
    (setq compile-command command))
  (save-some-buffers (not compilation-ask-about-save)
                     compilation-save-buffers-predicate)
  (setq-default compilation-directory default-directory)
  (let ((jd:compilation-window (get-buffer-window "*compilation*")))
    (if (equal jd:compilation-window nil)
        (compilation-start command comint)
      (save-window-excursion
        (select-window jd:compilation-window)
        (compilation-start command comint)))))

(advice-add 'compilation-filter :around 'jd:advice-compilation-filter)

(provide 'jd:compile-st)
