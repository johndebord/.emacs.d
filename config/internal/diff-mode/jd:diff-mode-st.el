;; Faces.
(defvar diff-added)
(defvar diff-changed)
(defvar diff-context)
(defvar diff-file-header)
(defvar diff-function)
(defvar diff-header)
(defvar diff-hunk-header)
(defvar diff-index)
(defvar diff-indicator-added)
(defvar diff-indicator-changed)
(defvar diff-indicator-removed)
(defvar diff-nonexistent)
(defvar diff-refine-added)
(defvar diff-refine-changed)
(defvar diff-refine-removed)
(defvar diff-removed)

;; Customization variables.
(defvar diff-advance-after-apply-hunk)
(defvar diff-default-read-only)
(defvar diff-jump-to-old-file)
(defvar diff-mode-hook)
(defvar diff-update-on-the-fly)

(setq-default diff-minor-mode-prefix nil)

(defun jd:diff-mode-hook ()
  (font-lock-mode 1)
  (idle-highlight-mode 1))

(add-hook 'diff-mode-hook 'jd:diff-mode-hook)

(jd:provide-feature jd:diff-mode-st)
