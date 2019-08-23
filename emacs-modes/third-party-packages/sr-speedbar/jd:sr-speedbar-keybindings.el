;;; `speedbar-buffers-key-map' --- `speedbar.el'
(defun jd:speedbar-buffers-key-map ()
  (setf (cdr speedbar-buffers-key-map) nil)
  (define-key speedbar-file-key-map (kbd "<jd:ret>") 'speedbar-edit-line)
  (define-key speedbar-file-key-map (kbd "<jd:spc>") 'speedbar-toggle-line-expansion))
(add-hook 'speedbar-mode-hook 'jd:speedbar-mode-map)

;;; `speedbar-file-key-map' --- `speedbar.el'
(defun jd:speedbar-file-key-map ()
  (setf (cdr speedbar-file-key-map) nil)

  (define-key speedbar-file-key-map (kbd "<mouse-1>") 'dframe-click)

  (define-key speedbar-file-key-map (kbd "d") 'speedbar-item-delete)
  (define-key speedbar-file-key-map (kbd "i") 'speedbar-item-info)
  (define-key speedbar-file-key-map (kbd "r") 'speedbar-item-rename)

  (define-key speedbar-file-key-map (kbd "<C-k>") 'speedbar-restricted-next)
  (define-key speedbar-file-key-map (kbd "<C-i>") 'speedbar-restricted-prev)

  (define-key speedbar-file-key-map (kbd "<mouse-3>") 'speedbar-up-directory)
  
  ;; (define-key speedbar-file-key-map (kbd "4") 'speedbar-edit-line)
  ;; (define-key speedbar-file-key-map (kbd "5") 'speedbar-edit-line)
  ;; (define-key speedbar-file-key-map (kbd "6") 'speedbar-edit-line)
  ;; (define-key speedbar-file-key-map (kbd "7") 'speedbar-edit-line)
  ;; (define-key speedbar-file-key-map (kbd "8") 'speedbar-edit-line)
  ;; (define-key speedbar-file-key-map (kbd "9") 'speedbar-edit-line)
  
  (define-key speedbar-file-key-map (kbd "<jd:ret>") 'speedbar-edit-line)
  (define-key speedbar-file-key-map (kbd "<jd:spc>") 'speedbar-toggle-line-expansion))
(add-hook 'speedbar-mode-hook 'jd:speedbar-file-key-map)

;;; `speedbar-key-map' --- `speedbar.el'
(defun jd:speedbar-key-map ()
  (setf (cdr speedbar-key-map) nil))
(add-hook 'speedbar-mode-hook 'jd:speedbar-key-map)

;;; `speedbar-mode-map' --- `speedbar.el'
(defun jd:speedbar-mode-map ()
  (setf (cdr speedbar-mode-map) nil))
(add-hook 'speedbar-mode-hook 'jd:speedbar-mode-map)

(provide 'jd:sr-speedbar-keybindings.el)




;; speedbar-buffers-key-map
;; RET		speedbar-edit-line
;; SPC		speedbar-toggle-line-expansion
;; +		speedbar-expand-line
;; -		speedbar-contract-line
;; =		speedbar-expand-line
;; Q		delete-frame
;; b		??
;; e		speedbar-edit-line
;; f		??
;; g		speedbar-refresh
;; k		speedbar-buffer-kill-buffer
;; n		speedbar-next
;; p		speedbar-prev
;; q		dframe-close-frame
;; r		speedbar-buffer-revert-buffer
;; t		speedbar-toggle-updates
;; <C-down-mouse-1>		dframe-hack-buffer-menu
;; <S-mouse-2>			dframe-power-click
;; <down-mouse-3>			dframe-popup-kludge
;; <follow-link>			mouse-face
;; <mode-line>			Prefix Command
;; <mouse-2>	dframe-click
;; <mouse-movement>		dframe-track-mouse
;; <nil>		Prefix Command
;; <remap>		Prefix Command

;; <mode-line> <down-mouse-1>	dframe-popup-kludge
;; <mode-line> <mouse-2>		dframe-mouse-hscroll

;; C-M-n		speedbar-forward-list
;; C-M-p		speedbar-backward-list
;; M-n		speedbar-restricted-next
;; M-p		speedbar-restricted-prev
