;; Custom `mode-line-format` configuration.
;; Will have to set `mode-line-format` like so:
;; ```
;; (setq-default mode-line-format (list
;;                                 " "
;;                                 '(:eval (jd:handle-buffer-name))
;;                                 '(:eval (jd:handle-buffer-file))
;;                                 '(:eval (jd:handle-position-info))
;;                                 '(:eval (jd:handle-buffer-size))
;;                                 '(:eval (jd:handle-version-control))
;;                                 '(:eval (jd:handle-modes))))
;; ```
(defun jd:handle-buffer-name ()
  (propertize "%b "
              'face 'bold))

(defun jd:handle-buffer-file ()
  (if buffer-file-name
      (cond
       ((not (file-writable-p buffer-file-name))
        (propertize "%f "
                    'face '(:foreground "#5c5c5c" :weight bold)))
       
       ((buffer-modified-p)
        (propertize "%f "
                    'face '(:foreground "#ff7400" :weight bold)))
       (t
        (propertize "%f "
                    'face '(:weight bold))))))

(defun jd:handle-position-info ()
  "(%l,%c) ")

(defun jd:handle-buffer-size ()
  (concat (number-to-string
           (/ (buffer-size) 1000000.0)) "MB "))

(defun jd:handle-version-control ()
  (if (vc-registered (buffer-file-name))
      (concat
       (symbol-name (vc-responsible-backend (buffer-file-name)))
       ":"
       (substring
        (vc-working-revision (buffer-file-name) (vc-responsible-backend (buffer-file-name)))
        0 6)
       " ")))

(defun jd:handle-modes ()
  (concat
   "("
   (upcase mode-name)
   (if mode-line-process
       (concat
        " "
        (upcase mode-line-process)
        " "))
   ")"))

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
  (line-move 1))

;; Scroll up one line and move the window up one line; keeping the cursor
;; centered.
(defun jd:scroll-up-line ()
  (interactive "^")
  (scroll-down-line 1)
  (line-move -1))

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

(defun jd:point-to-register-n (register)
  (point-to-register register)
  (recenter 0))

(defun jd:point-to-register-1 ()
  (interactive)
  (jd:point-to-register-n 1))

(defun jd:point-to-register-2 ()
  (interactive)
  (jd:point-to-register-n 2))

(defun jd:point-to-register-3 ()
  (interactive)
  (jd:point-to-register-n 3))

(defun jd:point-to-register-4 ()
  (interactive)
  (jd:point-to-register-n 4))

(defun jd:point-to-register-5 ()
  (interactive)
  (jd:point-to-register-n 5))

(defun jd:point-to-register-6 ()
  (interactive)
  (jd:point-to-register-n 6))

(defun jd:point-to-register-7 ()
  (interactive)
  (jd:point-to-register-n 7))

(defun jd:point-to-register-8 ()
  (interactive)
  (jd:point-to-register-n 8))

(defun jd:point-to-register-9 ()
  (interactive)
  (jd:point-to-register-n 9))

(defun jd:jump-to-register-n (register)
  (jump-to-register register)
  (recenter 0))

(defun jd:jump-to-register-1 ()
  (interactive)
  (jd:jump-to-register-n 1))

(defun jd:jump-to-register-2 ()
  (interactive)
  (jd:jump-to-register-n 2))

(defun jd:jump-to-register-3 ()
  (interactive)
  (jd:jump-to-register-n 3))

(defun jd:jump-to-register-4 ()
  (interactive)
  (jd:jump-to-register-n 4))

(defun jd:jump-to-register-5 ()
  (interactive)
  (jd:jump-to-register-n 5))

(defun jd:jump-to-register-6 ()
  (interactive)
  (jd:jump-to-register-n 6))

(defun jd:jump-to-register-7 ()
  (interactive)
  (jd:jump-to-register-n 7))

(defun jd:jump-to-register-8 ()
  (interactive)
  (jd:jump-to-register-n 8))

(defun jd:jump-to-register-9 ()
  (interactive)
  (jd:jump-to-register-n 9))

;; Note the weird pairing convention because the registers are ordinal.
(defun jd:reset-registers ()
  (interactive)
  (setq register-alist
        (append '( (1) (2) (3) (4) (5) (6) (7) (8) (9)
                  (11)(12)(13)(14)(15)(16)(17)(18)(19)) register-alist)))

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
  (if (not (region-active-p))
      (error "Region is not active.")
    (let ((beg (mark))
          (end (point)))
      (copy-region-as-kill beg end)
      (comment-region beg end))))

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
  (let ((start (point))
        (end (save-excursion
               (backward-word)
               (point))))
    (delete-region start end)))

(defun jd:kill-buffer ()
  (interactive)
  (kill-buffer)
  (exit-minibuffer))

(defvar jd:macro-count-for-session 1)
(defun jd:save-and-bind-last-macro ()
  (interactive)
  (cl-assert (and (>= jd:macro-count-for-session 1)
                  (<= jd:macro-count-for-session 9)))
  (let* ((macro-count-str (number-to-string jd:macro-count-for-session))
         (macro-count-sym (make-symbol macro-count-str)))
    (kmacro-name-last-macro macro-count-sym)
    (define-key global-map (kbd (concat "<M-" macro-count-str ">")) macro-count-sym)
    (message (format "Macro number %s assigned to keybind <M-%s>"
                     macro-count-str
                     macro-count-str)))
  (setq jd:macro-count-for-session (1+ jd:macro-count-for-session)))

(defun jd:incredibly-smart-tab-eshell ()
  (interactive)
  (jd:incredibly-smart-tab 'eshell))

(defun jd:incredibly-smart-tab-progmode ()
  (interactive)
  (jd:incredibly-smart-tab 'progmode))

(provide 'jd:global-definitions)
