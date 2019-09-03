;;; `speedbar-buffers-key-map' --- `speedbar.el'
(defun jd:speedbar-buffers-key-map ()
  (setf (cdr speedbar-buffers-key-map) nil)
  (define-key speedbar-buffers-key-map (kbd "d") 'speedbar-buffer-kill-buffer)
  (define-key speedbar-buffers-key-map (kbd "r") 'speedbar-buffer-revert-buffer)
  (define-key speedbar-buffers-key-map (kbd "<C-i>") 'speedbar-restricted-prev)
  (define-key speedbar-buffers-key-map (kbd "<C-k>") 'speedbar-restricted-next)
  (define-key speedbar-buffers-key-map (kbd "<jd:ret>") 'speedbar-edit-line)
  (define-key speedbar-buffers-key-map (kbd "<jd:spc>") 'speedbar-toggle-line-expansion)
  (define-key speedbar-buffers-key-map (kbd "<mouse-1>") 'dframe-click)
  (define-key speedbar-buffers-key-map (kbd "<mouse-3>") 'speedbar-up-directory)
  (define-key speedbar-buffers-key-map (kbd "<C-mouse-3>") 'dframe-popup-kludge))
(add-hook 'speedbar-mode-hook 'jd:speedbar-mode-map)

;;; `speedbar-file-key-map' --- `speedbar.el'
(defun jd:speedbar-file-key-map ()
  (setf (cdr speedbar-file-key-map) nil)
  (define-key speedbar-file-key-map (kbd "d") 'speedbar-item-delete)
  (define-key speedbar-file-key-map (kbd "i") 'speedbar-item-info)
  (define-key speedbar-file-key-map (kbd "r") 'speedbar-item-rename)
  (define-key speedbar-file-key-map (kbd "<C-i>") 'speedbar-restricted-prev)
  (define-key speedbar-file-key-map (kbd "<C-k>") 'speedbar-restricted-next)
  (define-key speedbar-file-key-map (kbd "<jd:ret>") 'speedbar-edit-line)
  (define-key speedbar-file-key-map (kbd "<jd:spc>") 'speedbar-toggle-line-expansion)
  (define-key speedbar-file-key-map (kbd "<mouse-1>") 'dframe-click)
  (define-key speedbar-file-key-map (kbd "<mouse-3>") 'speedbar-up-directory)
  (define-key speedbar-file-key-map (kbd "<C-mouse-3>") 'dframe-popup-kludge))
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
