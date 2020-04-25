(define-key xref--xref-buffer-mode-map (kbd "i") 'jd:backward-line)
(define-key xref--xref-buffer-mode-map (kbd "k") 'jd:forward-line)
(define-key xref--xref-buffer-mode-map (kbd "l") 'xref-goto-xref)
(define-key xref--xref-buffer-mode-map (kbd "q") 'quit-window)

(provide 'jd:xref-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/progmodes/xref.elc
;; 
;; xref--button-map
;; ----------------
;; key             binding
;; ---             -------
;; 
;; RET             xref-goto-xref
;; <mouse-1>       xref-goto-xref
;; <mouse-2>       xref--mouse-2
;; 
;; xref--xref-buffer-mode-map
;; --------------------------
;; key             binding
;; ---             -------
;; 
;; TAB             xref-quit-and-goto-xref
;; RET             xref-goto-xref
;; C-o             xref-show-location-at-point
;; ,               xref-prev-line
;; .               xref-next-line
;; n               xref-next-line
;; p               xref-prev-line
;; r               xref-query-replace-in-results
