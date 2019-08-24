(provide 'jd:c++-mode-keybindings.el)

(defun jd:c-beginning-of-defun-hl ()
  (interactive "^")
  (c-beginning-of-defun))

(defun jd:c-end-of-defun-hl ()
  (interactive "^")
  (c-end-of-defun))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `c++-mode-map' --- `cc-mode.el'
(defun jd:c++-mode-map ()
  (setf (cdr c++-mode-map) nil)
  (define-key c++-mode-map (kbd "<jd:tab>") 'c-indent-line-or-region)
  (define-key c++-mode-map (kbd "<C-i>") 'jd:c-beginning-of-defun-hl)
  (define-key c++-mode-map (kbd "<C-k>") 'jd:c-end-of-defun-hl)
  (define-key c++-mode-map (kbd "<C-;>") 'c-mark-function)
  (define-key c++-mode-map (kbd "{") 'c-electric-brace)
  (define-key c++-mode-map (kbd "}") 'c-electric-brace)
  (define-key c++-mode-map (kbd "<") 'c-electric-lt-gt)
  (define-key c++-mode-map (kbd ">") 'c-electric-lt-gt)
  (define-key c++-mode-map (kbd "(") 'c-electric-paren)
  (define-key c++-mode-map (kbd ")") 'c-electric-paren)
  (define-key c++-mode-map (kbd ";") 'c-electric-semi&comma)
  (define-key c++-mode-map (kbd ":") 'c-electric-colon)
  (define-key c++-mode-map (kbd ",") 'c-electric-semi&comma)
  (define-key c++-mode-map (kbd "/") 'c-electric-slash)
  (define-key c++-mode-map (kbd "#") 'c-electric-pound)
  (define-key c++-mode-map (kbd "*") 'c-electric-star))
(add-hook 'c++-mode-hook 'jd:c++-mode-map)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `c-mode-base-map' --- `cc-mode.el'
(defun jd:c-mode-base-map ()
  (setf (cdr c-mode-base-map) nil))
(add-hook 'c++-mode-hook 'jd:c-mode-base-map)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `c-c++-menu' --- `cc-mode.el'
(defun jd:c-c++-menu ()
  (setf (cdr c-c++-menu) nil))
(add-hook 'c++-mode-hook 'jd:c-c++-menu)
