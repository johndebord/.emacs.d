(define-key global-map (kbd "<C-f>") 'swiper)
(define-key global-map (kbd "<C-S-f>") 'swiper-query-replace)

;;; `swiper-all-map' --- `swiper.el'
(setf (cdr swiper-all-map) nil)

;;; `swiper-map' --- `swiper.el'
(setf (cdr swiper-map) nil)

(provide 'jd:swiper-keybindings.el)
