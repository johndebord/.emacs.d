(provide 'jd:eshell-mode-keybindings.el)

;;;;;;;;;;;;;;;;;;;
;;; eshell-mode-map
(defun jd:eshell-mode-map ()
  (setf (cdr eshell-mode-map) nil)
  (define-key eshell-mode-map (kbd "<jd:ret>") 'eshell-send-input)
  (define-key eshell-mode-map (kbd "<jd:tab>") 'pcomplete-expand-and-complete)
  (define-key eshell-mode-map (kbd "<C-i>") 'eshell-next-prompt)
  (define-key eshell-mode-map (kbd "<C-k>") 'eshell-previous-prompt)
  (define-key eshell-mode-map (kbd "<C-M-i>") 'eshell-previous-input)
  (define-key eshell-mode-map (kbd "<C-M-k>") 'eshell-next-input)
  (define-key eshell-mode-map (kbd "<C-c> <C-c>") 'eshell-interrupt-process)
  (define-key eshell-mode-map (kbd "<C-x> u") 'eshell-bol))
(add-hook 'eshell-mode-hook 'jd:eshell-mode-map)

;;;;;;;;;;;;;;;;;;;;;;
;;; eshell-isearch-map
(defun jd:eshell-isearch-map ()
  (setf (cdr eshell-isearch-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-isearch-map)

;;;;;;;;;;;;;;;;;;;;;;
;;; eshell-command-map
(defun jd:eshell-command-map ()
  (setf (cdr eshell-command-map) nil))
(add-hook 'eshell-mode-hook 'jd:eshell-command-map)
