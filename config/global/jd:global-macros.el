;; Swaps the most recent buffer with the current buffer.
;; `ivy-switch-buffer'
;; `ivy-alt-done'
(fset 'jd:macro-swap-buffers
   (kmacro-lambda-form [?\C-\M-f return] 0 "%d"))

(provide 'jd:global-macros.el)
