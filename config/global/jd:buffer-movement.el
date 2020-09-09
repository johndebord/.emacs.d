;; Swaps the most recent buffer with the current buffer.
;; `counsel-switch-buffer'
;; `ivy-next-line'
;; `ivy-alt-done'
(fset 'jd:macro-swap-buffers
      (lambda (&optional arg)
        "Keyboard macro."
        (interactive "p")
        (kmacro-exec-ring-item (quote ("\206\353\354" 0 "%d")) arg)))

(defun jd:perform-window-selection (f)
  "Wrapper to ensure window selection is performed for buffer swapping ordering
consistency. I should note that any other functionality that opens another
buffer without selecting it may also have to have wrappers around their
navigating functions (navigating xrefs comes to mind; but that one may be
ok)."
  (select-window (get-buffer-window))
  (funcall f))

(defun jd:counsel-switch-buffer ()
  (interactive)
  (jd:perform-window-selection 'counsel-switch-buffer))

(defun jd:push-button ()
  (interactive)
  (jd:perform-window-selection 'push-button))

(defun jd:swap-windows (event)
  "Swap the two buffers in two given windows."
  (interactive "e")
  (let ((buffer0 (window-buffer (car (elt event 1))))
        (buffer1 (window-buffer (get-buffer-window))))
    (set-window-buffer (get-buffer-window) buffer0)
    (set-window-buffer (car (elt event 1)) buffer1)))

(defun jd:window-backward ()
  (interactive)
  (other-window -1))

(defun jd:window-forward ()
  (interactive)
  (other-window 1))

(defun jd:force-linum-update-columns-hack ()
  "Fixes odd buffer behavior:
`eshell-mode`: resets the linum columns.
`term-mode`:   fixes not being able to see the output of a command."
  (jd:select-window-and-macro-swap-buffers)
  (jd:select-window-and-macro-swap-buffers))

(defun jd:select-window-and-macro-swap-buffers ()
  "Quickly swap between the last two previously seen buffers."
  (select-window (get-buffer-window))
  (jd:macro-swap-buffers)
  (select-window (get-buffer-window)))

(jd:provide-feature jd:buffer-movement)
