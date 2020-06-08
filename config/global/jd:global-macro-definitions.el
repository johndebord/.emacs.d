;; Swaps the most recent buffer with the current buffer.
;; `counsel-switch-buffer'
;; `ivy-next-line'
;; `ivy-alt-done'
(fset 'jd:macro-swap-buffers
      (lambda (&optional arg)
        "Keyboard macro."
        (interactive "p")
        (kmacro-exec-ring-item (quote ("\206\353\354" 0 "%d")) arg)))

(jd:provide-feature jd:global-macro-definitions)
