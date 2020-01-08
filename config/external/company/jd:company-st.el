;; Faces.
(defvar company-echo)
(defvar company-echo-common)
(defvar company-preview)
(defvar company-preview-common)
(defvar company-preview-search)
(defvar company-scrollbar-bg)
(defvar company-scrollbar-fg)
(defvar company-tooltip)
(defvar company-tooltip-annotation)
(defvar company-tooltip-annotation-selection)
(defvar company-tooltip-common)
(defvar company-tooltip-common-selection)
(defvar company-tooltip-mouse)
(defvar company-tooltip-search)
(defvar company-tooltip-search-selection)
(defvar company-tooltip-selection)

;; Customization variables.
(defvar company-abort-manual-when-too-short)
(defvar company-after-completion-hook)
(defvar company-auto-complete)
(defvar company-auto-complete-chars)
(defvar company-begin-commands)
(defvar company-completion-cancelled-hook)
(defvar company-completion-finished-hook)
(defvar company-completion-started-hook)
(defvar company-continue-commands)
(defvar company-echo-truncate-lines)
(defvar company-global-modes)
(defvar company-minimum-prefix-length)
(defvar company-occurrence-weight-function)
(defvar company-require-match)
(defvar company-search-regexp-function)
(defvar company-selection-wrap-around)
(defvar company-show-numbers)
(defvar company-show-numbers-function)
(defvar company-tooltip-align-annotations)
(defvar company-tooltip-flip-when-above)
(defvar company-tooltip-idle-delay)
(defvar company-tooltip-margin)
(defvar company-tooltip-maximum-width)
(defvar company-tooltip-minimum )
(defvar company-tooltip-minimum-width)
(defvar company-tooltip-offset-display)
(defvar company-transformers)

(setq-default company-async-timeout 10)
(setq-default company-backends nil)
(setq-default company-frontends
              '(company-echo-metadata-frontend
                company-pseudo-tooltip-frontend))
(setq-default company-idle-delay nil)
(setq-default company-tooltip-limit 10)

;; Determines whether to `company-complete` `company-complete-common` the
;; selection, depending on the context of the situation.
(defvar jd:company-select nil)

;; Determines if a `company-complete-selection` has recently been executed. This
;; is to keep the `company` popup from popping up in circumstances of spamming
;; tab and in the case of using `company` with `yasnippet`.
(defvar jd:recently-finished-completion nil)

;; If `company` has exited gracefully with a completion, reset the state
;; variable `jd:company-select` for the next completion cycle.
(defun jd:company-select-nil (&rest _)
  (setq jd:company-select nil))

;; If `company` is in the midst of a completion, we want to switch the behavior
;; of tab to `company-complete-selection` instead of a continuous stream of
;; calls to `company-complete-common`.
(defun jd:company-select-t (&rest _)
  (setq jd:company-select t))

;; If `comapny` has exited gracefully with a completion and a subsequent
;; operation has occured (indicated that I may want to try another completion),
;; set the state variable `jd:recently-finished-completion` to false to indicate
;; that a I'm ready for another completion.
(defun jd:recently-finished-completion-nil (&rest _)
  (setq jd:recently-finished-completion nil))

;; If `comapny` has exited gracefully with a completion, set the state variable
;; `jd:recently-finished-completion` to true to indicate that a recent
;; completion has occurred.
(defun jd:recently-finished-completion-t (&rest _)
  (setq jd:recently-finished-completion t))

;; Move down a page the company completions popup.
(defun jd:company-next-page ()
  (interactive)
  (when (company-manual-begin)
    (if (and company-selection-wrap-around
             (= company-selection (1- company-candidates-length)))
        (company-set-selection 0)
      (let (company-selection-wrap-around)
        (company-set-selection (+ company-selection
                                  (1- company-tooltip-limit)))))))

;; Move up a page the company completions popup.
(defun jd:company-previous-page ()
  (interactive)
  (when (company-manual-begin)
    (if (and company-selection-wrap-around
             (zerop company-selection))
        (company-set-selection (1- company-candidates-length))
      (let (company-selection-wrap-around)
        (company-set-selection (- company-selection
                                  (1- company-tooltip-limit)))))))

;; Move to the beginning of the `company` completions popup.
(defun jd:company-beginning-of-candidates ()
  (interactive)
  (company-set-selection 0))

;; Move to the end of the `company` completions popup.
(defun jd:company-end-of-candidates ()
  (interactive)
  (company-set-selection company-candidates-length))

;; Upon `jd:delete-word-backward` reset the state variable `jd:company-select`
;; for the next completion cycle.
(defun jd:delete-backward-word-and-reset-state-variables ()
  (interactive)
  (jd:company-select-nil)
  (jd:recently-finished-completion-nil)
  (jd:delete-word-backward))

;; Upon `delete-backward-char` reset the state variable `jd:company-select` for
;; the next completion cycle.
(defun jd:delete-backward-char ()
  (interactive)
  (jd:company-select-nil)
  (jd:recently-finished-completion-nil)
  (delete-backward-char 1))

;; Note for the future: The next step would be to get completions right after a
;; call to `undo`. But this would require some plumbing as there are no hooks
;; that get called when calling `undo`.
(add-hook 'company-after-completion-hook 'jd:company-select-nil)
(add-hook 'company-after-completion-hook 'jd:recently-finished-completion-t)
(add-hook 'company-completion-cancelled-hook 'jd:company-select-nil)
(add-hook 'company-completion-cancelled-hook 'jd:recently-finished-completion-nil)
(add-hook 'post-self-insert-hook 'jd:company-select-nil)
(add-hook 'post-self-insert-hook 'jd:recently-finished-completion-nil)

(provide 'jd:company-st)
