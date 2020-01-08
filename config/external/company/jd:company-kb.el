(define-key company-active-map (kbd "<C-g>") 'company-abort)
(define-key company-active-map (kbd "<C-h>") 'company-show-doc-buffer)
(define-key company-active-map (kbd "<C-i>") 'jd:company-previous-page)
(define-key company-active-map (kbd "<C-k>") 'jd:company-next-page)
(define-key company-active-map (kbd "<C-o>") 'jd:company-end-of-candidates)
(define-key company-active-map (kbd "<C-u>") 'jd:company-beginning-of-candidates)
(define-key company-active-map (kbd "<M-i>") 'company-select-previous)
(define-key company-active-map (kbd "<M-k>") 'company-select-next)
(define-key company-active-map (kbd "<jd:ret>") 'company-complete-selection)

(provide 'jd:company-kb)

;; File: /home/i/.emacs.d/config/external/elpa/company-20190907.1149/company.el
;; 
;; company-active-map
;; ------------------
;; key             binding
;; ---             -------
;; 
;; C-g             company-abort
;; C-h             company-show-doc-buffer
;; TAB             company-complete-common
;; RET             company-complete-selection
;; C-s             company-search-candidates
;; C-w             company-show-location
;; ESC             Prefix Command
;; <down>          company-select-next-or-abort
;; <down-mouse-1>  ignore
;; <down-mouse-3>  ignore
;; <f1>            company-show-doc-buffer
;; <mouse-1>       company-complete-mouse
;; <mouse-3>       company-select-mouse
;; <nil>           Prefix Command
;; <remap>         Prefix Command
;; <return>        company-complete-selection
;; <tab>           company-complete-common
;; <up>            company-select-previous-or-abort
;; <up-mouse-1>    ignore
;; <up-mouse-3>    ignore
;; 
;; <remap> <scroll-down-command>   company-previous-page
;; <remap> <scroll-up-command>     company-next-page
;; 
;; C-M-s           company-filter-candidates
;; M-0 .. M-9      company-complete-number
;; M-n             company-select-next
;; M-p             company-select-previous
;; 
;; ESC ESC         Prefix Command
;; 
;; ESC ESC ESC     company-abort
;; 
;; company-search-map
;; ------------------
;; key             binding
;; ---             -------
;; 
;; C-@ .. C-f      company-search-other-char
;; C-h .. C-n      company-search-other-char
;; C-p .. C-q      company-search-other-char
;; C-t .. C-_      company-search-other-char
;; SPC .. ~        company-search-printing-char
;; ¬Ä .. ¯èøΩø       company-search-printing-char
;; Ä .. ˇ    company-search-printing-char
;; 
;; C-g             company-search-abort
;; C-o             company-search-toggle-filtering
;; C-r             company-search-repeat-backward
;; C-s             company-search-repeat-forward
;; DEL             company-search-delete-char
;; <backspace>     company-search-delete-char
;; <down>          company-select-next-or-abort
;; <kp-0>          company-search-keypad
;; <kp-1>          company-search-keypad
;; <kp-2>          company-search-keypad
;; <kp-3>          company-search-keypad
;; <kp-4>          company-search-keypad
;; <kp-5>          company-search-keypad
;; <kp-6>          company-search-keypad
;; <kp-7>          company-search-keypad
;; <kp-8>          company-search-keypad
;; <kp-9>          company-search-keypad
;; <nil>           Prefix Command
;; <t>             company-search-other-char
;; <up>            company-select-previous-or-abort
;; 
;; M-0 .. M-9      company-complete-number
;; M-n             company-select-next
;; M-p             company-select-previous
;; 
;; company-filter-map
;; ------------------
;; key             binding
;; ---             -------
;; 
;; C-@ .. C-f      company-search-other-char
;; C-h .. C-n      company-search-other-char
;; C-p .. C-q      company-search-other-char
;; C-t .. C-_      company-search-other-char
;; SPC .. ~        company-search-printing-char
;; ¬Ä .. ¯èøΩø       company-search-printing-char
;; Ä .. ˇ    company-search-printing-char
;; 
;; C-g             company-search-abort
;; C-o             company-search-toggle-filtering
;; C-r             company-search-repeat-backward
;; C-s             company-search-repeat-forward
;; DEL             company-search-delete-char
;; <backspace>     company-search-delete-char
;; <down>          company-select-next-or-abort
;; <kp-0>          company-search-keypad
;; <kp-1>          company-search-keypad
;; <kp-2>          company-search-keypad
;; <kp-3>          company-search-keypad
;; <kp-4>          company-search-keypad
;; <kp-5>          company-search-keypad
;; <kp-6>          company-search-keypad
;; <kp-7>          company-search-keypad
;; <kp-8>          company-search-keypad
;; <kp-9>          company-search-keypad
;; <nil>           Prefix Command
;; <remap>         Prefix Command
;; <t>             company-search-other-char
;; <up>            company-select-previous-or-abort
;; 
;; <remap> <company-search-printing-char>
;;                                 company-filter-printing-char
;; 
;; M-0 .. M-9      company-complete-number
;; M-n             company-select-next
;; M-p             company-select-previous
;; 
;; company-mode-map
;; ----------------
;; key             binding
;; ---             -------
