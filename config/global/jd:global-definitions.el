;; Move the cusor to the middle of the window before scrolling down.
(defun jd:scroll-down ()
  (interactive "^")
  (let ((proper-center-point
         (save-excursion
           (move-to-window-line nil)
           (point))))
    (if (not (eobp))
        (if (not (equal proper-center-point (point)))
            (progn
              (move-to-window-line nil))
          (progn
            (cua-scroll-up)
            (if (not (eobp))
                (move-to-window-line nil)))))))

;; Move the cusor to the middle of the window before scrolling up.
(defun jd:scroll-up ()
  (interactive "^")
  (let ((proper-center-point
         (save-excursion
           (move-to-window-line nil)
           (point))))
    (if (not (bobp))
        (if (not (equal proper-center-point (point)))
            (progn
              (move-to-window-line nil))
          (progn
            (cua-scroll-down)
            (if (not (bobp))
                (move-to-window-line nil)))))))

;; Scroll down one line and move the window down one line; keeping the cursor
;; centered.
(defun jd:scroll-down-line()
  (interactive "^")
  (scroll-down-line -1)
  (next-line 1))

;; Scroll up one line and move the window up one line; keeping the cursor
;; centered.
(defun jd:scroll-up-line ()
  (interactive "^")
  (scroll-down-line 1)
  (next-line -1))

;; Scroll up one line whilst keeping the cursor on the far left of the buffer.
(defun jd:backward-line ()
  (interactive)
  (beginning-of-line)
  (forward-line -1)
  (recenter))

;; Scroll down one line whilst keeping the cursor on the far left of the buffer.
(defun jd:forward-line ()
  (interactive)
  (beginning-of-line)
  (forward-line)
  (recenter))

;; Scroll to the left.
(defun jd:scroll-left ()
  (interactive)
  (scroll-left  1))

;; Scroll to the right.
(defun jd:scroll-right ()
  (interactive)
  (scroll-right 1))

;; Move to the next error.
(defun jd:next-error ()
  (interactive)
  (select-window (get-buffer-window))
  (next-error))

;; Move to the previous error.
(defun jd:previous-error ()
  (interactive)
  (select-window (get-buffer-window))
  (previous-error))

;; Utility function to quickly copy a line and move to the beginning of the
;; line.
(defun jd:copy-line-and-goto-beg ()
  (interactive)
  (back-to-indentation)
  (copy-region-as-kill (point) (point-at-eol))
  (back-to-indentation)
  (message "Line copied"))

;; Utility function to quickly copy a line and move to the end of the line.
(defun jd:copy-line-and-goto-end ()
  (interactive)
  (back-to-indentation)
  (copy-region-as-kill (point) (point-at-eol))
  (end-of-line)
  (message "Line copied"))

;; Move the cursor to the right during transposition.
(defun jd:transpose-char-left ()
  (interactive)
  (save-excursion
    (forward-char)
    (transpose-chars -1))
  (backward-char))

;; Move the cursor to the left during transposition.
(defun jd:transpose-char-right ()
  (interactive)
  (save-excursion
    (forward-char)
    (transpose-chars 1))
  (forward-char))

;; Transpose line down in an intuitive way.
(defun jd:transpose-line-down ()
  (interactive)
  (let ((current-column (current-column)))
    (forward-line 1)
    (transpose-lines 1)
    (forward-line -1)
    (move-to-column current-column)))

;; Transpose line up in an intuitive way.
(defun jd:transpose-line-up ()
  (interactive)
  (if (not (equal (line-number-at-pos) 1))
      (let ((current-column (current-column)))
        (progn
          (forward-line 1)
          (transpose-lines -1)
          (forward-line -1)
          (move-to-column current-column)))))

(defun jd:point-to-register-1 ()
  (interactive)
  (point-to-register 1))

(defun jd:point-to-register-2 ()
  (interactive)
  (point-to-register 2))

(defun jd:point-to-register-3 ()
  (interactive)
  (point-to-register 3))

(defun jd:point-to-register-4 ()
  (interactive)
  (point-to-register 4))

(defun jd:point-to-register-5 ()
  (interactive)
  (point-to-register 5))

(defun jd:point-to-register-6 ()
  (interactive)
  (point-to-register 6))

(defun jd:point-to-register-7 ()
  (interactive)
  (point-to-register 7))

(defun jd:point-to-register-8 ()
  (interactive)
  (point-to-register 8))

(defun jd:point-to-register-9 ()
  (interactive)
  (point-to-register 9))

(defun jd:jump-to-register-1 ()
  (interactive)
  (jump-to-register 1))

(defun jd:jump-to-register-2 ()
  (interactive)
  (jump-to-register 2))

(defun jd:jump-to-register-3 ()
  (interactive)
  (jump-to-register 3))

(defun jd:jump-to-register-4 ()
  (interactive)
  (jump-to-register 4))

(defun jd:jump-to-register-5 ()
  (interactive)
  (jump-to-register 5))

(defun jd:jump-to-register-6 ()
  (interactive)
  (jump-to-register 6))

(defun jd:jump-to-register-7 ()
  (interactive)
  (jump-to-register 7))

(defun jd:jump-to-register-8 ()
  (interactive)
  (jump-to-register 8))

(defun jd:jump-to-register-9 ()
  (interactive)
  (jump-to-register 9))

(defun jd:reset-registers ()
  (interactive)
  (setq register-alist (append '((1)(2)(3)(4)(5)(6)(7)(8)(9)) register-alist)))

;; Swap the two buffers in two given windows.
(defun jd:swap-windows (event)
  (interactive "e")
  (let ((buffer0 (window-buffer (car (elt event 1))))
        (buffer1 (window-buffer (get-buffer-window))))
    (set-window-buffer (get-buffer-window) buffer0)
    (set-window-buffer (car (elt event 1)) buffer1)))

;; Quickly swap between the last two previously seen buffers.
(defun jd:select-window-and-macro-swap-buffers ()
  (interactive)
  (select-window (get-buffer-window))
  (jd:macro-swap-buffers)
  (select-window (get-buffer-window)))

(defun jd:window-backward ()
  (interactive)
  (other-window -1))

(defun jd:window-forward ()
  (interactive)
  (other-window 1))

;; Indents the entire function the cursor is currently in.
(defun jd:indent-region ()  
  (interactive)
  (save-excursion
    (progn
      (let ((beg
             (save-excursion
               (end-of-defun)
               (beginning-of-defun-raw)
               (point)))
            (end
             (save-excursion
               (end-of-defun)
               (point))))
        (indent-region beg end)
        (pulse-momentary-highlight-region beg end 'highlight)))))

;; Copy the given region as it is and comment it out at the same time.
(defun jd:copy-and-comment-out ()
  (interactive)
  (cl-assert (region-active-p)
             nil
             "Region is not active.")
  (let ((beg (mark))
        (end (point)))
    (copy-region-as-kill beg end)
    (comment-region beg end)))

(defun jd:remove-text-properties ()
  (interactive)
  (remove-text-properties (mark) (point) '(face nil)))

(defun jd:self-insert-space ()
  (interactive)
  (insert #x20) ; spacebar.
  (jd:company-select-nil)
  (jd:recently-finished-completion-nil))

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

(provide 'jd:global-definitions)
