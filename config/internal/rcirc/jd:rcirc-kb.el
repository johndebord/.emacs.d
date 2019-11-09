(setf (cdr rcirc-mode-map) nil)
(define-key rcirc-mode-map (kbd "<M-u>") 'beginning-of-line)
(define-key rcirc-mode-map (kbd "<C-M-i>")
  (lambda ()
    (interactive "^")
    (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
        (rcirc-insert-prev-input)
      (scroll-down-line 1)
      (forward-line -1))))
(define-key rcirc-mode-map (kbd "<C-M-k>")
  (lambda ()
    (interactive "^")
    (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
        (rcirc-insert-next-input)
      (scroll-down-line -1)
      (forward-line 1))))
(define-key rcirc-mode-map (kbd "<jd:ret>") 'rcirc-send-input)
(define-key rcirc-mode-map (kbd "<jd:tab>") 'rcirc-complete)

(provide 'jd:rcirc-kb.el)

;; rcirc-track-minor-mode-map
;; rcirc-multiline-minor-mode-map
