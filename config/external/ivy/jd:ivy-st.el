;; Faces.
(defvar ivy-action)
(defvar ivy-completions-annotations)
(defvar ivy-confirm-face)
(defvar ivy-current-match)
(defvar ivy-grep-info)
(defvar ivy-grep-line-number)
(defvar ivy-highlight-face)
(defvar ivy-match-required-face)
(defvar ivy-minibuffer-match-face-1)
(defvar ivy-minibuffer-match-face-2)
(defvar ivy-minibuffer-match-face-3)
(defvar ivy-minibuffer-match-face-4)
(defvar ivy-minibuffer-match-highlight)
(defvar ivy-modified-buffer)
(defvar ivy-modified-outside-buffer)
(defvar ivy-org)
(defvar ivy-prompt-match)
(defvar ivy-remote)
(defvar ivy-separator)
(defvar ivy-subdir)
(defvar ivy-virtual)
(defvar ivy-yanked-word)

;; Customization variables.
(defvar ivy-action-wrap)
(defvar ivy-add-newline-after-prompt)
(defvar ivy-case-fold-search-default)
(defvar ivy-completing-read-handlers-alist)
(defvar ivy-display-functions-alist)
(defvar ivy-display-style)
(defvar ivy-do-completion-in-region)
(defvar ivy-dynamic-exhibit-delay-ms)
(defvar ivy-fixed-height-minibuffer)
(defvar ivy-format-functions-alist)
(defvar ivy-height-alist)
(defvar ivy-hooks-alist)
(defvar ivy-ignore-buffers)
(defvar ivy-initial-inputs-alist)
(defvar ivy-magic-slash-non-match-action)
(defvar ivy-magic-tilde)
(defvar ivy-minibuffer-faces)
(defvar ivy-on-del-error-function)
(defvar ivy-pre-prompt-function)
(defvar ivy-preferred-re-builders)
(defvar ivy-pulse-delay)
(defvar ivy-read-action-function)
(defvar ivy-sort-functions-alist)
(defvar ivy-sort-matches-functions-alist)
(defvar ivy-sort-max-size)
(defvar ivy-tab-space)
(defvar ivy-truncate-lines)
(defvar ivy-use-ignore-default)
(defvar ivy-use-selectable-prompt)
(defvar ivy-use-virtual-buffers)
(defvar ivy-virtual-abbreviate)
(defvar ivy-wrap)

(setq-default ivy-count-format "%d/%d ")
(setq-default ivy-extra-directories nil)
(setq-default ivy-format-function 'ivy-format-function-line)
(setq-default ivy-height 15)
(setq-default ivy-recursive-restore nil)

;; Scroll down in the `ivy` minibuffer whilst keeping the selection centered in
;; the minibuffer.
(defun jd:ivy-scroll-down-command ()
  (interactive)
  (if (and
       (> ivy--index (- ivy--length (/ ivy-height 2)))
       (not (equal ivy--index (- ivy--length (/ ivy-height 2)))))
      (ivy-set-index (- ivy--length (/ ivy-height 2)))
    (ivy-set-index (max (1+ (- ivy--index ivy-height))
                        0))))

;; Scroll up in the `ivy` minibuffer whilst keeping the selection centered in
;; the minibuffer.
(defun jd:ivy-scroll-up-command ()
  (interactive)
  (if (and
       (< ivy--index (/ ivy-height 2))
       (not (equal ivy--index (/ ivy-height 2))))
      (ivy-set-index (/ ivy-height 2))
    (ivy-set-index (min (1- (+ ivy--index ivy-height))
                        (1- ivy--length)))))

;; TODO:
;; [ ] Add scrolling functionality.
;; State variable to keep track of the state needed for this custom
;; functionality.
;; `idx0` the list is to say if this functionality is active.
;; `idx1` the list is the buffer for which to delete after exploring its
;; contents.
;; `idx2` whether or not the buffer already exists.
;; `idx3` the buffer that this functionality is originally called from.
(defvar jd:preview [nil nil nil nil])
;; Preview the file before actually navigating to it; this automates the process
;; of just exploring a codebase and/or various files without actually having to
;; open a up a fully committed buffer and then having to delete it later.
(defun jd:preview-function ()
  (interactive)
  (let ((file (expand-file-name (ivy-state-current ivy-last) ivy--directory)))
    ;; If previewing isn't active and not the same buffer and not a directory.
    (if (and (null (aref jd:preview 0))
             (not (string= (buffer-name (ivy-state-buffer ivy-last)) (ivy-state-current ivy-last)))
             (not (directory-name-p file)))
        (progn
          (with-ivy-window
            ;; If the buffer currently exists beforehand.
            (if (get-file-buffer file)
                (setf (aref jd:preview 2) t))
            (find-file file))
          (setf (aref jd:preview 0) t)
          (setf (aref jd:preview 1) file)
          (setf (aref jd:preview 3) (ivy-state-buffer ivy-last))))))
;; Reset the state variable and kill the buffer being previewed.
(defun jd:delete-preview ()
  (if (and (eq (aref jd:preview 0) t)
           (not (eq this-command 'jd:preview-function)))
      (progn
        ;; If this command isn't `ivy-alt-done`.
        (if (not (eq this-command 'ivy-alt-done))
            (progn
              ;; If the buffer did not currently exists beforehand.
              (if (eq (aref jd:preview 2) t)
                  (with-ivy-window
                    (select-window (ivy-state-window ivy-last))
                    (switch-to-buffer (aref jd:preview 3)))
                (kill-buffer (get-file-buffer (aref jd:preview 1))))))
        (setf (aref jd:preview 0) nil)
        (setf (aref jd:preview 1) nil)
        (setf (aref jd:preview 2) nil)
        (setf (aref jd:preview 3) nil))))
;; Add the hook to `post-command-hook` to ensure proper state throughout.
(add-hook 'post-command-hook 'jd:delete-preview)

;;; Add functionality for colorization of buffers in `ivy`.
(ivy-configure 'counsel-switch-buffer
  :occur #'ivy-switch-buffer-occur
  :display-transformer-fn #'ivy-switch-buffer-transformer)

(jd:provide-feature jd:ivy-st)
