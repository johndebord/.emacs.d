(defun jd:c++-mode-hook ()
  (if (or (eq this-command 'gdb)
          (get-buffer "*gud-prog*"))
      (progn
        (idle-highlight-mode 1)
        (read-only-mode 1))
    (progn
      (company-mode 1)
      (idle-highlight-mode 1)
      (yas-minor-mode 1)
      (lsp)
      (set (make-local-variable 'company-backends)
           '((company-lsp :separate company-dabbrev-code :separate company-yasnippet)))
      (set (make-local-variable 'compile-command)
           (concat "/bin/zsh -c 'clang++ -g -Wall -Wextra -std=c++17 -o prog " buffer-file-name " && ./prog'")))))

(add-hook 'c++-mode-hook 'jd:c++-mode-hook)

(jd:provide-feature jd:cc-mode-st)
