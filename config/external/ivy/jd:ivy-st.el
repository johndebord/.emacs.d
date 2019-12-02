(setq-default ivy-count-format "%d/%d ")
(setq-default ivy-extra-directories nil)
(setq-default ivy-format-function 'ivy-format-function-line)
(setq-default ivy-height 15)
(setq-default ivy-recursive-restore nil)

(defun jd:ivy-scroll-up-command ()
  "Set `ivy-height' to an odd number."
  (interactive)
  (if (and
       (< ivy--index (/ ivy-height 2))
       (not (equal ivy--index (/ ivy-height 2))))
      (ivy-set-index (/ ivy-height 2))
    (ivy-set-index (min (1- (+ ivy--index ivy-height))
                        (1- ivy--length)))))

(defun jd:ivy-scroll-down-command ()
  "Set `ivy-height' to an odd number."
  (interactive)
  (if (and
       (> ivy--index (- ivy--length (/ ivy-height 2)))
       (not (equal ivy--index (- ivy--length (/ ivy-height 2)))))
      (ivy-set-index (- ivy--length (/ ivy-height 2)))
    (ivy-set-index (max (1+ (- ivy--index ivy-height))
                        0))))

(provide 'jd:ivy-st)
