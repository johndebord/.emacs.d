(defun jd:eshell-clear-buffer ()
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)
    (eshell-send-input))
  (beginning-of-line)
  (backward-delete-char 1)
  (end-of-line))

(defun jd:eshell-ack-or-send-input ()
  (interactive)
  (if (get-text-property (point) 'face)
      (progn
	(let ((value (get-char-property (point) 'face)))
	  (cond ((equal (cdr (car value)) "green3")
		 (let ((file (thing-at-point 'filename 'no-properties)))
		   (find-file file)))
		((equal (cdr (car value)) "yellow3")
		 (let ((line (thing-at-point 'word 'no-properties)))
		   (beginning-of-line)
		   (while (not (equal (cdr (car (get-char-property (point) 'face))) "green3"))
		     (previous-line))
		   (let ((file (thing-at-point 'filename 'no-properties)))
		     (find-file file)
		     (goto-line (string-to-number line))))))))
    (eshell-send-input)))

;;; `eshell-arg-mode-map' --- `esh-arg.el'
(defun jd:eshell-arg-mode-map ()
  (setf (cdr eshell-arg-mode-map) nil))
(add-hook 'eshell-arg-mode-hook 'jd:eshell-arg-mode-map)

;;; `eshell-cmpl-mode-map' --- `em-cmpl.el'
(defun jd:eshell-cmpl-mode-map ()
  (setf (cdr eshell-cmpl-mode-map) nil))
(add-hook 'eshell-cmpl-mode-hook 'jd:eshell-cmpl-mode-map)

;;; Find the appropraite hook for this map
;;; `eshell-command-map' --- `esh-mode.el'
(defun jd:eshell-command-map ()
  (setf (cdr eshell-command-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-command-map)

;;; `eshell-isearch-map' --- `em-hist.el'
(defun jd:eshell-isearch-map ()
  (setf (cdr eshell-isearch-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-isearch-map)

;;; `eshell-mode-map' --- `esh-mode.el'
(defun jd:eshell-mode-map ()
  (setf (cdr eshell-mode-map) nil)
  (define-key eshell-mode-map (kbd "<jd:ret>") 'jd:eshell-ack-or-send-input)
  (define-key eshell-mode-map (kbd "<jd:tab>") 'pcomplete-expand-and-complete)
  (define-key eshell-mode-map (kbd "<C-i>") 'eshell-previous-prompt)
  (define-key eshell-mode-map (kbd "<C-k>") 'eshell-next-prompt)
  (define-key eshell-mode-map (kbd "<C-M-i>") 'eshell-previous-input)
  (define-key eshell-mode-map (kbd "<C-M-k>") 'eshell-next-input)
  (define-key eshell-mode-map (kbd "<C-c> <C-c>") 'eshell-interrupt-process)
  (define-key eshell-mode-map (kbd "<C-c> <C-d>") 'eshell-send-eof-to-process)
  (define-key eshell-mode-map (kbd "<C-c> <C-l>") 'jd:eshell-clear-buffer)
  (define-key eshell-mode-map (kbd "<C-x> u") 'eshell-bol))
(add-hook 'eshell-mode-hook 'jd:eshell-mode-map)

;;; `eshell-hist-mode-map' --- `em-hist.el'
(defun jd:eshell-hist-mode-map ()
  (setf (cdr eshell-hist-mode-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-hist-mode-map)

;;; `eshell-pred-mode-map' --- `em-pred.el'
(defun jd:eshell-pred-mode-map ()
  (setf (cdr eshell-pred-mode-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-pred-mode-map)

;;; `eshell-proc-mode-map' --- `esh-proc.el'
(defun jd:eshell-proc-mode-map ()
  (setf (cdr eshell-proc-mode-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-proc-mode-map)

;;; `eshell-prompt-mode-map' --- `em-prompt.el'
(defun jd:eshell-prompt-mode-map ()
  (setf (cdr eshell-prompt-mode-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-prompt-mode-map)

;;; `eshell-var-mode-map' --- `esh-var.el'
(defun jd:eshell-var-mode-map ()
  (setf (cdr eshell-var-mode-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-var-mode-map)

(provide 'jd:eshell-mode-keybindings.el)
