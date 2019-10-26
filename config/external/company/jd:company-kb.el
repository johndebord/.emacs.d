;; (defun company-next-page ()
;;   (interactive)
;;   (when (company-manual-begin)
;;     (if (and company-selection-wrap-around
;;              (= company-selection (1- company-candidates-length)))
;;         (company-set-selection 0)
;;       (let (company-selection-wrap-around)
;;         (company-set-selection (+ company-selection
;;                                   company-tooltip-limit))))))

;; (defun company-previous-page ()
;;   (interactive)
;;   (when (company-manual-begin)
;;     (if (and company-selection-wrap-around
;;              (zerop company-selection))
;;         (company-set-selection (1- company-candidates-length))
;;       (let (company-selection-wrap-around)
;;         (company-set-selection (- company-selection
;;                                   company-tooltip-limit))))))

;; (define-key company-active-map (kbd "`") 'test)

;; (defun jd:company-beginning-of-candidates ()
;;   (interactive))

;; (defun jd:company-end-of-candidates ()
;;   (interactive))

(setf (cdr company-active-map) nil)
(define-key company-active-map (kbd "<C-g>") 'company-abort)
(define-key company-active-map (kbd "<C-h>") 'jd:company-show-doc-buffer)
(define-key company-active-map (kbd "<C-i>") ' company-previous-page)
(define-key company-active-map (kbd "<C-k>") 'company-next-page)
(define-key company-active-map (kbd "<M-i>") 'company-select-previous)
(define-key company-active-map (kbd "<M-k>") 'company-select-next)
(define-key company-active-map (kbd "<jd:ret>") 'company-complete-selection)

(provide 'jd:company-kb.el)

;; company-filter-map
;; company-mode-map
;; company-search-map
