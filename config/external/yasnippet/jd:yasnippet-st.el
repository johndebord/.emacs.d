;; Faces.
(defvar yas-field-highlight-face)
(defvar yas--field-debug-face)

;; Customization variables.
(defvar yas-alias-to-yas/prefix-p)
(defvar yas-also-auto-indent-first-line)
(defvar yas-also-indent-empty-lines)
(defvar yas-buffer-local-condition)
(defvar yas-choose-keys-first)
(defvar yas-choose-tables-first)
(defvar yas-expand-only-for-last-commands)
(defvar yas-fallback-behavior)
(defvar yas-good-grace)
(defvar yas-indent-line)
(defvar yas-inhibit-overlay-modification-protection)
(defvar yas-keymap-disable-hook)
(defvar yas-new-snippet-default)
(defvar yas-overlay-priority)
(defvar yas-prompt-functions)
(defvar yas-snippet-dirs)
(defvar yas-snippet-revival)
(defvar yas-trigger-symbol)
(defvar yas-triggers-in-field)
(defvar yas-use-menu)
(defvar yas-visit-from-menu)
(defvar yas-wrap-around-region)

(yas-load-directory
 (concat jd:external-elisp-files-prefix "yasnippet/snippets/"))

(jd:provide-feature jd:yasnippet-st)
