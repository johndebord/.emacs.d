(provide 'jd:asm-mode-settings.el)

(defun jd:asm-mode-disable-electric-indent-mode ()
  (setq electric-indent-mode nil))
(add-hook 'asm-mode-hook 'jd:asm-mode-disable-electric-indent-mode)

(defun jd:asm-mode-enable-yasnippet-mode ()
  (yas-minor-mode t)
  (setq yas/indent-line nil))
(add-hook 'asm-mode-hook 'jd:asm-mode-enable-yasnippet-mode)

(defun jd:asm-mode-set-compile-command ()
  (setq compile-command "as --32 -gstabs -o prog.o prog.s; ld -m elf_i386 --dynamic-linker /lib/ld-linux.so.2 -lc -o prog prog.o; time ./prog"))
(add-hook 'asm-mode-hook 'jd:asm-mode-set-compile-command)

(defun jd:asm-mode-set-tab-width ()
  (setq-default tab-width 4))
(add-hook 'asm-mode-hook 'jd:asm-mode-set-tab-width)

(defun jd:asm-mode-set-tabs-mode ()
  (setq-default indent-tabs-mode nil))
(add-hook 'asm-mode-hook 'jd:asm-mode-set-tabs-mode)
