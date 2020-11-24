(define-key python-mode-map (kbd "<M-h>") 'lsp-find-definition)
(define-key python-mode-map (kbd "<C-M-h>") 'lsp-find-references)
(define-key python-mode-map (kbd "<C-x> <M-h>") 'lsp-find-declaration)
(define-key python-mode-map (kbd "<C-x> <C-M-h>") 'lsp-describe-thing-at-point)
(define-key python-mode-map (kbd "<mouse-8>") 'xref-pop-marker-stack)
(define-key python-mode-map (kbd "<mouse-9>") 'lsp-find-definition)

(jd:provide-feature jd:python-kb)
