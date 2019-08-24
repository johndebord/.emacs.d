(provide 'jd:flymake-mode-settings.el)

(setq flymake-cursor-error-display-delay 0.001)

(defun jd:quick-makefile ()
  (interactive)
  (defconst text (concat
		  "CC = g++

CFLAGS = -c -Wall -Wextra -std=c++11

OBJECTS = " (substring buffer-file-name 0 (- (length buffer-file-name) 4)) ".o

CHK_SOURCES = " buffer-file-name "

all: prog

prog: $(OBJECTS)
	$(CC) $(OBJECTS) -o prog

%.o: %.cpp
	$(CC) $(CFLAGS) $<

.PHONY: clean
clean:
	rm -rf *.o

.PHONY: check-syntax
check-syntax:
	$(CC) -Wall -Wextra -fsyntax-only -std=c++11 -S $(CHK_SOURCES)\n"))
  (write-region text nil "Makefile")
  (flymake-mode))