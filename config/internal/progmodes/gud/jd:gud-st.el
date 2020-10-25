(setq-default gud-gud-gdb-command-name "gdb --quiet --fullname")

(jd:site-source-redef
 (define-derived-mode gud-mode comint-mode "Debugger"
   "Major mode for interacting with an inferior debugger process.

   You start it up with one of the commands M-x gdb, M-x sdb, M-x dbx,
M-x perldb, M-x xdb, or M-x jdb.  Each entry point finishes by executing a
hook; `gdb-mode-hook', `sdb-mode-hook', `dbx-mode-hook',
`perldb-mode-hook', `xdb-mode-hook', or `jdb-mode-hook' respectively.

After startup, the following commands are available in both the GUD
interaction buffer and any source buffer GUD visits due to a breakpoint stop
or step operation:

\\[gud-break] sets a breakpoint at the current file and line.  In the
GUD buffer, the current file and line are those of the last breakpoint or
step.  In a source buffer, they are the buffer's file and current line.

\\[gud-remove] removes breakpoints on the current file and line.

\\[gud-refresh] displays in the source window the last line referred to
in the gud buffer.

\\[gud-step], \\[gud-next], and \\[gud-stepi] do a step-one-line,
step-one-line (not entering function calls), and step-one-instruction
and then update the source window with the current file and position.
\\[gud-cont] continues execution.

\\[gud-print] tries to find the largest C lvalue or function-call expression
around point, and sends it to the debugger for value display.

The above commands are common to all supported debuggers except xdb which
does not support stepping instructions.

Under gdb, sdb and xdb, \\[gud-tbreak] behaves exactly like \\[gud-break],
except that the breakpoint is temporary; that is, it is removed when
execution stops on it.

Under gdb, dbx, and xdb, \\[gud-up] pops up through an enclosing stack
frame.  \\[gud-down] drops back down through one.

If you are using gdb or xdb, \\[gud-finish] runs execution to the return from
the current function and stops.

All the keystrokes above are accessible in the GUD buffer
with the prefix C-c, and in all buffers through the prefix C-x C-a.

All pre-defined functions for which the concept make sense repeat
themselves the appropriate number of times if you give a prefix
argument.

You may use the `gud-def' macro in the initialization hook to define other
commands.

Other commands for interacting with the debugger process are inherited from
comint mode, which see."
   (setq header-line-format jd:gdb-comint-header)
   (setq mode-line-process '(":%s"))
   (define-key (current-local-map) "\C-c\C-l" 'gud-refresh)
   (set (make-local-variable 'gud-last-frame) nil)
   (if (boundp 'tool-bar-map)            ; not --without-x
       (setq-local tool-bar-map gud-tool-bar-map))
   (make-local-variable 'comint-prompt-regexp)
   (set (make-local-variable 'comint-input-ignoredups) t)
   (make-local-variable 'paragraph-start)
   (set (make-local-variable 'gud-delete-prompt-marker) (make-marker))
   (add-hook 'kill-buffer-hook 'gud-kill-buffer-hook nil t)))

(defun jd:comint-next-input ()
  "Decide whether or not the next input should be displayed, depending on the
context of the cursor in the buffer."
  (interactive "^")
  (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
      (progn
        (end-of-line)
        (comint-next-input 1))
    (progn
      (scroll-down-line -1)
      (forward-line 1))))


(defun jd:comint-previous-input ()
  "Decide whether or not the previous input should be displayed, depending on
the context of the cursor in the buffer."
  (interactive "^")
  (if (equal (line-number-at-pos) (count-lines (point-max) (point-min)))
      (progn
        (end-of-line)
        (comint-previous-input 1))
    (progn
      (scroll-down-line 1)
      (forward-line -1))))

(defun jd:gud-mode-hook ()
  (idle-highlight-mode 1))

(add-hook 'gud-mode-hook 'jd:gud-mode-hook)

(jd:provide-feature jd:gud-st)
