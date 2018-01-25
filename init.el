;;; .emacs --- John DeBord's custom emacs config

;; Copyright (C) 2018

;; Author:  <i@johndebord.tk>
;; Keywords: init

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;

;;; Code:

(set 'gc-cons-threshold 100000000)

;; Set custom theme and default screen size to max.
(custom-set-variables
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(company-idle-delay 0)
 '(custom-enabled-themes (quote (wheatgrass)))
 '(global-company-mode t)
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

(custom-set-faces
 '(default ((t (:inherit nil :stipple nil :background "#181818" :foreground "#F1F2F3"
                :inverse-video nil :box nil :strike-through nil :overline nil
                :underline nil :slant normal :weight normal :height 128
                :width normal :foundry "DAMA" :family "Ubuntu Mono"))))
 '(company-preview ((t (:background "#F1F2F3"))))
 '(company-preview-common ((t (:foreground "#000000"))))
 '(company-scrollbar-bg ((t (:background "#2D2D2D"))))
 '(company-scrollbar-fg ((t (:background "#F1F2F3"))))
 '(company-tool-tip-common ((t (:background "#4EC9B0"))))
 '(company-tool-tip-common-selection ((t (:background "#4EC9B0"))))
 '(company-tooltip ((t (:background "#4B4B4B"))))
 '(company-tooltip-annotation ((t (:foreground "#4EC9B0"))))
 '(company-tooltip-common ((t (:foreground "#F1F2F3"))))
 '(company-tooltip-selection ((t (:background "#2D2D2D")))))

;; Custom colors primarily for C++ programming.
(set-face-foreground 'default "#F1F2F3") ;; White.
(set-face-foreground 'show-paren-match "#F1F2F3") ;; White.
(set-face-foreground 'font-lock-preprocessor-face "#9B9B9B") ;; Grey.
(set-face-foreground 'font-lock-string-face "#D69D85") ;; Tan.
(set-face-foreground 'font-lock-type-face "#4EC9B0") ;; Light Blue.
(set-face-foreground 'font-lock-constant-face "#F1F2F3") ;; White.
(set-face-foreground 'font-lock-function-name-face "#F1F2F3") ;; White.
(set-face-foreground 'font-lock-variable-name-face "#F1F2F3") ;; White.
(set-face-foreground 'font-lock-keyword-face "#4E9CD6") ;; Blue.

;; Custom colors other.
(set-face-foreground 'vertical-border "#F1F2F3")
(set-face-foreground 'minibuffer-prompt "#4EC9B0")

;; Disable tool bar and scroll bar.
(tool-bar-mode 0)
(toggle-scroll-bar 0)
(blink-cursor-mode 0)

;; Disable the startup screen.
(setq inhibit-startup-screen t)

;; Gets rid of the initial scratch message.
(setq initial-scratch-message "")

;; Set default mode of *scratch* buffer.
;;(setq initial-major-mode 'c++-mode)

;; Disable mini-buffer startup message.
(defun display-startup-echo-area-message ()
  (message ""))

;; Make the echo of keystrokes quicker.
(setq echo-keystrokes 0.1)

;; Line at a time scrolling.
(setq scroll-conservatively 10000
      scroll-preserve-screen-position t)

(defalias 'yes-or-no-p 'y-or-n-p)

;; Make sure to use spaces instead of tabs.
(setq-default indent-tabs-mode nil)

;; Disable menu bar.
(menu-bar-mode 0)

;; Stretch the cursor if over a tab.
(setq x-stretch-cursor t)

;; Show column numbers by default
(setq column-number-mode t)

;; Set C++ style.
;;(setq c-default-style "stroustrup")

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

;; Turn on electric-pair-mode for auto closing brackets.
(electric-pair-mode 1)

;; Set default tabs for 4 spaces.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; Packages.

;; Package list(s).
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;;(use-package flycheck
;;  :ensure t
;;  :init
;;  (global-flycheck-mode)
;;  (setq flycheck-clang-language-standard "c++11"))


;;(require 'flycheck)
;;(flycheck-mode)
;;(add-hook 'c++-mode-hook
;;         (lambda () (setq flycheck-clang-language-standard "c++11")))

;;(eval-after-load 'flycheck
;;  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))


;;(add-hook 'after-init-hook 'global-company-mode)

;;(add-hook 'c++-mode-hook 'irony-mode)

;;(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ivy config
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'ivy)
(ivy-mode t)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(setq ivy-wrap t)
;;(global-set-key (kbd "C-c C-r") 'ivy-resume)

(require 'swiper)
;;(global-set-key "\C-s" 'swiper)
;;(global-set-key "\C-r" 'swiper)

(require 'counsel)
(global-set-key (kbd "M-x") 'counsel-M-x)
;;(global-set-key (kbd "C-x C-f") 'counsel-find-file)
;;(global-set-key (kbd "<f1> f") 'counsel-describe-function)
;;(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
;;(global-set-key (kbd "<f1> l") 'counsel-find-library)
;;(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
;;(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
;;(global-set-key (kbd "C-c g") 'counsel-git-grep)
;;(global-set-key (kbd "C-c j") 'counsel-git)
;;(global-set-key (kbd "C-c k") 'counsel-ag)
;;(global-set-key (kbd "C-x l") 'counsel-locate)
;;(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-add)

;; Show #/total when scrolling buffers
(setq ivy-use-virtual-buffers t ivy-count-format "%d/%d ")

;; Use universal ctags to build the tags database for the project.
;; When you first want to build a TAGS database run 'touch TAGS'
;; in the root directory of your project.
(require 'counsel-etags)
;; Ignore files above 800kb
(setq counsel-etags-max-file-size 800)
;; Ignore build directories for tagging
(add-to-list 'counsel-etags-ignore-directories '"build*")
(add-to-list 'counsel-etags-ignore-directories '".vscode")
(add-to-list 'counsel-etags-ignore-filenames '".clang-format")
;; Don't ask before rereading the TAGS files if they have changed
(setq tags-revert-without-query t)
;; Don't warn when TAGS files are large
(setq large-file-warning-threshold nil)
;; How many seconds to wait before rerunning tags for auto-update
(setq counsel-etags-update-interval 180)
;; Set up auto-update
(add-hook
 'prog-mode-hook
 (lambda () (add-hook
             'after-save-hook
             (lambda ()
               (counsel-etags-virtual-update-tags))))
 )
;; Set up keyboard shortcuts to make easier to use
;;(global-set-key (kbd "M-.") 'counsel-etags-find-tag-at-point)
;;(global-set-key (kbd "M-t") 'counsel-etags-grep-symbol-at-point)
;;(global-set-key (kbd "M-s") 'counsel-etags-find-tag)

;; The function provided by counsel-etags is broken (at least on Linux)
;; and doesn't correctly exclude directories, leading to an excessive
;; amount of incorrect tags. The issue seems to be that the trailing '/'
;; in e.g. '*dirname/*' causes 'find' to not correctly exclude all files
;; in that directory, only files in sub-directories of the dir set to be
;; ignore.
(defun my-scan-dir (src-dir &optional force)
  "Create tags file from SRC-DIR.
If FORCE is t, the commmand is executed without checking the timer."
  (let* ((find-pg (or counsel-etags-find-program (counsel-etags-guess-program "find")))
         (ctags-pg (or counsel-etags-tags-program (format "%s -e -L" (counsel-etags-guess-program "ctags"))))
         (default-directory src-dir)
         ;; run find&ctags to create TAGS
         (cmd (format "%s . \\( %s \\) -prune -o -type f -not -size +%sk %s | %s -"
                      find-pg
                      (mapconcat
                       (lambda (p)
                         (format "-iwholename \"*%s*\"" p))
                       counsel-etags-ignore-directories " -or ")
                      counsel-etags-max-file-size
                      (mapconcat (lambda (n)
                                   (format "-not -name \"%s\"" n))
                                 counsel-etags-ignore-filenames " ")
                      ctags-pg))
         (tags-file (concat (file-name-as-directory src-dir) "TAGS"))
         (doit (or force (not (file-exists-p tags-file)))))
    ;; always update cli options
    (when doit
      (message "%s at %s" cmd default-directory)
      (shell-command cmd)
      (visit-tags-table tags-file t)
      )
    )
  )

(setq counsel-etags-update-tags-backend
      (lambda ()
        (interactive)
        (let* ((tags-file (counsel-etags-locate-tags-file)))
          (when tags-file
            (my-scan-dir (file-name-directory tags-file) t)
            (run-hook-with-args 'counsel-etags-after-update-tags-hook tags-file)
            (unless counsel-etags-quiet-when-updating-tags
              (message "%s is updated!" tags-file))))
        )
      )

;; Clang-format.
(require 'clang-format)
(global-set-key (kbd "C-c C-f") 'clang-format-region)

;; Modern C++ highlighting.
(require 'modern-cpp-font-lock)
(modern-c++-font-lock-global-mode t)

;; We want to be able to see if there is a tab character vs a space.
;; global-whitespace-mode allows us to do just that.
;; Set whitespace mode to only show tabs, not newlines/spaces.
(require 'whitespace)
(setq whitespace-style '(tabs tab-mark))
;; Turn on whitespace mode globally.
(global-whitespace-mode 1)

;; Enable Google style things
;; This prevents the extra two spaces in a namespace that Emacs
;; otherwise wants to put... Gawd!
(add-hook 'c-mode-common-hook 'google-set-c-style)

;; Autoindent using google style guide
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; Enable hide/show of code blocks
(add-hook 'c-mode-common-hook 'hs-minor-mode)

;; ycmd (YouCompleteMeDaemon)
;; Set up YouCompleteMe for emacs:
;; https://github.com/Valloric/ycmd
;; https://github.com/abingham/emacs-ycmd
;;;(require 'ycmd)
;;;(add-hook 'after-init-hook #'global-ycmd-mode)

;;;(set-variable 'ycmd-server-command '("python" "/home/i/ycmd/ycmd"))

;;;(set-variable 'ycmd-extra-conf-whitelist '("~/.ycm_extra_conf.py"))

;;;(set-variable 'ycmd-global-config "~/.ycm_extra_conf.py")

;;;(setq ycmd-force-semantic-completion t)

;; company
;;;(require 'company)

;; Zero delay when pressing tab
;;;(setq company-idle-delay 0)

;; remove unused backends
;;;(setq company-backends (delete 'company-semantic company-backends))
;;;(setq company-backends (delete 'company-eclim company-backends))
;;;(setq company-backends (delete 'company-xcode company-backends))
;;;(setq company-backends (delete 'company-clang company-backends))
;;;(setq company-backends (delete 'company-bbdb company-backends))
;;;(setq company-backends (delete 'company-oddmuse company-backends))

;;;(add-hook 'after-init-hook 'global-company-mode)

;;;(require 'company-ycmd)
;;;(company-ycmd-setup)

;; flycheck
;; Note: For C++ we use flycheck-ycmd
;;;(require 'flycheck)
;; Turn flycheck on everywhere
;;;(global-flycheck-mode)
;; There are issues with company mode and flycheck in terminal mode.
;; This is outlined at:
;; https://github.com/abingham/emacs-ycmd
;;;(when (not (display-graphic-p))
;;;  (setq flycheck-indication-mode nil))

;;;(require 'flycheck-ycmd)
;;;(flycheck-ycmd-setup)

;; yasnippet
(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets" ;; personal snippets
        "~/.emacs.d/yasnippet-snippets/snippets/" ;; foo-mode and bar-mode snippet collection
        ))
(require 'yasnippet)
(yas-global-mode 1)

;; Javascript server.
(require 'simple-httpd)
;; set root folder for httpd server
(setq httpd-root "/home/i/javascript")


;; Yeah, does what it says.
(defun select-current-line ()
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position)))

;; Reformats code to my liking.
;;(defun reformat ()
;;  (interactive)
;;  (mark-whole-buffer)
;;  (untabify)
;;  (indent-region))

;; Company complete with tab.
;;(defun indent-or-complete ()
;;    (interactive)
;;    (if (looking-at "\\_>")
;;        (company-complete-common)
;;      (indent-according-to-mode)))

;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;
;;-------------------------KEYBINDINGS-----------------------------;;
;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;

(require 'bind-key)

(define-key input-decode-map [?\C-i] (kbd "<C-i>"))
(define-key input-decode-map [?\C-\S-i] (kbd "<C-S-i>"))
(define-key input-decode-map [?\C-m] (kbd "<C-m>"))

;;-----------------------------------------------------------------;;
;;-------------------------UNBOUND KEYS----------------------------;;
;;-----------------------------------------------------------------;;

;; Numbers And Symbols
(bind-key* "C-`" 'ignore)
(bind-key* "C-1" 'ignore)
(bind-key* "C-2" 'ignore)
(bind-key* "C-3" 'ignore)
(bind-key* "C-4" 'ignore)
(bind-key* "C-5" 'ignore)
(bind-key* "C-6" 'ignore)
(bind-key* "C-7" 'ignore)
(bind-key* "C-8" 'ignore)
(bind-key* "C-9" 'ignore)
(bind-key* "C-0" 'ignore)
(bind-key* "C--" 'ignore)
(bind-key* "C-=" 'ignore)

(bind-key* "C-~" 'ignore)
(bind-key* "C-!" 'ignore)
(bind-key* "C-@" 'ignore)
(bind-key* "C-#" 'ignore)
(bind-key* "C-$" 'ignore)
(bind-key* "C-%" 'ignore)
(bind-key* "C-^" 'ignore)
(bind-key* "C-&" 'ignore)
(bind-key* "C-*" 'ignore)
(bind-key* "C-(" 'ignore)
(bind-key* "C-)" 'ignore)
(bind-key* "C-_" 'ignore)
(bind-key* "C-+" 'ignore)

(bind-key* "M-`" 'ignore)
(bind-key* "M-1" 'ignore)
(bind-key* "M-2" 'ignore)
(bind-key* "M-3" 'ignore)
(bind-key* "M-4" 'ignore)
(bind-key* "M-5" 'ignore)
(bind-key* "M-6" 'ignore)
(bind-key* "M-7" 'ignore)
(bind-key* "M-8" 'ignore)
(bind-key* "M-9" 'ignore)
(bind-key* "M-0" 'ignore)
(bind-key* "M--" 'ignore)
(bind-key* "M-=" 'ignore)

(bind-key* "M-~" 'ignore)
(bind-key* "M-!" 'ignore)
(bind-key* "M-@" 'ignore)
(bind-key* "M-#" 'ignore)
(bind-key* "M-$" 'ignore)
(bind-key* "M-%" 'ignore)
(bind-key* "M-^" 'ignore)
(bind-key* "M-&" 'ignore)
(bind-key* "M-*" 'ignore)
(bind-key* "M-(" 'ignore)
(bind-key* "M-)" 'ignore)
(bind-key* "M-_" 'ignore)
(bind-key* "M-+" 'ignore)

(bind-key* "C-M-`" 'ignore)
(bind-key* "C-M-1" 'ignore)
(bind-key* "C-M-2" 'ignore)
(bind-key* "C-M-3" 'ignore)
(bind-key* "C-M-4" 'ignore)
(bind-key* "C-M-5" 'ignore)
(bind-key* "C-M-6" 'ignore)
(bind-key* "C-M-7" 'ignore)
(bind-key* "C-M-8" 'ignore)
(bind-key* "C-M-9" 'ignore)
(bind-key* "C-M-0" 'ignore)
(bind-key* "C-M--" 'ignore)
(bind-key* "C-M-=" 'ignore)

(bind-key* "C-M-~" 'ignore)
(bind-key* "C-M-!" 'ignore)
(bind-key* "C-M-@" 'ignore)
(bind-key* "C-M-#" 'ignore)
(bind-key* "C-M-$" 'ignore)
(bind-key* "C-M-%" 'ignore)
(bind-key* "C-M-^" 'ignore)
(bind-key* "C-M-&" 'ignore)
(bind-key* "C-M-*" 'ignore)
(bind-key* "C-M-(" 'ignore)
(bind-key* "C-M-)" 'ignore)
(bind-key* "C-M-_" 'ignore)
(bind-key* "C-M-+" 'ignore)
;; End Numbers And Symbols

;; Letters And Symbols
(bind-key* "C-a" 'ignore)
(bind-key* "C-b" 'ignore)
(bind-key* "C-d" 'ignore)
(bind-key* "C-e" 'ignore)
(bind-key* "C-f" 'ignore)
(bind-key* "C-g" 'ignore)
(bind-key* "C-h" 'ignore)
(bind-key* "C-k" 'ignore)
(bind-key* "C-n" 'ignore)
(bind-key* "C-o" 'ignore)
(bind-key* "C-p" 'ignore)
(bind-key* "C-q" 'ignore)
(bind-key* "C-r" 'ignore)
(bind-key* "C-s" 'ignore)
(bind-key* "C-t" 'ignore)
(bind-key* "C-u" 'ignore)
(bind-key* "C-v" 'ignore)
(bind-key* "C-w" 'ignore)
(bind-key* "C-y" 'ignore)
(bind-key* "C-z" 'ignore)
(bind-key* "C-]" 'ignore)
(bind-key* "C-\\" 'ignore)
(bind-key* "C-;" 'ignore)
(bind-key* "C-'" 'ignore)
(bind-key* "C-," 'ignore)
(bind-key* "C-." 'ignore)
(bind-key* "C-/" 'ignore)

(bind-key* "C-A" 'ignore)
(bind-key* "C-B" 'ignore)
(bind-key* "C-D" 'ignore)
(bind-key* "C-E" 'ignore)
(bind-key* "C-F" 'ignore)
(bind-key* "C-G" 'ignore)
(bind-key* "C-H" 'ignore)
(bind-key* "C-K" 'ignore)
(bind-key* "C-N" 'ignore)
(bind-key* "C-O" 'ignore)
(bind-key* "C-P" 'ignore)
(bind-key* "C-Q" 'ignore)
(bind-key* "C-R" 'ignore)
(bind-key* "C-S" 'ignore)
(bind-key* "C-T" 'ignore)
(bind-key* "C-U" 'ignore)
(bind-key* "C-V" 'ignore)
(bind-key* "C-W" 'ignore)
(bind-key* "C-Y" 'ignore)
(bind-key* "C-Z" 'ignore)
(bind-key* "C-{" 'ignore)
(bind-key* "C-}" 'ignore)
(bind-key* "C-|" 'ignore)
(bind-key* "C-:" 'ignore)
(bind-key* "C-\"" 'ignore)
(bind-key* "C-<" 'ignore)
(bind-key* "C->" 'ignore)
(bind-key* "C-?" 'ignore)

(bind-key* "M-a" 'ignore)
(bind-key* "M-b" 'ignore)
(bind-key* "M-c" 'ignore)
(bind-key* "M-d" 'ignore)
(bind-key* "M-e" 'ignore)
(bind-key* "M-f" 'ignore)
(bind-key* "M-g" 'ignore)
(bind-key* "M-h" 'ignore)
(bind-key* "M-i" 'ignore)
(bind-key* "M-j" 'ignore)
(bind-key* "M-k" 'ignore)
(bind-key* "M-l" 'ignore)
(bind-key* "M-m" 'ignore)
(bind-key* "M-n" 'ignore)
(bind-key* "M-o" 'ignore)
(bind-key* "M-p" 'ignore)
(bind-key* "M-q" 'ignore)
(bind-key* "M-r" 'ignore)
(bind-key* "M-s" 'ignore)
(bind-key* "M-t" 'ignore)
(bind-key* "M-u" 'ignore)
(bind-key* "M-v" 'ignore)
(bind-key* "M-w" 'ignore)
(bind-key* "M-y" 'ignore)
(bind-key* "M-z" 'ignore)
(bind-key* "M-[" 'ignore)
(bind-key* "M-]" 'ignore)
(bind-key* "M-\\" 'ignore)
(bind-key* "M-;" 'ignore)
(bind-key* "M-'" 'ignore)
(bind-key* "M-," 'ignore)
(bind-key* "M-." 'ignore)
(bind-key* "M-/" 'ignore)

(bind-key* "M-A" 'ignore)
(bind-key* "M-B" 'ignore)
(bind-key* "M-C" 'ignore)
(bind-key* "M-D" 'ignore)
(bind-key* "M-E" 'ignore)
(bind-key* "M-F" 'ignore)
(bind-key* "M-G" 'ignore)
(bind-key* "M-H" 'ignore)
(bind-key* "M-M" 'ignore)
(bind-key* "M-N" 'ignore)
(bind-key* "M-P" 'ignore)
(bind-key* "M-Q" 'ignore)
(bind-key* "M-R" 'ignore)
(bind-key* "M-S" 'ignore)
(bind-key* "M-T" 'ignore)
(bind-key* "M-V" 'ignore)
(bind-key* "M-W" 'ignore)
(bind-key* "M-Y" 'ignore)
(bind-key* "M-Z" 'ignore)
(bind-key* "M-{" 'ignore)
(bind-key* "M-}" 'ignore)
(bind-key* "M-|" 'ignore)
(bind-key* "M-:" 'ignore)
(bind-key* "M-\"" 'ignore)
(bind-key* "M-<" 'ignore)
(bind-key* "M->" 'ignore)
(bind-key* "M-?" 'ignore)

(bind-key* "C-M-a" 'ignore)
(bind-key* "C-M-b" 'ignore)
(bind-key* "C-M-c" 'ignore)
(bind-key* "C-M-d" 'ignore)
(bind-key* "C-M-e" 'ignore)
(bind-key* "C-M-f" 'ignore)
(bind-key* "C-M-g" 'ignore)
(bind-key* "C-M-h" 'ignore)
(bind-key* "C-M-i" 'ignore)
(bind-key* "C-M-j" 'ignore)
(bind-key* "C-M-k" 'ignore)
(bind-key* "C-M-l" 'ignore)
(bind-key* "C-M-m" 'ignore)
(bind-key* "C-M-n" 'ignore)
(bind-key* "C-M-o" 'ignore)
(bind-key* "C-M-p" 'ignore)
(bind-key* "C-M-q" 'ignore)
(bind-key* "C-M-r" 'ignore)
(bind-key* "C-M-s" 'ignore)
(bind-key* "C-M-t" 'ignore)
(bind-key* "C-M-u" 'ignore)
(bind-key* "C-M-v" 'ignore)
(bind-key* "C-M-w" 'ignore)
(bind-key* "C-M-x" 'ignore)
(bind-key* "C-M-y" 'ignore)
(bind-key* "C-M-z" 'ignore)
(bind-key* "C-M-[" 'ignore)
(bind-key* "C-M-]" 'ignore)
(bind-key* "C-M-\\" 'ignore)
(bind-key* "C-M-;" 'ignore)
(bind-key* "C-M-'" 'ignore)
(bind-key* "C-M-," 'ignore)
(bind-key* "C-M-." 'ignore)
(bind-key* "C-M-/" 'ignore)

(bind-key* "C-M-A" 'ignore)
(bind-key* "C-M-B" 'ignore)
(bind-key* "C-M-C" 'ignore)
(bind-key* "C-M-D" 'ignore)
(bind-key* "C-M-E" 'ignore)
(bind-key* "C-M-F" 'ignore)
(bind-key* "C-M-G" 'ignore)
(bind-key* "C-M-H" 'ignore)
(bind-key* "C-M-I" 'ignore)
(bind-key* "C-M-J" 'ignore)
(bind-key* "C-M-K" 'ignore)
(bind-key* "C-M-L" 'ignore)
(bind-key* "C-M-M" 'ignore)
(bind-key* "C-M-N" 'ignore)
(bind-key* "C-M-O" 'ignore)
(bind-key* "C-M-P" 'ignore)
(bind-key* "C-M-Q" 'ignore)
(bind-key* "C-M-R" 'ignore)
(bind-key* "C-M-S" 'ignore)
(bind-key* "C-M-T" 'ignore)
(bind-key* "C-M-U" 'ignore)
(bind-key* "C-M-V" 'ignore)
(bind-key* "C-M-W" 'ignore)
(bind-key* "C-M-X" 'ignore)
(bind-key* "C-M-Y" 'ignore)
(bind-key* "C-M-Z" 'ignore)
(bind-key* "C-M-{" 'ignore)
(bind-key* "C-M-}" 'ignore)
(bind-key* "C-M-|" 'ignore)
(bind-key* "C-M-:" 'ignore)
(bind-key* "C-M-\"" 'ignore)
(bind-key* "C-M-<" 'ignore)
(bind-key* "C-M->" 'ignore)
(bind-key* "C-M-?" 'ignore)
;; End Letters And Symbols

;; Numbers And Symbols With C-x Prefix
(bind-key* "C-x `" 'ignore)
(bind-key* "C-x 1" 'ignore)
(bind-key* "C-x 2" 'ignore)
(bind-key* "C-x 3" 'ignore)
(bind-key* "C-x 4" 'ignore)
(bind-key* "C-x 5" 'ignore)
(bind-key* "C-x 6" 'ignore)
(bind-key* "C-x 7" 'ignore)
(bind-key* "C-x 8" 'ignore)
(bind-key* "C-x 9" 'ignore)
(bind-key* "C-x 0" 'ignore)
(bind-key* "C-x -" 'ignore)
(bind-key* "C-x =" 'ignore)

(bind-key* "C-x ~" 'ignore)
(bind-key* "C-x !" 'ignore)
(bind-key* "C-x @" 'ignore)
(bind-key* "C-x #" 'ignore)
(bind-key* "C-x $" 'ignore)
(bind-key* "C-x %" 'ignore)
(bind-key* "C-x ^" 'ignore)
(bind-key* "C-x &" 'ignore)
(bind-key* "C-x *" 'ignore)
(bind-key* "C-x (" 'ignore)
(bind-key* "C-x )" 'ignore)
(bind-key* "C-x _" 'ignore)
(bind-key* "C-x +" 'ignore)

(bind-key* "C-x C-`" 'ignore)
(bind-key* "C-x C-1" 'ignore)
(bind-key* "C-x C-2" 'ignore)
(bind-key* "C-x C-3" 'ignore)
(bind-key* "C-x C-4" 'ignore)
(bind-key* "C-x C-5" 'ignore)
(bind-key* "C-x C-6" 'ignore)
(bind-key* "C-x C-7" 'ignore)
(bind-key* "C-x C-8" 'ignore)
(bind-key* "C-x C-9" 'ignore)
(bind-key* "C-x C-0" 'ignore)
(bind-key* "C-x C--" 'ignore)
(bind-key* "C-x C-=" 'ignore)

(bind-key* "C-x C-~" 'ignore)
(bind-key* "C-x C-!" 'ignore)
(bind-key* "C-x C-@" 'ignore)
(bind-key* "C-x C-#" 'ignore)
(bind-key* "C-x C-$" 'ignore)
(bind-key* "C-x C-%" 'ignore)
(bind-key* "C-x C-^" 'ignore)
(bind-key* "C-x C-&" 'ignore)
(bind-key* "C-x C-*" 'ignore)
(bind-key* "C-x C-(" 'ignore)
(bind-key* "C-x C-)" 'ignore)
(bind-key* "C-x C-_" 'ignore)
(bind-key* "C-x C-+" 'ignore)

(bind-key* "C-x M-`" 'ignore)
(bind-key* "C-x M-1" 'ignore)
(bind-key* "C-x M-2" 'ignore)
(bind-key* "C-x M-3" 'ignore)
(bind-key* "C-x M-4" 'ignore)
(bind-key* "C-x M-5" 'ignore)
(bind-key* "C-x M-6" 'ignore)
(bind-key* "C-x M-7" 'ignore)
(bind-key* "C-x M-8" 'ignore)
(bind-key* "C-x M-9" 'ignore)
(bind-key* "C-x M-0" 'ignore)
(bind-key* "C-x M--" 'ignore)
(bind-key* "C-x M-=" 'ignore)

(bind-key* "C-x M-~" 'ignore)
(bind-key* "C-x M-!" 'ignore)
(bind-key* "C-x M-@" 'ignore)
(bind-key* "C-x M-#" 'ignore)
(bind-key* "C-x M-$" 'ignore)
(bind-key* "C-x M-%" 'ignore)
(bind-key* "C-x M-^" 'ignore)
(bind-key* "C-x M-&" 'ignore)
(bind-key* "C-x M-*" 'ignore)
(bind-key* "C-x M-(" 'ignore)
(bind-key* "C-x M-)" 'ignore)
(bind-key* "C-x M-_" 'ignore)
(bind-key* "C-x M-+" 'ignore)

(bind-key* "C-x C-M-`" 'ignore)
(bind-key* "C-x C-M-1" 'ignore)
(bind-key* "C-x C-M-2" 'ignore)
(bind-key* "C-x C-M-3" 'ignore)
(bind-key* "C-x C-M-4" 'ignore)
(bind-key* "C-x C-M-5" 'ignore)
(bind-key* "C-x C-M-6" 'ignore)
(bind-key* "C-x C-M-7" 'ignore)
(bind-key* "C-x C-M-8" 'ignore)
(bind-key* "C-x C-M-9" 'ignore)
(bind-key* "C-x C-M-0" 'ignore)
(bind-key* "C-x C-M--" 'ignore)
(bind-key* "C-x C-M-=" 'ignore)

(bind-key* "C-x C-M-~" 'ignore)
(bind-key* "C-x C-M-!" 'ignore)
(bind-key* "C-x C-M-@" 'ignore)
(bind-key* "C-x C-M-#" 'ignore)
(bind-key* "C-x C-M-$" 'ignore)
(bind-key* "C-x C-M-%" 'ignore)
(bind-key* "C-x C-M-^" 'ignore)
(bind-key* "C-x C-M-&" 'ignore)
(bind-key* "C-x C-M-*" 'ignore)
(bind-key* "C-x C-M-(" 'ignore)
(bind-key* "C-x C-M-)" 'ignore)
(bind-key* "C-x C-M-_" 'ignore)
(bind-key* "C-x C-M-+" 'ignore)
;; End Numbers And Symbols With C-x Prefix

;; Letters And Symbols With C-x Prefix
(bind-key* "C-x a" 'ignore)
(bind-key* "C-x b" 'ignore)
(bind-key* "C-x c" 'ignore)
(bind-key* "C-x d" 'ignore)
(bind-key* "C-x e" 'ignore)
(bind-key* "C-x f" 'ignore)
(bind-key* "C-x g" 'ignore)
(bind-key* "C-x h" 'ignore)
(bind-key* "C-x i" 'ignore)
(bind-key* "C-x j" 'ignore)
(bind-key* "C-x k" 'ignore)
(bind-key* "C-x l" 'ignore)
(bind-key* "C-x m" 'ignore)
(bind-key* "C-x n" 'ignore)
(bind-key* "C-x o" 'ignore)
(bind-key* "C-x p" 'ignore)
(bind-key* "C-x q" 'ignore)
(bind-key* "C-x r" 'ignore)
(bind-key* "C-x s" 'ignore)
(bind-key* "C-x t" 'ignore)
(bind-key* "C-x u" 'ignore)
(bind-key* "C-x v" 'ignore)
(bind-key* "C-x w" 'ignore)
(bind-key* "C-x x" 'ignore)
(bind-key* "C-x y" 'ignore)
(bind-key* "C-x z" 'ignore)
(bind-key* "C-x [" 'ignore)
(bind-key* "C-x ]" 'ignore)
(bind-key* "C-x \\" 'ignore)
(bind-key* "C-x ;" 'ignore)
(bind-key* "C-x '" 'ignore)
(bind-key* "C-x ," 'ignore)
(bind-key* "C-x ." 'ignore)
(bind-key* "C-x /" 'ignore)

(bind-key* "C-x A" 'ignore)
(bind-key* "C-x B" 'ignore)
(bind-key* "C-x C" 'ignore)
(bind-key* "C-x D" 'ignore)
(bind-key* "C-x E" 'ignore)
(bind-key* "C-x F" 'ignore)
(bind-key* "C-x G" 'ignore)
(bind-key* "C-x H" 'ignore)
(bind-key* "C-x I" 'ignore)
(bind-key* "C-x J" 'ignore)
(bind-key* "C-x K" 'ignore)
(bind-key* "C-x L" 'ignore)
(bind-key* "C-x M" 'ignore)
(bind-key* "C-x N" 'ignore)
(bind-key* "C-x O" 'ignore)
(bind-key* "C-x P" 'ignore)
(bind-key* "C-x Q" 'ignore)
(bind-key* "C-x R" 'ignore)
(bind-key* "C-x S" 'ignore)
(bind-key* "C-x T" 'ignore)
(bind-key* "C-x U" 'ignore)
(bind-key* "C-x V" 'ignore)
(bind-key* "C-x W" 'ignore)
(bind-key* "C-x X" 'ignore)
(bind-key* "C-x Y" 'ignore)
(bind-key* "C-x Z" 'ignore)
(bind-key* "C-x {" 'ignore)
(bind-key* "C-x }" 'ignore)
(bind-key* "C-x |" 'ignore)
(bind-key* "C-x :" 'ignore)
(bind-key* "C-x \"" 'ignore)
(bind-key* "C-x <" 'ignore)
(bind-key* "C-x >" 'ignore)
(bind-key* "C-x ?" 'ignore)

(bind-key* "C-x C-a" 'ignore)
(bind-key* "C-x C-b" 'ignore)
(bind-key* "C-x C-c" 'ignore)
(bind-key* "C-x C-d" 'ignore)
(bind-key* "C-x C-e" 'ignore)
(bind-key* "C-x C-f" 'ignore)
(bind-key* "C-x C-g" 'ignore)
(bind-key* "C-x C-h" 'ignore)
(bind-key* "C-x C-i" 'ignore)
(bind-key* "C-x C-j" 'ignore)
;;(bind-key* "C-x C-k" 'ignore)
(bind-key* "C-x C-l" 'ignore)
(bind-key* "C-x C-m" 'ignore)
(bind-key* "C-x C-n" 'ignore)
(bind-key* "C-x C-o" 'ignore)
(bind-key* "C-x C-p" 'ignore)
(bind-key* "C-x C-q" 'ignore)
(bind-key* "C-x C-r" 'ignore)
(bind-key* "C-x C-s" 'ignore)
(bind-key* "C-x C-t" 'ignore)
(bind-key* "C-x C-u" 'ignore)
(bind-key* "C-x C-v" 'ignore)
(bind-key* "C-x C-w" 'ignore)
(bind-key* "C-x C-x" 'ignore)
(bind-key* "C-x C-y" 'ignore)
(bind-key* "C-x C-z" 'ignore)
(bind-key* "C-x C-]" 'ignore)
(bind-key* "C-x C-\\" 'ignore)
(bind-key* "C-x C-;" 'ignore)
(bind-key* "C-x C-'" 'ignore)
(bind-key* "C-x C-," 'ignore)
(bind-key* "C-x C-." 'ignore)
(bind-key* "C-x C-/" 'ignore)

(bind-key* "C-x C-A" 'ignore)
(bind-key* "C-x C-B" 'ignore)
(bind-key* "C-x C-C" 'ignore)
(bind-key* "C-x C-D" 'ignore)
(bind-key* "C-x C-E" 'ignore)
(bind-key* "C-x C-F" 'ignore)
(bind-key* "C-x C-G" 'ignore)
(bind-key* "C-x C-H" 'ignore)
(bind-key* "C-x C-I" 'ignore)
(bind-key* "C-x C-J" 'ignore)
(bind-key* "C-x C-K" 'ignore)
(bind-key* "C-x C-L" 'ignore)
(bind-key* "C-x C-M" 'ignore)
(bind-key* "C-x C-N" 'ignore)
(bind-key* "C-x C-O" 'ignore)
(bind-key* "C-x C-P" 'ignore)
(bind-key* "C-x C-Q" 'ignore)
(bind-key* "C-x C-R" 'ignore)
(bind-key* "C-x C-S" 'ignore)
(bind-key* "C-x C-T" 'ignore)
(bind-key* "C-x C-U" 'ignore)
(bind-key* "C-x C-V" 'ignore)
(bind-key* "C-x C-W" 'ignore)
(bind-key* "C-x C-X" 'ignore)
(bind-key* "C-x C-Y" 'ignore)
(bind-key* "C-x C-Z" 'ignore)
(bind-key* "C-x C-{" 'ignore)
(bind-key* "C-x C-}" 'ignore)
(bind-key* "C-x C-|" 'ignore)
(bind-key* "C-x C-:" 'ignore)
(bind-key* "C-x C-\"" 'ignore)
(bind-key* "C-x C-<" 'ignore)
(bind-key* "C-x C->" 'ignore)
(bind-key* "C-x C-?" 'ignore)

(bind-key* "C-x M-a" 'ignore)
(bind-key* "C-x M-b" 'ignore)
(bind-key* "C-x M-c" 'ignore)
(bind-key* "C-x M-d" 'ignore)
(bind-key* "C-x M-e" 'ignore)
(bind-key* "C-x M-f" 'ignore)
(bind-key* "C-x M-g" 'ignore)
(bind-key* "C-x M-h" 'ignore)
(bind-key* "C-x M-i" 'ignore)
(bind-key* "C-x M-j" 'ignore)
(bind-key* "C-x M-k" 'ignore)
(bind-key* "C-x M-l" 'ignore)
(bind-key* "C-x M-m" 'ignore)
(bind-key* "C-x M-n" 'ignore)
(bind-key* "C-x M-o" 'ignore)
(bind-key* "C-x M-p" 'ignore)
(bind-key* "C-x M-q" 'ignore)
(bind-key* "C-x M-r" 'ignore)
(bind-key* "C-x M-s" 'ignore)
(bind-key* "C-x M-t" 'ignore)
(bind-key* "C-x M-u" 'ignore)
(bind-key* "C-x M-v" 'ignore)
(bind-key* "C-x M-w" 'ignore)
(bind-key* "C-x M-x" 'ignore)
(bind-key* "C-x M-y" 'ignore)
(bind-key* "C-x M-z" 'ignore)
(bind-key* "C-x M-[" 'ignore)
(bind-key* "C-x M-]" 'ignore)
(bind-key* "C-x M-\\" 'ignore)
(bind-key* "C-x M-;" 'ignore)
(bind-key* "C-x M-'" 'ignore)
(bind-key* "C-x M-," 'ignore)
(bind-key* "C-x M-." 'ignore)
(bind-key* "C-x M-/" 'ignore)

(bind-key* "C-x M-A" 'ignore)
(bind-key* "C-x M-B" 'ignore)
(bind-key* "C-x M-C" 'ignore)
(bind-key* "C-x M-D" 'ignore)
(bind-key* "C-x M-E" 'ignore)
(bind-key* "C-x M-F" 'ignore)
(bind-key* "C-x M-G" 'ignore)
(bind-key* "C-x M-H" 'ignore)
(bind-key* "C-x M-I" 'ignore)
(bind-key* "C-x M-J" 'ignore)
(bind-key* "C-x M-K" 'ignore)
(bind-key* "C-x M-L" 'ignore)
(bind-key* "C-x M-M" 'ignore)
(bind-key* "C-x M-N" 'ignore)
(bind-key* "C-x M-O" 'ignore)
(bind-key* "C-x M-P" 'ignore)
(bind-key* "C-x M-Q" 'ignore)
(bind-key* "C-x M-R" 'ignore)
(bind-key* "C-x M-S" 'ignore)
(bind-key* "C-x M-T" 'ignore)
(bind-key* "C-x M-U" 'ignore)
(bind-key* "C-x M-V" 'ignore)
(bind-key* "C-x M-W" 'ignore)
(bind-key* "C-x M-X" 'ignore)
(bind-key* "C-x M-Y" 'ignore)
(bind-key* "C-x M-Z" 'ignore)
(bind-key* "C-x M-{" 'ignore)
(bind-key* "C-x M-}" 'ignore)
(bind-key* "C-x M-|" 'ignore)
(bind-key* "C-x M-:" 'ignore)
(bind-key* "C-x M-\"" 'ignore)
(bind-key* "C-x M-<" 'ignore)
(bind-key* "C-x M->" 'ignore)
(bind-key* "C-x M-?" 'ignore)

(bind-key* "C-x C-M-a" 'ignore)
(bind-key* "C-x C-M-b" 'ignore)
(bind-key* "C-x C-M-c" 'ignore)
(bind-key* "C-x C-M-d" 'ignore)
(bind-key* "C-x C-M-e" 'ignore)
(bind-key* "C-x C-M-f" 'ignore)
(bind-key* "C-x C-M-g" 'ignore)
(bind-key* "C-x C-M-h" 'ignore)
(bind-key* "C-x C-M-i" 'ignore)
(bind-key* "C-x C-M-j" 'ignore)
(bind-key* "C-x C-M-k" 'ignore)
(bind-key* "C-x C-M-l" 'ignore)
(bind-key* "C-x C-M-m" 'ignore)
(bind-key* "C-x C-M-n" 'ignore)
(bind-key* "C-x C-M-o" 'ignore)
(bind-key* "C-x C-M-p" 'ignore)
(bind-key* "C-x C-M-q" 'ignore)
(bind-key* "C-x C-M-r" 'ignore)
(bind-key* "C-x C-M-s" 'ignore)
(bind-key* "C-x C-M-t" 'ignore)
(bind-key* "C-x C-M-u" 'ignore)
(bind-key* "C-x C-M-v" 'ignore)
(bind-key* "C-x C-M-w" 'ignore)
(bind-key* "C-x C-M-x" 'ignore)
(bind-key* "C-x C-M-y" 'ignore)
(bind-key* "C-x C-M-z" 'ignore)
(bind-key* "C-x C-M-[" 'ignore)
(bind-key* "C-x C-M-]" 'ignore)
(bind-key* "C-x C-M-\\" 'ignore)
(bind-key* "C-x C-M-;" 'ignore)
(bind-key* "C-x C-M-'" 'ignore)
(bind-key* "C-x C-M-," 'ignore)
(bind-key* "C-x C-M-." 'ignore)
(bind-key* "C-x C-M-/" 'ignore)

(bind-key* "C-x C-M-A" 'ignore)
(bind-key* "C-x C-M-B" 'ignore)
(bind-key* "C-x C-M-C" 'ignore)
(bind-key* "C-x C-M-D" 'ignore)
(bind-key* "C-x C-M-E" 'ignore)
(bind-key* "C-x C-M-F" 'ignore)
(bind-key* "C-x C-M-G" 'ignore)
(bind-key* "C-x C-M-H" 'ignore)
(bind-key* "C-x C-M-I" 'ignore)
(bind-key* "C-x C-M-J" 'ignore)
(bind-key* "C-x C-M-K" 'ignore)
(bind-key* "C-x C-M-L" 'ignore)
(bind-key* "C-x C-M-M" 'ignore)
(bind-key* "C-x C-M-N" 'ignore)
(bind-key* "C-x C-M-O" 'ignore)
(bind-key* "C-x C-M-P" 'ignore)
(bind-key* "C-x C-M-Q" 'ignore)
(bind-key* "C-x C-M-R" 'ignore)
(bind-key* "C-x C-M-S" 'ignore)
(bind-key* "C-x C-M-T" 'ignore)
(bind-key* "C-x C-M-U" 'ignore)
(bind-key* "C-x C-M-V" 'ignore)
(bind-key* "C-x C-M-W" 'ignore)
(bind-key* "C-x C-M-X" 'ignore)
(bind-key* "C-x C-M-Y" 'ignore)
(bind-key* "C-x C-M-Z" 'ignore)
(bind-key* "C-x C-M-{" 'ignore)
(bind-key* "C-x C-M-}" 'ignore)
(bind-key* "C-x C-M-|" 'ignore)
(bind-key* "C-x C-M-:" 'ignore)
(bind-key* "C-x C-M-\"" 'ignore)
(bind-key* "C-x C-M-<" 'ignore)
(bind-key* "C-x C-M->" 'ignore)
(bind-key* "C-x C-M-?" 'ignore)
;; End Letters And Symbols With C-x Prefix

;; Numbers And Symbols With C-c Prefix
(bind-key* "C-c `" 'ignore)
(bind-key* "C-c 1" 'ignore)
(bind-key* "C-c 2" 'ignore)
(bind-key* "C-c 3" 'ignore)
(bind-key* "C-c 4" 'ignore)
(bind-key* "C-c 5" 'ignore)
(bind-key* "C-c 6" 'ignore)
(bind-key* "C-c 7" 'ignore)
(bind-key* "C-c 8" 'ignore)
(bind-key* "C-c 9" 'ignore)
(bind-key* "C-c 0" 'ignore)
(bind-key* "C-c -" 'ignore)
(bind-key* "C-c =" 'ignore)

(bind-key* "C-c ~" 'ignore)
(bind-key* "C-c !" 'ignore)
(bind-key* "C-c @" 'ignore)
(bind-key* "C-c #" 'ignore)
(bind-key* "C-c $" 'ignore)
(bind-key* "C-c %" 'ignore)
(bind-key* "C-c ^" 'ignore)
(bind-key* "C-c &" 'ignore)
(bind-key* "C-c *" 'ignore)
(bind-key* "C-c (" 'ignore)
(bind-key* "C-c )" 'ignore)
(bind-key* "C-c _" 'ignore)
(bind-key* "C-c +" 'ignore)

(bind-key* "C-c C-`" 'ignore)
(bind-key* "C-c C-1" 'ignore)
(bind-key* "C-c C-2" 'ignore)
(bind-key* "C-c C-3" 'ignore)
(bind-key* "C-c C-4" 'ignore)
(bind-key* "C-c C-5" 'ignore)
(bind-key* "C-c C-6" 'ignore)
(bind-key* "C-c C-7" 'ignore)
(bind-key* "C-c C-8" 'ignore)
(bind-key* "C-c C-9" 'ignore)
(bind-key* "C-c C-0" 'ignore)
(bind-key* "C-c C--" 'ignore)
(bind-key* "C-c C-=" 'ignore)

(bind-key* "C-c C-~" 'ignore)
(bind-key* "C-c C-!" 'ignore)
(bind-key* "C-c C-@" 'ignore)
(bind-key* "C-c C-#" 'ignore)
(bind-key* "C-c C-$" 'ignore)
(bind-key* "C-c C-%" 'ignore)
(bind-key* "C-c C-^" 'ignore)
(bind-key* "C-c C-&" 'ignore)
(bind-key* "C-c C-*" 'ignore)
(bind-key* "C-c C-(" 'ignore)
(bind-key* "C-c C-)" 'ignore)
(bind-key* "C-c C-_" 'ignore)
(bind-key* "C-c C-+" 'ignore)

(bind-key* "C-c M-`" 'ignore)
(bind-key* "C-c M-1" 'ignore)
(bind-key* "C-c M-2" 'ignore)
(bind-key* "C-c M-3" 'ignore)
(bind-key* "C-c M-4" 'ignore)
(bind-key* "C-c M-5" 'ignore)
(bind-key* "C-c M-6" 'ignore)
(bind-key* "C-c M-7" 'ignore)
(bind-key* "C-c M-8" 'ignore)
(bind-key* "C-c M-9" 'ignore)
(bind-key* "C-c M-0" 'ignore)
(bind-key* "C-c M--" 'ignore)
(bind-key* "C-c M-=" 'ignore)

(bind-key* "C-c M-~" 'ignore)
(bind-key* "C-c M-!" 'ignore)
(bind-key* "C-c M-@" 'ignore)
(bind-key* "C-c M-#" 'ignore)
(bind-key* "C-c M-$" 'ignore)
(bind-key* "C-c M-%" 'ignore)
(bind-key* "C-c M-^" 'ignore)
(bind-key* "C-c M-&" 'ignore)
(bind-key* "C-c M-*" 'ignore)
(bind-key* "C-c M-(" 'ignore)
(bind-key* "C-c M-)" 'ignore)
(bind-key* "C-c M-_" 'ignore)
(bind-key* "C-c M-+" 'ignore)

(bind-key* "C-c C-M-`" 'ignore)
(bind-key* "C-c C-M-1" 'ignore)
(bind-key* "C-c C-M-2" 'ignore)
(bind-key* "C-c C-M-3" 'ignore)
(bind-key* "C-c C-M-4" 'ignore)
(bind-key* "C-c C-M-5" 'ignore)
(bind-key* "C-c C-M-6" 'ignore)
(bind-key* "C-c C-M-7" 'ignore)
(bind-key* "C-c C-M-8" 'ignore)
(bind-key* "C-c C-M-9" 'ignore)
(bind-key* "C-c C-M-0" 'ignore)
(bind-key* "C-c C-M--" 'ignore)
(bind-key* "C-c C-M-=" 'ignore)

(bind-key* "C-c C-M-~" 'ignore)
(bind-key* "C-c C-M-!" 'ignore)
(bind-key* "C-c C-M-@" 'ignore)
(bind-key* "C-c C-M-#" 'ignore)
(bind-key* "C-c C-M-$" 'ignore)
(bind-key* "C-c C-M-%" 'ignore)
(bind-key* "C-c C-M-^" 'ignore)
(bind-key* "C-c C-M-&" 'ignore)
(bind-key* "C-c C-M-*" 'ignore)
(bind-key* "C-c C-M-(" 'ignore)
(bind-key* "C-c C-M-)" 'ignore)
(bind-key* "C-c C-M-_" 'ignore)
(bind-key* "C-c C-M-+" 'ignore)
;; End Numbers And Symbols With C-c Prefix

;; Letters And Symbols With C-c Prefix
(bind-key* "C-c a" 'ignore)
(bind-key* "C-c b" 'ignore)
(bind-key* "C-c c" 'ignore)
(bind-key* "C-c d" 'ignore)
(bind-key* "C-c e" 'ignore)
(bind-key* "C-c f" 'ignore)
(bind-key* "C-c g" 'ignore)
(bind-key* "C-c h" 'ignore)
(bind-key* "C-c i" 'ignore)
(bind-key* "C-c j" 'ignore)
(bind-key* "C-c k" 'ignore)
(bind-key* "C-c l" 'ignore)
(bind-key* "C-c m" 'ignore)
(bind-key* "C-c n" 'ignore)
(bind-key* "C-c o" 'ignore)
(bind-key* "C-c p" 'ignore)
(bind-key* "C-c q" 'ignore)
(bind-key* "C-c r" 'ignore)
(bind-key* "C-c s" 'ignore)
(bind-key* "C-c t" 'ignore)
(bind-key* "C-c u" 'ignore)
(bind-key* "C-c v" 'ignore)
(bind-key* "C-c w" 'ignore)
(bind-key* "C-c x" 'ignore)
(bind-key* "C-c y" 'ignore)
(bind-key* "C-c z" 'ignore)
(bind-key* "C-c [" 'ignore)
(bind-key* "C-c ]" 'ignore)
(bind-key* "C-c \\" 'ignore)
(bind-key* "C-c ;" 'ignore)
(bind-key* "C-c '" 'ignore)
(bind-key* "C-c ," 'ignore)
(bind-key* "C-c ." 'ignore)
(bind-key* "C-c /" 'ignore)

(bind-key* "C-c A" 'ignore)
(bind-key* "C-c B" 'ignore)
(bind-key* "C-c C" 'ignore)
(bind-key* "C-c D" 'ignore)
(bind-key* "C-c E" 'ignore)
(bind-key* "C-c F" 'ignore)
(bind-key* "C-c G" 'ignore)
(bind-key* "C-c H" 'ignore)
(bind-key* "C-c I" 'ignore)
(bind-key* "C-c J" 'ignore)
(bind-key* "C-c K" 'ignore)
(bind-key* "C-c L" 'ignore)
(bind-key* "C-c M" 'ignore)
(bind-key* "C-c N" 'ignore)
(bind-key* "C-c O" 'ignore)
(bind-key* "C-c P" 'ignore)
(bind-key* "C-c Q" 'ignore)
(bind-key* "C-c R" 'ignore)
(bind-key* "C-c S" 'ignore)
(bind-key* "C-c T" 'ignore)
(bind-key* "C-c U" 'ignore)
(bind-key* "C-c V" 'ignore)
(bind-key* "C-c W" 'ignore)
(bind-key* "C-c X" 'ignore)
(bind-key* "C-c Y" 'ignore)
(bind-key* "C-c Z" 'ignore)
(bind-key* "C-c {" 'ignore)
(bind-key* "C-c }" 'ignore)
(bind-key* "C-c |" 'ignore)
(bind-key* "C-c :" 'ignore)
(bind-key* "C-c \"" 'ignore)
(bind-key* "C-c <" 'ignore)
(bind-key* "C-c >" 'ignore)
(bind-key* "C-c ?" 'ignore)

(bind-key* "C-c C-a" 'ignore)
(bind-key* "C-c C-b" 'ignore)
(bind-key* "C-c C-c" 'ignore)
(bind-key* "C-c C-d" 'ignore)
(bind-key* "C-c C-e" 'ignore)
;;(bind-key* "C-c C-f" 'ignore)
(bind-key* "C-c C-g" 'ignore)
(bind-key* "C-c C-h" 'ignore)
(bind-key* "C-c C-i" 'ignore)
(bind-key* "C-c C-j" 'ignore)
(bind-key* "C-c C-k" 'ignore)
(bind-key* "C-c C-l" 'ignore)
(bind-key* "C-c C-m" 'ignore)
(bind-key* "C-c C-n" 'ignore)
(bind-key* "C-c C-o" 'ignore)
(bind-key* "C-c C-p" 'ignore)
(bind-key* "C-c C-q" 'ignore)
(bind-key* "C-c C-r" 'ignore)
(bind-key* "C-c C-s" 'ignore)
(bind-key* "C-c C-t" 'ignore)
(bind-key* "C-c C-u" 'ignore)
(bind-key* "C-c C-v" 'ignore)
(bind-key* "C-c C-w" 'ignore)
(bind-key* "C-c C-x" 'ignore)
(bind-key* "C-c C-y" 'ignore)
(bind-key* "C-c C-z" 'ignore)
(bind-key* "C-c C-]" 'ignore)
(bind-key* "C-c C-\\" 'ignore)
(bind-key* "C-c C-;" 'ignore)
(bind-key* "C-c C-'" 'ignore)
(bind-key* "C-c C-," 'ignore)
(bind-key* "C-c C-." 'ignore)
(bind-key* "C-c C-/" 'ignore)

(bind-key* "C-c C-A" 'ignore)
(bind-key* "C-c C-B" 'ignore)
(bind-key* "C-c C-C" 'ignore)
(bind-key* "C-c C-D" 'ignore)
(bind-key* "C-c C-E" 'ignore)
(bind-key* "C-c C-F" 'ignore)
(bind-key* "C-c C-G" 'ignore)
(bind-key* "C-c C-H" 'ignore)
(bind-key* "C-c C-I" 'ignore)
(bind-key* "C-c C-J" 'ignore)
(bind-key* "C-c C-K" 'ignore)
(bind-key* "C-c C-L" 'ignore)
(bind-key* "C-c C-M" 'ignore)
(bind-key* "C-c C-N" 'ignore)
(bind-key* "C-c C-O" 'ignore)
(bind-key* "C-c C-P" 'ignore)
(bind-key* "C-c C-Q" 'ignore)
(bind-key* "C-c C-R" 'ignore)
(bind-key* "C-c C-S" 'ignore)
(bind-key* "C-c C-T" 'ignore)
(bind-key* "C-c C-U" 'ignore)
(bind-key* "C-c C-V" 'ignore)
(bind-key* "C-c C-W" 'ignore)
(bind-key* "C-c C-X" 'ignore)
(bind-key* "C-c C-Y" 'ignore)
(bind-key* "C-c C-Z" 'ignore)
(bind-key* "C-c C-{" 'ignore)
(bind-key* "C-c C-}" 'ignore)
(bind-key* "C-c C-|" 'ignore)
(bind-key* "C-c C-:" 'ignore)
(bind-key* "C-c C-\"" 'ignore)
(bind-key* "C-c C-<" 'ignore)
(bind-key* "C-c C->" 'ignore)
(bind-key* "C-c C-?" 'ignore)

(bind-key* "C-c M-a" 'ignore)
(bind-key* "C-c M-b" 'ignore)
(bind-key* "C-c M-c" 'ignore)
(bind-key* "C-c M-d" 'ignore)
(bind-key* "C-c M-e" 'ignore)
(bind-key* "C-c M-f" 'ignore)
(bind-key* "C-c M-g" 'ignore)
(bind-key* "C-c M-h" 'ignore)
(bind-key* "C-c M-i" 'ignore)
(bind-key* "C-c M-j" 'ignore)
(bind-key* "C-c M-k" 'ignore)
(bind-key* "C-c M-l" 'ignore)
(bind-key* "C-c M-m" 'ignore)
(bind-key* "C-c M-n" 'ignore)
(bind-key* "C-c M-o" 'ignore)
(bind-key* "C-c M-p" 'ignore)
(bind-key* "C-c M-q" 'ignore)
(bind-key* "C-c M-r" 'ignore)
(bind-key* "C-c M-s" 'ignore)
(bind-key* "C-c M-t" 'ignore)
(bind-key* "C-c M-u" 'ignore)
(bind-key* "C-c M-v" 'ignore)
(bind-key* "C-c M-w" 'ignore)
(bind-key* "C-c M-x" 'ignore)
(bind-key* "C-c M-y" 'ignore)
(bind-key* "C-c M-z" 'ignore)
(bind-key* "C-c M-[" 'ignore)
(bind-key* "C-c M-]" 'ignore)
(bind-key* "C-c M-\\" 'ignore)
(bind-key* "C-c M-;" 'ignore)
(bind-key* "C-c M-'" 'ignore)
(bind-key* "C-c M-," 'ignore)
(bind-key* "C-c M-." 'ignore)
(bind-key* "C-c M-/" 'ignore)

(bind-key* "C-c M-A" 'ignore)
(bind-key* "C-c M-B" 'ignore)
(bind-key* "C-c M-C" 'ignore)
(bind-key* "C-c M-D" 'ignore)
(bind-key* "C-c M-E" 'ignore)
(bind-key* "C-c M-F" 'ignore)
(bind-key* "C-c M-G" 'ignore)
(bind-key* "C-c M-H" 'ignore)
(bind-key* "C-c M-I" 'ignore)
(bind-key* "C-c M-J" 'ignore)
(bind-key* "C-c M-K" 'ignore)
(bind-key* "C-c M-L" 'ignore)
(bind-key* "C-c M-M" 'ignore)
(bind-key* "C-c M-N" 'ignore)
(bind-key* "C-c M-O" 'ignore)
(bind-key* "C-c M-P" 'ignore)
(bind-key* "C-c M-Q" 'ignore)
(bind-key* "C-c M-R" 'ignore)
(bind-key* "C-c M-S" 'ignore)
(bind-key* "C-c M-T" 'ignore)
(bind-key* "C-c M-U" 'ignore)
(bind-key* "C-c M-V" 'ignore)
(bind-key* "C-c M-W" 'ignore)
(bind-key* "C-c M-X" 'ignore)
(bind-key* "C-c M-Y" 'ignore)
(bind-key* "C-c M-Z" 'ignore)
(bind-key* "C-c M-{" 'ignore)
(bind-key* "C-c M-}" 'ignore)
(bind-key* "C-c M-|" 'ignore)
(bind-key* "C-c M-:" 'ignore)
(bind-key* "C-c M-\"" 'ignore)
(bind-key* "C-c M-<" 'ignore)
(bind-key* "C-c M->" 'ignore)
(bind-key* "C-c M-?" 'ignore)

(bind-key* "C-c C-M-a" 'ignore)
(bind-key* "C-c C-M-b" 'ignore)
(bind-key* "C-c C-M-c" 'ignore)
(bind-key* "C-c C-M-d" 'ignore)
(bind-key* "C-c C-M-e" 'ignore)
(bind-key* "C-c C-M-f" 'ignore)
(bind-key* "C-c C-M-g" 'ignore)
(bind-key* "C-c C-M-h" 'ignore)
(bind-key* "C-c C-M-i" 'ignore)
(bind-key* "C-c C-M-j" 'ignore)
(bind-key* "C-c C-M-k" 'ignore)
(bind-key* "C-c C-M-l" 'ignore)
(bind-key* "C-c C-M-m" 'ignore)
(bind-key* "C-c C-M-n" 'ignore)
(bind-key* "C-c C-M-o" 'ignore)
(bind-key* "C-c C-M-p" 'ignore)
(bind-key* "C-c C-M-q" 'ignore)
(bind-key* "C-c C-M-r" 'ignore)
(bind-key* "C-c C-M-s" 'ignore)
(bind-key* "C-c C-M-t" 'ignore)
(bind-key* "C-c C-M-u" 'ignore)
(bind-key* "C-c C-M-v" 'ignore)
(bind-key* "C-c C-M-w" 'ignore)
(bind-key* "C-c C-M-x" 'ignore)
(bind-key* "C-c C-M-y" 'ignore)
(bind-key* "C-c C-M-z" 'ignore)
(bind-key* "C-c C-M-[" 'ignore)
(bind-key* "C-c C-M-]" 'ignore)
(bind-key* "C-c C-M-\\" 'ignore)
(bind-key* "C-c C-M-;" 'ignore)
(bind-key* "C-c C-M-'" 'ignore)
(bind-key* "C-c C-M-," 'ignore)
(bind-key* "C-c C-M-." 'ignore)
(bind-key* "C-c C-M-/" 'ignore)

(bind-key* "C-c C-M-A" 'ignore)
(bind-key* "C-c C-M-B" 'ignore)
(bind-key* "C-c C-M-C" 'ignore)
(bind-key* "C-c C-M-D" 'ignore)
(bind-key* "C-c C-M-E" 'ignore)
(bind-key* "C-c C-M-F" 'ignore)
(bind-key* "C-c C-M-G" 'ignore)
(bind-key* "C-c C-M-H" 'ignore)
(bind-key* "C-c C-M-I" 'ignore)
(bind-key* "C-c C-M-J" 'ignore)
(bind-key* "C-c C-M-K" 'ignore)
(bind-key* "C-c C-M-L" 'ignore)
(bind-key* "C-c C-M-M" 'ignore)
(bind-key* "C-c C-M-N" 'ignore)
(bind-key* "C-c C-M-O" 'ignore)
(bind-key* "C-c C-M-P" 'ignore)
(bind-key* "C-c C-M-Q" 'ignore)
(bind-key* "C-c C-M-R" 'ignore)
(bind-key* "C-c C-M-S" 'ignore)
(bind-key* "C-c C-M-T" 'ignore)
(bind-key* "C-c C-M-U" 'ignore)
(bind-key* "C-c C-M-V" 'ignore)
(bind-key* "C-c C-M-W" 'ignore)
(bind-key* "C-c C-M-X" 'ignore)
(bind-key* "C-c C-M-Y" 'ignore)
(bind-key* "C-c C-M-Z" 'ignore)
(bind-key* "C-c C-M-{" 'ignore)
(bind-key* "C-c C-M-}" 'ignore)
(bind-key* "C-c C-M-|" 'ignore)
(bind-key* "C-c C-M-:" 'ignore)
(bind-key* "C-c C-M-\"" 'ignore)
(bind-key* "C-c C-M-<" 'ignore)
(bind-key* "C-c C-M->" 'ignore)
(bind-key* "C-c C-M-?" 'ignore)
;; End Letters And Symbols With C-c Prefix

;;-----------------------------------------------------------------;;
;;-------------------------END UNBOUND KEYS------------------------;;
;;-----------------------------------------------------------------;;

;;-----------------------------------------------------------------;;
;;-------------------------BOUND KEYS------------------------------;;
;;-----------------------------------------------------------------;;

;; Turns on CUA mode.
(cua-mode t)

;; File-Handling Commands.
(bind-key* "C-e" 'find-file)
(bind-key* "C-s" 'save-buffer)
(bind-key* "M-s" 'write-file)
(bind-key* "C-x C-c" 'save-buffers-kill-emacs)
(bind-key* "C-x C-s" 'save-some-buffers)

;; Cursor Movement Commands.
(bind-key* "M-l" 'forward-char)
(bind-key* "M-j" 'backward-char)
(bind-key* "M-i" 'previous-line)
(bind-key* "M-k" 'next-line)
(bind-key* "M-u" 'beginning-of-line)
(bind-key* "M-o" 'end-of-line)
(bind-key* (kbd "<C-i>") 'scroll-down)
(bind-key* (kbd "<C-I>") 'scroll-down)
(bind-key* "C-k" 'scroll-up)
(bind-key* "C-u" 'beginning-of-buffer)
(bind-key* "C-o" 'end-of-buffer)
(bind-key* "M-;" 'recenter)
(bind-key* "C-t" 'universal-argument)

;; Deleting, Yanking, Region, and Clipboard Commands.
(bind-key* "C-x C-x" 'select-current-line) ;; TODO LATER: Macro to unhighlight line if I move cursor.
(bind-key* "C-a" 'mark-whole-buffer)
(bind-key* "M-SPC" 'cua-exchange-point-and-mark) ;; TODO LATER: Possibly macro to move mark to end-of-line after copy.

;; Stopping and Undoing Commands.
(bind-key* "C-g" 'keyboard-escape-quit) ;; TODO LATER: Possibly imoprove functionality to work in mini-buffer.

;; Search And Replace Commands.
(bind-key* "C-f" 'isearch-forward)
(bind-key "C-l" 'isearch-repeat-forward isearch-mode-map)
(bind-key "C-j" 'isearch-repeat-backward isearch-mode-map)
(bind-key* "M-f" 'query-replace)
 
;; TODO LATER: Macro to switch/swap/open up and format certain amount of buffers for coding.
;; Buffer Commands.
(bind-key* (kbd "<C-x <tab>>") 'reformat)
(bind-key* (kbd "<C-tab>") 'buffer-menu)
 
;; Windows And Frames.
(bind-key* "C-n" 'split-window-horizontally)
(bind-key* (kbd "<C-m>") 'split-window-vertically)
(bind-key* (kbd "<C-M>") 'split-window-vertically)
(bind-key* "C-x j" 'delete-window)
(bind-key* "C-x l" 'delete-other-windows)
(bind-key* "C-+" 'enlarge-window)
(bind-key* "C-_" 'shrink-window)
(bind-key* "C-=" 'enlarge-window-horizontally)
(bind-key* "C--" 'shrink-window-horizontally)
(bind-key* "C-M-j" 'windmove-left)
(bind-key* "C-M-l" 'windmove-right)
(bind-key* "C-M-i" 'windmove-up)
(bind-key* "C-M-k" 'windmove-down)
 
;; TODO LATER: Finish these binds, once I start getting the hang of it.
;; Shell Mode Commands.
(bind-key* "<f1>" 'shell)
;;(bind-key "C-l" 'shell-foward-command)
;;(bind-key "C-j" 'shell-backward-command)
;;(bind-key* "M-c" 'comint-interrupt-subjob)
;;(bind-key* "M-z" 'comint-stop-subjob)
 
;; Compilation Mode Commands.
;;(bind-key* "M-i" 'compilation-previous-error)
;;(bind-key* "M-k" 'compilation-next-error)
;;(bind-key* "M-n" 'compilation-goto-error)
 
;; Company Commands.
(bind-key "C-l" 'company-select-next)
(bind-key "C-j" 'company-select-previous)
(with-eval-after-load 'company
  (bind-key "<tab>" 'company-complete-selection company-active-map))
 
;;-----------------------------------------------------------------;;
;;-------------------------END BOUND KEYS--------------------------;;
;;-----------------------------------------------------------------;;
 
;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;
;;-------------------------END KEYBINDINGS-------------------------;;
;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;

