;;; `alloc.c'
(setq-default gc-cons-threshold 64000000)

;;; `buffer.c'
(setq-default truncate-lines nil)
(setq-default fill-column 80)

;;; `frame.c'
(setq-default make-pointer-invisible nil)

;;; `indent.c'
(setq-default indent-tabs-mode nil)

;;; `keyboard.c'
(setq-default echo-keystrokes 0.001)
(setq-default show-help-function nil)

;;; `minibuf.c'
(setq-default enable-recursive-minibuffers t)

;;; `xdisp.c'
(setq-default hscroll-margin 2)
(setq-default hscroll-step 14)
(setq-default x-stretch-cursor 1)

(provide 'jd:global-c-src-variables.el)
