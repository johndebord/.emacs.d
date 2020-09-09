(defun jd:scroll-down ()
  "Move the cusor to the middle of the window before scrolling down."
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

(defun jd:scroll-up ()
  "Move the cusor to the middle of the window before scrolling up."
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

(defun jd:scroll-down-line()
  "Scroll down one line and move the window down one line; keeping the cursor
centered."
  (interactive "^")
  (scroll-down-line -1)
  (line-move 1))

(defun jd:scroll-up-line ()
  "Scroll up one line and move the window up one line; keeping the cursor
centered."
  (interactive "^")
  (scroll-down-line 1)
  (line-move -1))

(defun jd:scroll-left ()
  "Scroll to the left."
  (interactive)
  (scroll-left  1))

(defun jd:scroll-right ()
  "Scroll to the right."
  (interactive)
  (scroll-right 1))

(defun jd:next-error ()
  "Move to the next error."
  (interactive)
  (select-window (get-buffer-window))
  (next-error))

(defun jd:previous-error ()
  "Move to the previous error."
  (interactive)
  (select-window (get-buffer-window))
  (previous-error))

(defun jd:point-to-register-n (register)
  "Helper function to handle pointing to registers."
  (point-to-register register)
  (recenter 0))

(defun jd:jump-to-register-n (register)
  "Helper function to handle jumping to registers."
  (jump-to-register register)
  (recenter 0))

(defun jd:point-to-register-1 () (interactive) (jd:point-to-register-n 1))
(defun jd:point-to-register-2 () (interactive) (jd:point-to-register-n 2))
(defun jd:point-to-register-3 () (interactive) (jd:point-to-register-n 3))
(defun jd:point-to-register-4 () (interactive) (jd:point-to-register-n 4))
(defun jd:point-to-register-5 () (interactive) (jd:point-to-register-n 5))
(defun jd:point-to-register-6 () (interactive) (jd:point-to-register-n 6))
(defun jd:point-to-register-7 () (interactive) (jd:point-to-register-n 7))
(defun jd:point-to-register-8 () (interactive) (jd:point-to-register-n 8))
(defun jd:point-to-register-9 () (interactive) (jd:point-to-register-n 9))
(defun jd:jump-to-register-1 () (interactive) (jd:jump-to-register-n 1))
(defun jd:jump-to-register-2 () (interactive) (jd:jump-to-register-n 2))
(defun jd:jump-to-register-3 () (interactive) (jd:jump-to-register-n 3))
(defun jd:jump-to-register-4 () (interactive) (jd:jump-to-register-n 4))
(defun jd:jump-to-register-5 () (interactive) (jd:jump-to-register-n 5))
(defun jd:jump-to-register-6 () (interactive) (jd:jump-to-register-n 6))
(defun jd:jump-to-register-7 () (interactive) (jd:jump-to-register-n 7))
(defun jd:jump-to-register-8 () (interactive) (jd:jump-to-register-n 8))
(defun jd:jump-to-register-9 () (interactive) (jd:jump-to-register-n 9))

;; Note the weird pairing convention because the registers are ordinal.
(defun jd:reset-registers ()
  (interactive)
  (setq register-alist
        (append '( (1) (2) (3) (4) (5) (6) (7) (8) (9)
                   (11)(12)(13)(14)(15)(16)(17)(18)(19)) register-alist)))

(jd:provide-feature jd:cursor-movement)
