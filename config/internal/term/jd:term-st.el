(setq-default term-char-mode-point-at-process-mark nil)
(setq-default term-buffer-maximum-size 32768)

(defvar jd:term-process-mark-overlay nil
  "Overlay for the `term-mode` marker.")

(defun jd:is-on-prompt-line ()
  "Determine if the cursor is on the prompt line."
  (equal (line-number-at-pos) (line-number-at-pos (term-process-mark))))

(defun jd:term-paste ()
  "Decide to paste, depending on the context of the cursor in the buffer."
  (interactive)
  (if (jd:is-on-prompt-line)
      (term-paste)))

(defun jd:term-backward-char ()
  "Decide how to move the cursor, depending on the context of the cursor in the
buffer."
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-left)
    (backward-char)))

(defun jd:term-next-line ()
  "Go to the next line or where the currect term process mark is, depending on
the context of the cursor in the buffer."
  (interactive "^")
  (if (save-excursion
        (forward-line)
        (jd:is-on-prompt-line))
      (goto-char (term-process-mark))
    (next-line)))

(defun jd:term-forward-char ()
  "Decide how to move the cursor, depending on the context of the cursor in the
buffer."
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-right)
    (forward-char)))

(defun jd:term-end-of-line ()
  "Decide how to move the cursor, depending on the context of the cursor in the
buffer."
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-end)
    (end-of-line)))

(defun jd:term-beginning-of-line ()
  "Decide how to move the cursor, depending on the context of the cursor in the
buffer."
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-home)
    (beginning-of-line)))

(defun jd:term-next-input ()
  "Decide whether or not the next input should be displayed, depending on the
context of the cursor in the buffer."
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (progn
        (jd:term-end-of-line)
        (term-send-down))
    (progn
      (scroll-down-line -1)
      (line-move 1))))

(defun jd:term-previous-input ()
  "Decide whether or not the previous input should be displayed, depending on
the context of the cursor in the buffer."
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (progn
        (jd:term-end-of-line)
        (term-send-up))
    (progn
      (scroll-down-line 1)
      (line-move -1))))

(defun jd:term-backward-word ()
  "Decide how to move the cursor, depending on the context of the cursor in the
buffer."
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-ctrl-left)
    (backward-word)))

(defun jd:term-forward-word ()
  "Decide how to move the cursor, depending on the context of the cursor in the
buffer."
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-ctrl-right)
    (forward-word)))

(defun jd:term-clear-buffer ()
  "Force default length columns upon a successful clear."
  (interactive)
  (comint-clear-buffer)
  (jd:force-linum-update-columns-hack))

(defun jd:term-send-input ()
  "Decide whether or not the prompt line should be sent, depending on the
context of the cursor in the buffer."
  (interactive)
  (if (jd:is-on-prompt-line)
      (term-send-raw-string "\C-M")))

(defun jd:term-delete-backward-word ()
  "Decide whether or not the previous word should be deleted, depending on the
context of the cursor in the buffer."
  (interactive)
  (if (jd:is-on-prompt-line)
      (term-send-raw-string "\C-W")))

(defun jd:goto-process-mark ()
  "Helper function for process mark navigation."
  (interactive)
  (goto-char (term-process-mark)))

(defun jd:term-mode-hook ()
  (idle-highlight-mode 1)
  (linum-mode 0)
  (toggle-truncate-lines 1))

(defun jd:term-process-mark ()
  "Helper function since `term-process-mark` expects to be called in the
`*terminal*` buffer itself."
  (if (processp (get-buffer-process (get-buffer "*terminal*")))
      (process-mark (get-buffer-process (get-buffer "*terminal*")))
    nil))

(defun jd:show-term-process-mark-overlay (&rest _)
  "Show the current position of the process mark in the `*terminal*` buffer.
Courtesy: https://emacs.stackexchange.com/questions/44642"
  (unless (null (get-buffer "*terminal*"))
    (unless jd:term-process-mark-overlay
      (setq jd:term-process-mark-overlay (make-overlay
                                          (jd:term-process-mark)
                                          (jd:term-process-mark)
                                          (get-buffer "*terminal*")))
      (overlay-put jd:term-process-mark-overlay 'face '((t :inherit show-paren-mismatch))))
    (let ((term-process-mark (jd:term-process-mark)))
      (cond
       ((null term-process-mark)
        (delete-overlay jd:term-process-mark-overlay))
       
       (t
        (move-overlay jd:term-process-mark-overlay
                      term-process-mark (1+ term-process-mark)
                      (get-buffer "*terminal*")))))))

(defun jd:term-kill-buffer ()
  "Created this function to avoid erroneous behavior when killing a `term-mode` buffer during an ssh session.

TODO:
Add advice in `term-emulate-terminal` instead of using this function of
rind another way of fixing this behavior."
  (interactive)
  (if (processp (get-buffer-process (current-buffer)))
      (message "Send `eof` before killing buffer.")
    (kill-buffer)))

(add-hook 'pre-redisplay-functions 'jd:show-term-process-mark-overlay)
(add-hook 'term-mode-hook 'jd:term-mode-hook)

;; Enable `cua-mode` in terminal emulator.
(advice-add 'term-line-mode
            :after
            (lambda ()
              (set (make-local-variable 'cua-mode) t)
              (set (make-local-variable 'transient-mark-mode) t)))

;; Enable `cua-mode` in terminal emulator.
(advice-add 'term-char-mode
            :after
            (lambda ()
              (set (make-local-variable 'cua-mode) t)
              (set (make-local-variable 'transient-mark-mode) t)))

(jd:provide-feature jd:term-st)
