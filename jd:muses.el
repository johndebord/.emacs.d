;; Window navigation.
;; I've come to the conclusion that it is not as useful as I thought that it may
;; be; possibly useful in the future.
;; (let ((jd:current-window (window-buffer))
;;       (jd:win-pos-mapping (make-hash-table :test 'eq))
;;       (jd:win-pos-list nil))
;;   (walk-windows
;;    (lambda (jd:win)
;;      (puthash jd:win (window-edges jd:win) jd:win-pos-mapping)))
;;   (maphash
;;    (lambda (jd:k jd:v)
;;      (push (list jd:k jd:v) jd:win-pos-list)) jd:win-pos-mapping)
;;   (setq jd:win-pos-list (sort jd:win-pos-list
;;                               (lambda (jd:a jd:b)
;;                                 (< (nth 1 (cadr jd:a)) (nth 1 (cadr jd:b))))))
;;   ;; (select-window (car (car jd:win-pos-list)))
;;   (mapcar
;;    (lambda (jd:car)
;;      (message (format "%s" jd:car))) jd:win-pos-list))
