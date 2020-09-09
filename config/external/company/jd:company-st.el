(setq-default company-async-timeout 10)
(setq-default company-backends nil)
(setq-default company-frontends '(company-echo-metadata-frontend company-pseudo-tooltip-frontend))
(setq-default company-idle-delay nil)
(setq-default company-tooltip-limit 10)


(defvar jd:company-select nil
  "Determines whether to `company-complete` or `company-complete-common` the
selection, depending on the context of the situation.")

(defvar jd:recently-finished-completion nil
  "Determines if a `company-complete-selection` has recently been executed. This
is to keep the `company` popup from popping up in circumstances of spamming tab
and in the case of using `company` with `yasnippet`.")

(defun jd:company-select-nil (&rest _)
  "If `company` has exited gracefully with a completion, reset the state
variable `jd:company-select` for the next completion cycle."
  (setq jd:company-select nil))

(defun jd:company-select-t (&rest _)
  "If `company` is in the midst of a completion, we want to switch the behavior
of tab to `company-complete-selection` instead of a continuous stream of calls
to `company-complete-common`."
  (setq jd:company-select t))

(defun jd:recently-finished-completion-nil (&rest _)
  "If `company` has exited gracefully with a completion and a subsequent
operation has occured (indicated that I may want to try another completion), set
the state variable `jd:recently-finished-completion` to false to indicate that a
I'm ready for another completion."
  (setq jd:recently-finished-completion nil))

(defun jd:recently-finished-completion-t (&rest _)
  "If `company` has exited gracefully with a completion, set the state variable
`jd:recently-finished-completion` to true to indicate that a recent completion
has occurred."
  (setq jd:recently-finished-completion t))

(defun jd:company-next-page ()
  "Move down a page the company completions popup."
  (interactive)
  (when (company-manual-begin)
    (if (and company-selection-wrap-around
             (= company-selection (1- company-candidates-length)))
        (company-set-selection 0)
      (let (company-selection-wrap-around)
        (company-set-selection (+ company-selection
                                  (1- company-tooltip-limit)))))))

(defun jd:company-previous-page ()
  "Move up a page the company completions popup."
  (interactive)
  (when (company-manual-begin)
    (if (and company-selection-wrap-around
             (zerop company-selection))
        (company-set-selection (1- company-candidates-length))
      (let (company-selection-wrap-around)
        (company-set-selection (- company-selection
                                  (1- company-tooltip-limit)))))))

(defun jd:company-beginning-of-candidates ()
  "Move to the beginning of the `company` completions popup."
  (interactive)
  (company-set-selection 0))

(defun jd:company-end-of-candidates ()
  "Move to the end of the `company` completions popup."
  (interactive)
  (company-set-selection company-candidates-length))

(defun jd:delete-backward-word-and-reset-state-variables ()
  "Upon `jd:delete-word-backward` reset the state variable `jd:company-select`
for the next completion cycle."
  (interactive)
  (jd:company-select-nil)
  (jd:recently-finished-completion-nil)
  (jd:delete-word-backward))

(defun jd:delete-backward-char ()
  "Upon `delete-backward-char` reset the state variable `jd:company-select` for
the next completion cycle."
  (interactive)
  (jd:company-select-nil)
  (jd:recently-finished-completion-nil)
  (delete-backward-char 1))

(defun jd:xref-find-definitions ()
  "Find xref definitions in either the `company` popup or in a normal fashion."
  (interactive)
  (if (company--active-p)
      (progn
        (xref-find-definitions (nth company-selection company-candidates)))
    (progn
      (xref-find-definitions (symbol-name (symbol-at-point))))))

(defun jd:xref-find-references ()
  "Find xref references in either the `company` popup or in a normal fashion."
  (interactive)
  (if (company--active-p)
      (progn
        (xref-find-references (nth company-selection company-candidates)))
    (progn
      (xref-find-references (symbol-name (symbol-at-point))))))

;; Note for the future: The next step would be to get completions right after a
;; call to `undo`. But this would require some plumbing as there are no hooks
;; that get called when calling `undo`.
(add-hook 'company-after-completion-hook 'jd:company-select-nil)
(add-hook 'company-after-completion-hook 'jd:recently-finished-completion-t)
(add-hook 'company-completion-cancelled-hook 'jd:company-select-nil)
(add-hook 'company-completion-cancelled-hook 'jd:recently-finished-completion-nil)
(add-hook 'post-self-insert-hook 'jd:company-select-nil)
(add-hook 'post-self-insert-hook 'jd:recently-finished-completion-nil)

(jd:provide-feature jd:company-st)
