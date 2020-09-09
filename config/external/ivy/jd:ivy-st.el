(setq-default ivy-count-format "%d/%d ")
(setq-default ivy-extra-directories nil)
(setq-default ivy-format-function 'ivy-format-function-line)
(setq-default ivy-height 15)
(setq-default ivy-ignore-buffers nil)
(setq-default ivy-recursive-restore nil)

(defun jd:ivy-next-history-element ()
  (interactive)
  (ivy-next-history-element 1))

(defun jd:ivy-previous-history-element ()
  (interactive)
  (ivy-previous-history-element 1))

(defun jd:ivy-scroll-down-command ()
  "Scroll down in the `ivy` minibuffer whilst keeping the selection centered in
the minibuffer."
  (interactive)
  (if (and
       (> ivy--index (- ivy--length (/ ivy-height 2)))
       (not (equal ivy--index (- ivy--length (/ ivy-height 2)))))
      (ivy-set-index (- ivy--length (/ ivy-height 2)))
    (ivy-set-index (max (1+ (- ivy--index ivy-height))
                        0))))

(defun jd:ivy-scroll-up-command ()
  "Scroll up in the `ivy` minibuffer whilst keeping the selection centered in
the minibuffer."
  (interactive)
  (if (and
       (< ivy--index (/ ivy-height 2))
       (not (equal ivy--index (/ ivy-height 2))))
      (ivy-set-index (/ ivy-height 2))
    (ivy-set-index (min (1- (+ ivy--index ivy-height))
                        (1- ivy--length)))))

;; TODO:
;; [ ] Add scrolling functionality.
(defvar jd:preview [nil nil nil nil]
  "State variable to keep track of the state needed for this custom
functionality.
Index 0: the list is to say if this functionality is active.
Index 1: the list is the buffer for which to delete after exploring its
contents.
Index 2: whether or not the buffer already exists.
Index 3: the buffer that this functionality is originally called from.")

(defun jd:preview-function ()
  "Preview the file before actually navigating to it; this automates the process
of just exploring a codebase and/or various files without actually having to
open a up a fully committed buffer and then having to delete it later."
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


(defun jd:delete-preview ()
  "Reset the state variable and kill the buffer being previewed."
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

;; TODO:
;; [ ] Add functionality for colorization of buffers in `ivy`.
(ivy-configure 'counsel-switch-buffer
  :occur #'ivy-switch-buffer-occur
  :display-transformer-fn #'ivy-switch-buffer-transformer)

(jd:provide-feature jd:ivy-st)
