;; TODO: This doesn't solve my problem, but it is the start of an idea
(defun jd:kill-completions-buffer ()
  (let ((buffer "*Completions*"))
    (and (get-buffer buffer)
	 (kill-buffer buffer))))
(add-hook 'minibuffer-exit-hook 'jd:kill-completions-buffer)

(provide 'jd:completion-list-mode-settings.el)
