(setf (cdr xref--button-map) nil)
(define-key xref--button-map (kbd "<mouse-1>") 'xref-goto-xref)

(setf (cdr xref--xref-buffer-mode-map) nil)
(define-key xref--xref-buffer-mode-map (kbd ";") 'recenter)
(define-key xref--xref-buffer-mode-map (kbd "i") 'jd:xref-previous-line)
(define-key xref--xref-buffer-mode-map (kbd "k") 'jd:xref-next-line)
(define-key xref--xref-buffer-mode-map (kbd "l") 'xref-goto-xref)
(define-key xref--xref-buffer-mode-map (kbd "o") 'end-of-buffer)
(define-key xref--xref-buffer-mode-map (kbd "q") (lambda () (interactive) (quit-window t)))
(define-key xref--xref-buffer-mode-map (kbd "u") 'beginning-of-buffer)

(provide 'jd:xref-kb)

;; xref--transient-buffer-mode-map
