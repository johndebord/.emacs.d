(setq-default swiper-action-recenter t)

(defun jd:swiper--line ()
  (let* ((beg (cond ((and (eq major-mode 'dired-mode)
                          (bound-and-true-p dired-isearch-filenames))
                     (dired-move-to-filename)
                     (point))
                    (swiper-use-visual-line
                     (save-excursion
                       (beginning-of-visual-line)
                       (point)))
                    (t
                     (point))))
         (end (if swiper-use-visual-line
                  (save-excursion
                    (end-of-visual-line)
                    (point))
                (line-end-position))))
    (concat
     " "
     (buffer-substring-no-properties beg end))))

(advice-add 'swiper--line :override 'jd:swiper--line)

(provide 'jd:swiper-st.el)
