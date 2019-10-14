(setq-default company-idle-delay nil)
(setq-default company-frontends '(company-echo-metadata-frontend
                                  company-pseudo-tooltip-frontend))
(setq-default company-tooltip-limit 10)

;; fix yasnippet backend
;; fix lisp vs emacs
;; fix colors
(setf (cdr company-active-map) nil)
(define-key company-active-map (kbd "<C-g>") 'company-abort)
(define-key company-active-map (kbd "<C-h>") 'company-show-doc-buffer)
(define-key company-active-map (kbd "<C-i>") 'company-previous-page)
(define-key company-active-map (kbd "<C-k>") 'company-next-page)
(define-key company-active-map (kbd "<M-i>") 'company-select-previous)
(define-key company-active-map (kbd "<M-k>") 'company-select-next)
(define-key company-active-map (kbd "<jd:ret>") 'company-complete-selection)

(provide 'jd:company-kb.el)

;; company-filter-map
;; company-mode-map
;; company-search-map
