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
(defvar term-char-mode-point-at-process-mark)
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

;; https://emacs.stackexchange.com/questions/23798/enable-cua-mode-in-term-or-ansi-term-mode
;; enable cua and transient mark modes in term-line-mode
(defadvice term-line-mode (after term-line-mode-fixes ())
  (set (make-local-variable 'cua-mode) t)
  (set (make-local-variable 'transient-mark-mode) t))
(ad-activate 'term-line-mode)

;; https://emacs.stackexchange.com/questions/23798/enable-cua-mode-in-term-or-ansi-term-mode
;; disable cua and transient mark modes in term-char-mode
(defadvice term-char-mode (after term-char-mode-fixes ())
  (set (make-local-variable 'cua-mode) t)
  (set (make-local-variable 'transient-mark-mode) t))
(ad-activate 'term-char-mode)

(defun jd:term-mode-hook ()
  (idle-highlight-mode 1)
  (font-lock-mode 1))

(add-hook 'term-mode-hook 'jd:term-mode-hook)

(jd:provide-feature jd:term-st)
