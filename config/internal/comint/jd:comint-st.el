(setq-default comint-prompt-read-only t)
(setq-default comint-output-filter-functions
              (remove 'ansi-color-process-output comint-output-filter-functions))

(provide 'jd:comint-st.el)
