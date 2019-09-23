(setf (cdr cua--global-mark-keymap) nil)
(setf (cdr cua--rectangle-keymap) nil)
(setf (cdr cua--region-keymap) nil)
(setf (cdr cua-global-keymap) nil)

(setf (cdr cua--cua-keys-keymap) nil)
(define-key cua--cua-keys-keymap (kbd "<C-v>") 'yank)
(define-key cua--cua-keys-keymap (kbd "<C-z>") 'undo)
(define-key cua--cua-keys-keymap (kbd "<C-c> <timeout>") 'copy-region-as-kill)
(define-key cua--cua-keys-keymap (kbd "<C-x> <timeout>") 'kill-region)

(setf (cdr cua--prefix-override-keymap) nil)
(define-key cua--prefix-override-keymap (kbd "<C-c>") 'cua--prefix-override-handler)
(define-key cua--prefix-override-keymap (kbd "<C-x>") 'cua--prefix-override-handler)

(setf (cdr cua--prefix-repeat-keymap) nil)
(define-key cua--prefix-repeat-keymap (kbd "<C-c> <C-c>") 'cua--prefix-repeat-handler)
(define-key cua--prefix-repeat-keymap (kbd "<C-x> <C-x>") 'cua--prefix-repeat-handler)

(provide 'jd:cua-base-kb.el)
