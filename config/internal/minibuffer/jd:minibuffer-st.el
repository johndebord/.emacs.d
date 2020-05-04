;; Faces.
(defvar completions-annotations)
(defvar completions-common-part)
(defvar completions-first-difference)

;; Customization variables.
(defvar completion-category-overrides)
(defvar completion-cycle-threshold)
(defvar completion-pcm-complete-word-inserts-delimiters)
(defvar completion-pcm-word-delimiters)
(defvar completion-styles)
(defvar completions-format)
(defvar insert-default-directory)
(defvar read-file-name-completion-ignore-case)

(setq-default completion-auto-help nil)

(defun jd:eval-expression-minibuffer-setup-hook ()
  (eldoc-mode 1)
  (electric-pair-mode 1)
  (idle-highlight-mode 1))

(add-hook 'eval-expression-minibuffer-setup-hook 'jd:eval-expression-minibuffer-setup-hook)

(jd:provide-feature jd:minibuffer-st)
