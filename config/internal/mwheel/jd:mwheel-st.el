;; Customization variables.
(defvar mouse-wheel-click-event)
(defvar mouse-wheel-down-event)
(defvar mouse-wheel-flip-direction)
(defvar mouse-wheel-follow-mouse)
(defvar mouse-wheel-inhibit-click-time)
(defvar mouse-wheel-progressive-speed)
(defvar mouse-wheel-up-event)

(setq-default mouse-wheel-scroll-amount
              '(1))
(setq-default mouse-wheel-tilt-scroll t)

(provide 'jd:mwheel-st)
