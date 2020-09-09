(define-key xref--xref-buffer-mode-map (kbd "l") 'xref-goto-xref)
(define-key xref--xref-buffer-mode-map (kbd "q") 'jd:kill-buffer)
(define-key xref--xref-buffer-mode-map (kbd "<jd:ret>") 'xref-goto-xref)

(jd:provide-feature jd:xref-kb)
