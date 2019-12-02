(setf (cdr speedbar-buffers-key-map) nil)
(define-key speedbar-buffers-key-map (kbd "d") 'speedbar-buffer-kill-buffer)
(define-key speedbar-buffers-key-map (kbd "r") 'speedbar-buffer-revert-buffer)
(define-key speedbar-buffers-key-map (kbd "<C-i>") 'speedbar-restricted-prev)
(define-key speedbar-buffers-key-map (kbd "<C-k>") 'speedbar-restricted-next)
(define-key speedbar-buffers-key-map (kbd "<jd:ret>") 'speedbar-edit-line)
(define-key speedbar-buffers-key-map (kbd "<jd:spc>") 'speedbar-toggle-line-expansion)
(define-key speedbar-buffers-key-map (kbd "<mouse-1>") 'dframe-click)
(define-key speedbar-buffers-key-map (kbd "<mouse-3>") 'speedbar-up-directory)
(define-key speedbar-buffers-key-map (kbd "<C-mouse-3>") 'dframe-popup-kludge)

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
(define-key speedbar-file-key-map (kbd "<C-mouse-3>") 'dframe-popup-kludge)

(provide 'jd:speedbar-kb)

;; speedbar-mode-map
;; speedbar-key-map
