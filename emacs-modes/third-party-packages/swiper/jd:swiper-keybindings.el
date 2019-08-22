(provide 'jd:swiper-keybindings.el)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; More weird Mac keybindings... fix later
(define-key input-decode-map (kbd "s-f")  [\s-\f])
(define-key global-map (kbd "<s-f>") 'swiper)
(define-key global-map (kbd "<C-f>") 'swiper-query-replace)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `swiper-all-map' --- `swiper.el'
(setf (cdr swiper-all-map) nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; `swiper-map' --- `swiper.el'
(setf (cdr swiper-map) nil)
