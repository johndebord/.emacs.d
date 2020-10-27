;;; Author: John DeBord

(defconst jd:site-lisp-prefix "/Applications/Emacs.app/Contents/Resources/lisp")

(defconst jd:path-prefix
  (concat (getenv "HOME") "/.emacs.d"))

(defconst jd:elc-prefix
  (concat jd:path-prefix "/.elc"))

(defconst jd:global-prefix
  (concat jd:path-prefix "/config/global"))

(defconst jd:external-prefix
  (concat jd:path-prefix "/config/external"))

(defconst jd:internal-prefix
  (concat jd:path-prefix "/config/internal"))

(defconst jd:elpa-prefix
  (concat jd:path-prefix "/config/external/elpa"))

(with-temp-buffer
  (insert-file-contents (concat (getenv "HOME") "/.authinfo"))
  (let* ((line (split-string (buffer-string) "\n"))
         (username (nth 0 line))
         (password (nth 1 line)))
    (defconst jd:irc-nickname username)
    (defconst jd:irc-password password)))

(setq-default package-user-dir jd:elpa-prefix)
(package-initialize)
(setq-default package-archives '(("melpa" . "https://melpa.org/packages/")))

;;; `alloc.c`
(setq-default gc-cons-threshold 64000000)

;;; `buffer.c`
(setq-default default-directory jd:path-prefix)
(setq-default truncate-lines nil)
(setq-default fill-column 80)
(put 'erase-buffer 'disabled nil)

;;; `editfns.c`
(put 'narrow-to-region 'disabled nil)

;;; `fns.c`
(defalias 'yes-or-no-p 'y-or-n-p)

;;; `frame.c`
(setq-default make-pointer-invisible nil)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;; `indent.c`
(setq-default indent-tabs-mode nil)

;;; `keyboard.c`
(setq-default echo-keystrokes 0.001)
(setq-default meta-prefix-char nil)
(setq-default show-help-function nil)

;;; `lread.c`
(setq-default source-directory (concat (getenv "HOME") "/emacs"))

;;; `minibuf.c`
(setq-default enable-recursive-minibuffers t)

;;; `xdisp.c`
(setq-default hscroll-margin 2)
(setq-default hscroll-step 14)
(setq-default x-stretch-cursor 1)

(defmacro jd:load-feature (feature &rest prefixes)
  `(load (concat ,@prefixes (symbol-name ',feature) ".el")))

(defmacro jd:provide-feature (feature)
  `(progn
     (defconst ,feature nil)
     (provide ',feature)))

(defmacro jd:site-source-redef (form)
  form)

(jd:load-feature jd:external-config (concat jd:external-prefix "/"))
(jd:load-feature jd:internal-config (concat jd:internal-prefix "/"))
(jd:load-feature jd:global-config (concat jd:global-prefix "/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(exec-path-from-shell yasnippet rmsbolt idle-highlight-mode gnuplot-mode counsel company-lsp cmake-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((t (:background "#f0f0f0"))))
 '(company-scrollbar-fg ((t (:background "#000000"))))
 '(company-tooltip ((t (:background "#f0f0f0"))))
 '(company-tooltip-annotation ((t (:background "#f0f0f0"))))
 '(company-tooltip-annotation-selection ((t (:background "#d2d2d2"))))
 '(company-tooltip-common ((t (:background "#f0f0f0" :underline (:color "#000000")))))
 '(company-tooltip-common-selection ((t (:background "#d2d2d2" :underline (:color "#000000")))))
 '(company-tooltip-mouse ((t (:background "#d2d2d2" :underline (:color "#000000")))))
 '(company-tooltip-selection ((t (:background "#d2d2d2"))))
 '(highlight ((t (:background "#969696"))))
 '(idle-highlight ((t (:background "#d2d2d2"))))
 '(ivy-current-match ((t (:background "#d2d2d2"))))
 '(ivy-minibuffer-match-face-1 ((t (:underline (:color "#000000")))))
 '(ivy-minibuffer-match-face-2 ((t (:inherit ivy-minibuffer-match-face-1))))
 '(ivy-minibuffer-match-face-3 ((t (:inherit ivy-minibuffer-match-face-1))))
 '(ivy-minibuffer-match-face-4 ((t (:inherit ivy-minibuffer-match-face-1))))
 '(lazy-highlight ((t (:background "#969696"))))
 '(linum ((t (:background "#ffffff" :foreground "#000000"))))
 '(mode-line ((t (:background "#5a5a5a" :foreground "#ffffff"))))
 '(mode-line-inactive ((t (:background "#f0f0f0"))))
 '(query-replace ((t (:background "#969696"))))
 '(reb-match-0 ((t (:background "#969696"))))
 '(region ((t (:background "#969696"))))
 '(show-paren-match ((t (:background "#d2d2d2"))))
 '(show-paren-mismatch ((t (:background "#ff0000"))))
 '(swiper-background-match-face-1 ((t (:background "#cdcd00"))))
 '(swiper-background-match-face-2 ((t (:inherit swiper-background-match-face-1))))
 '(swiper-background-match-face-3 ((t (:inherit swiper-background-match-face-1))))
 '(swiper-background-match-face-4 ((t (:inherit swiper-background-match-face-1))))
 '(swiper-line-face ((t (:background "#d2d2d2"))))
 '(swiper-match-face-1 ((t (:background "#cdcd00"))))
 '(swiper-match-face-2 ((t (:inherit swiper-match-face-1))))
 '(swiper-match-face-3 ((t (:inherit swiper-match-face-1))))
 '(swiper-match-face-4 ((t (:inherit swiper-match-face-1))))
 '(yas--field-debug-face ((t (:background "#d2d2d2"))) t))
