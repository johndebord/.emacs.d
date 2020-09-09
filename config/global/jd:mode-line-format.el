;; Custom `mode-line-format` configuration.
;; Will have to set `mode-line-format` like so:
;; ```
;; (setq-default mode-line-format (list
;;                                 " "
;;                                 '(:eval (jd:handle-buffer-defaults))
;;                                 '(:eval (jd:handle-buffer-name))
;;                                 '(:eval (jd:handle-position-info))
;;                                 '(:eval (jd:handle-buffer-size))
;;                                 '(:eval (jd:handle-version-control))
;;                                 '(:eval (jd:handle-modes))))
;; ```

(defun jd:handle-buffer-defaults ()
  "Customize how the filename of the current buffer is displayed in the
mode-line."
  "%e")

(defun jd:handle-buffer-name ()
  "Customize the name of the current buffer in the mode-line."
  "%b ")

(defun jd:handle-position-info ()
  "Customize cursor position information in the mode-line."
  "(%l,%c) ")

(defun jd:handle-buffer-size ()
  "Customize how the size of the current buffer is displayed in the mode-line."
  (concat (number-to-string (buffer-size)) " "))

(defun jd:handle-version-control ()
  "Customize how version control of the current buffer is displayed in the
mode-line."
  (if (vc-registered (buffer-file-name))
      (concat
       (symbol-name (vc-responsible-backend (buffer-file-name)))
       ":"
       (substring
        (vc-working-revision (buffer-file-name) (vc-responsible-backend (buffer-file-name)))
        0 6)
       " ")))

(defun jd:handle-modes ()
  "Customize how the modes of the current buffer are displayed on the
mode-line."
  (concat
   "("
   (upcase mode-name)
   (if mode-line-process
       (concat
        " "
        (upcase mode-line-process)
        " "))
   ")"))

(jd:provide-feature jd:mode-line-format)
