;; Faces.
(defvar term)
(defvar term-bold)
(defvar term-color-black)
(defvar term-color-blue)
(defvar term-color-cyan)
(defvar term-color-green)
(defvar term-color-magenta)
(defvar term-color-red)
(defvar term-color-white)
(defvar term-color-yellow)
(defvar term-underline)

;; Customization variables.
(defvar explicit-shell-file-name)
(defvar term-buffer-maximum-size)
(defvar term-char-mode-buffer-read-only)
(defvar term-completion-addsuffix)
(defvar term-completion-autolist)
(defvar term-completion-fignore)
(defvar term-completion-recexact)
(defvar term-default-bg-color)
(defvar term-default-fg-color)
(defvar term-eol-on-send)
(defvar term-exec-hook)
(defvar term-input-autoexpand)
(defvar term-input-chunk-size)
(defvar term-input-ignoredups)
(defvar term-input-ring-file-name)
(defvar term-mode-hook)
(defvar term-scroll-show-maximum-output)
(defvar term-scroll-to-bottom-on-output)
(defvar term-suppress-hard-newline)

(setq-default term-char-mode-point-at-process-mark nil)

;; Determine if the cursor is on the prompt line.
(defun jd:is-on-prompt-line ()
  (equal (line-number-at-pos) (line-number-at-pos (point-max))))

;; Decide how to move the cursor, depending on the context of the cursor in the
;; buffer.
(defun jd:term-beginning-of-line ()
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-home)
    (beginning-of-line)))

;; Decide how to move the cursor, depending on the context of the cursor in the
;; buffer.
(defun jd:term-end-of-line ()
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-end)
    (end-of-line)))

;; Decide how to move the cursor, depending on the context of the cursor in the
;; buffer.
(defun jd:term-backward-char ()
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-left)
    (backward-char)))

;; Decide how to move the cursor, depending on the context of the cursor in the
;; buffer.
(defun jd:term-forward-char ()
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-right)
    (forward-char)))

;; Decide how to move the cursor, depending on the context of the cursor in the
;; buffer.
(defun jd:term-backward-word ()
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-ctrl-left)
    (backward-word)))

;; Decide how to move the cursor, depending on the context of the cursor in the
;; buffer.
(defun jd:term-forward-word ()
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-ctrl-right)
    (forward-word)))

;; Decide whether or not the next input should be displayed, depending on the
;; context of the cursor in the buffer.
(defun jd:term-next-input ()
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-down)
    (progn
      (scroll-down-line -1)
      (line-move 1))))

;; Decide whether or not the previous input should be displayed, depending on
;; the context of the cursor in the buffer.
(defun jd:term-previous-input ()
  (interactive "^")
  (if (jd:is-on-prompt-line)
      (term-send-up)
    (progn
      (scroll-down-line 1)
      (line-move -1))))

;; Go to the next line or where the currect term process mark is, depending on
;; the context of the cursor in the buffer.
(defun jd:term-next-line ()
  (interactive "^")
  (if (save-excursion
        (forward-line)
        (jd:is-on-prompt-line))
      (goto-char (term-process-mark))
    (next-line)))

;; Decide whether or not the previous word should be deleted, depending on the
;; context of the cursor in the buffer.
(defun jd:term-delete-backward-word ()
  (interactive)
  (if (jd:is-on-prompt-line)
      (term-send-raw-string "\C-w")
    (jd:delete-backward-word-and-reset-state-variables)))

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

;; Force default length columns upon a successful clear.
(defun jd:term-clear-buffer ()
  (interactive)
  (comint-clear-buffer)
  (jd:force-linum-update-columns-hack))

(defun jd:term-mode-hook ()
  (font-lock-mode 1)
  (idle-highlight-mode 1)
  (toggle-truncate-lines 1))

(add-hook 'term-mode-hook 'jd:term-mode-hook)

(jd:provide-feature jd:term-st)
