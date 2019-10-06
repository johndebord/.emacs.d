(defvar company-active-map (make-sparse-keymap))
(defvar company-mode-map (make-sparse-keymap))
(defvar company-search-map (make-sparse-keymap))

(setf (cdr company-active-map) nil)
(define-key company-active-map (kbd "<C-f>") 'company-filter-candidates)
(define-key company-active-map (kbd "<C-g>") 'company-abort)
(define-key company-active-map (kbd "<C-h>") 'company-show-doc-buffer)
(define-key company-active-map (kbd "<C-i>") 'company-previous-page)
(define-key company-active-map (kbd "<C-k>") 'company-next-page)
(define-key company-active-map (kbd "<M-h>") 'company-show-location)
(define-key company-active-map (kbd "<M-i>") 'company-select-previous)
(define-key company-active-map (kbd "<M-k>") 'company-select-next)
(define-key company-active-map (kbd "<jd:ret>") 'company-complete-selection)
(define-key company-active-map (kbd "<jd:tab>") 'company-complete-common)
(define-key company-active-map (kbd "<mouse-1>") 'company-complete-mouse)

(setf (cdr company-mode-map) nil)
(define-key company-mode-map (kbd "<jd:tab>") 'company-complete)

(let ((jd:map (make-sparse-keymap)))
  (substitute-key-definition
   'self-insert-command 'self-insert-command jd:map global-map)
  (setf (cdr company-search-map) nil)
  (substitute-key-definition
   'self-insert-command 'self-insert-command company-search-map jd:map)
  (substitute-key-definition
   'self-insert-command 'company-search-printing-char company-search-map)
  (define-key company-search-map (kbd "<C-g>") 'company-search-abort)
  (define-key company-search-map (kbd "<C-h>") 'company-show-doc-buffer)
  (define-key company-search-map (kbd "<C-i>") 'company-previous-page)
  (define-key company-search-map (kbd "<C-k>") 'company-next-page)
  (define-key company-search-map (kbd "<M-h>") 'company-show-location)
  (define-key company-search-map (kbd "<M-i>") 'company-select-previous)
  (define-key company-search-map (kbd "<M-k>") 'company-select-next)
  (define-key company-search-map (kbd "<jd:bks>") 'company-search-delete-char)
  (define-key company-search-map (kbd "<jd:ret>") 'company-complete-selection)
  (define-key company-search-map (kbd "<jd:tab>") 'company-complete-common)
  (define-key company-search-map (kbd "<mouse-1>") 'company-complete-mouse))  

(provide 'jd:company-kb.el)

;; company-filter-map
