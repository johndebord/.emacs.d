(setf (cdr company-active-map) nil)
(define-key company-active-map (kbd "<C-g>") 'company-abort)
(define-key company-active-map (kbd "<C-h>") 'jd:company-show-doc-buffer)
(define-key company-active-map (kbd "<C-i>") 'company-previous-page)
(define-key company-active-map (kbd "<C-k>") 'company-next-page)
(define-key company-active-map (kbd "<M-i>") 'company-select-previous)
(define-key company-active-map (kbd "<M-k>") 'company-select-next)
(define-key company-active-map (kbd "<jd:ret>") 'company-complete-selection)

(provide 'jd:company-kb.el)

;; company-filter-map
;; company-mode-map
;; company-search-map
