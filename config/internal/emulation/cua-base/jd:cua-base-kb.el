(define-key cua--cua-keys-keymap (kbd "<C-v>") 'yank)
(define-key cua--cua-keys-keymap (kbd "<C-z>") 'undo)
(define-key cua--cua-keys-keymap (kbd "<C-c> <timeout>") 'copy-region-as-kill)
(define-key cua--cua-keys-keymap (kbd "<C-x> <timeout>") 'kill-region)

(define-key cua--prefix-override-keymap (kbd "<C-c>") 'cua--prefix-override-handler)
(define-key cua--prefix-override-keymap (kbd "<C-x>") 'cua--prefix-override-handler)

(define-key cua--prefix-repeat-keymap (kbd "<C-c> <C-c>") 'cua--prefix-repeat-handler)
(define-key cua--prefix-repeat-keymap (kbd "<C-x> <C-x>") 'cua--prefix-repeat-handler)

(jd:provide-feature jd:cua-base-kb)
