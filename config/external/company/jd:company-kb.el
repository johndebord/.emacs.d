(setf (cdr company-active-map) nil)
(define-key company-active-map (kbd "<C-g>") 'company-abort)
(define-key company-active-map (kbd "<C-h>") 'jd:company-show-doc-buffer)
(define-key company-active-map (kbd "<C-i>") 'jd:company-previous-page)
(define-key company-active-map (kbd "<C-o>") 'jd:company-end-of-candidates)
(define-key company-active-map (kbd "<C-k>") 'jd:company-next-page)
(define-key company-active-map (kbd "<C-u>") 'jd:company-beginning-of-candidates)
(define-key company-active-map (kbd "<M-i>") 'company-select-previous)
(define-key company-active-map (kbd "<M-k>") 'company-select-next)
(define-key company-active-map (kbd "<jd:ret>") 'company-complete-selection)

(provide 'jd:company-kb)

;; company-filter-map
;; company-mode-map
;; company-search-map
