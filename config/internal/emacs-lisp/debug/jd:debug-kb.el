(define-key debugger-mode-map (kbd "<jd:ret>") 'debug-help-follow)
(define-key debugger-mode-map (kbd "<jd:tab>") 'forward-button)
(define-key debugger-mode-map (kbd "<jd:S-tab>") 'backward-button)

(jd:provide-feature jd:debug-kb)
