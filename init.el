;;;;;;;;;;;;;;;;;;;;;;;
;;; Author: John DeBord

;;;;;;;;
;;; TODO
;;; `process-list'? figure out major mode
;;; `info-emacs-manual' figure out major mode


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'jd:global.el
         "~/.emacs.d/global/jd:global.el")

(require 'jd:emacs-modes.el
         "~/.emacs.d/emacs-modes/jd:emacs-modes.el")
