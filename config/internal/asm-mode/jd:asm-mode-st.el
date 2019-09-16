(defun jd:asm-mode-disable-electric-indent-mode ()
  (setq electric-indent-mode nil))
(add-hook 'asm-mode-hook 'jd:asm-mode-disable-electric-indent-mode)

(defun jd:asm-mode-enable-yasnippet-mode ()
  (yas-minor-mode t)
  (setq yas/indent-line nil))
(add-hook 'asm-mode-hook 'jd:asm-mode-enable-yasnippet-mode)

;; x86_64 --- no dynamic linking
(defun jd:asm-mode-set-compile-command ()
  (setq compile-command "as -gstabs -o prog.o prog.s; ld -o prog prog.o; file prog; time ./prog"))
(add-hook 'asm-mode-hook 'jd:asm-mode-set-compile-command)

;; x86_64 --- dynamic linking
;; (defun jd:asm-mode-set-compile-command ()
;;   (setq compile-command "as -gstabs -o prog.o prog.s; ld -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc -o prog prog.o; file prog; time ./prog"))
;; (add-hook 'asm-mode-hook 'jd:asm-mode-set-compile-command)

;; x86_32 --- no dynamic linking
;; (defun jd:asm-mode-set-compile-command ()
;;   (setq compile-command "as --32 -gstabs -o prog.o prog.s; ld -m elf_i386 -o prog prog.o; time ./prog"))
;; (add-hook 'asm-mode-hook 'jd:asm-mode-set-compile-command)

;; x86_32 --- dynamic linking
;; (defun jd:asm-mode-set-compile-command ()
;;   (setq compile-command "as --32 -gstabs -o prog.o prog.s; ld -m elf_i386 --dynamic-linker /lib/ld-linux.so.2 -lc -o prog prog.o; time ./prog"))
;; (add-hook 'asm-mode-hook 'jd:asm-mode-set-compile-command)

(defun jd:asm-mode-set-tab-width ()
  (setq-default tab-width 4))
(add-hook 'asm-mode-hook 'jd:asm-mode-set-tab-width)

(defun jd:asm-mode-set-tabs-mode ()
  (setq-default indent-tabs-mode nil))
(add-hook 'asm-mode-hook 'jd:asm-mode-set-tabs-mode)

(provide 'jd:asm-mode-st.el)(provide 'jd:asm-mode-st.el)
