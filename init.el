;;;;;;;;;;;;;;;;;;;;;;;
;;; Author: John DeBord

;;;;;;;;
;;; TODO
;;; `process-list'? figure out major mode
;;; `info-emacs-manual' figure out major mode

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")))
(package-initialize)

(require 'jd:global.el
         "~/.emacs.d/global/jd:global.el")

(require 'jd:emacs-modes.el
         "~/.emacs.d/emacs-modes/jd:emacs-modes.el")
