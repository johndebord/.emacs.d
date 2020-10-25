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
(setq-default package-archives '(("gnu" . "http://elpa.gnu.org/packages")
                                 ("melpa" . "https://melpa.org/packages")))

;;; `alloc.c`
(setq-default gc-cons-threshold 64000000)

;;; `buffer.c`
(setq-default default-directory jd:path-prefix)
(setq-default truncate-lines nil)
(setq-default fill-column 80)
(put 'erase-buffer 'disabled nil)

;;; `callproc.c`
(setq-default exec-path
              (list "/home/i/install/bin"
                    "/bin"
                    "/sbin"
                    "/usr/bin"
                    "/usr/sbin"
                    "/usr/local/bin"
                    "/usr/local/sbin"))

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
