;; Determines if there is an on-going sequence of prints to be written; if it is
;; the first time printing, a prompt shall appear asking if you would like to
;; print out a specific value for the prints during this cycle; upon
;; `jd:cpp-print-delete-prints`, this variable shall be reset to `nil`.
(defvar jd:cpp-print-active nil)

;; Specific value to be printed (if any) in this sequence of prints; upon
;; `jd:cpp-print-delete-prints`, this variable shall be reset to `nil`.
(defvar jd:cpp-print-value nil)

;; Incrementally-numbered print string that could include additional
;; information based on the value of `jd:cpp-print-value`; upon
;; `jd:cpp-print-delete-prints`, this variable shall be reset to `nil`.
(defvar jd:cpp-print-string nil)

;; Number of total prints that have been printed; upon
;; `jd:cpp-print-delete-prints`, all prints that have been accounted for shall
;; be deleted.
(defvar jd:cpp-print-count 0)

;; Print a string for quickly debugging code. The location of these prints shall
;; be saved in registers, so that a call to `jd:cpp-print-delete-prints` will
;; know where to go for the deletion of the prints in the buffer.
(defun jd:cpp-print-add-print ()
  (interactive)
  (read-only-mode 0)
  (if (null jd:cpp-print-active)
      (progn
        (setq jd:cpp-print-value (read-from-minibuffer "Enter a value to print (if any): "))
        (if (not (= (length jd:cpp-print-value) 0))
            (setq jd:cpp-print-string (concat " /*jd:cpp-print*/ std::cout << \"---"
                                              (number-to-string jd:cpp-print-count)
                                              "---\" << "
                                              jd:cpp-print-value
                                              " << '\\n';"))
          (setq jd:cpp-print-string (concat " /*jd:cpp-print*/ std::cout << \"---"
                                            (number-to-string jd:cpp-print-count)
                                            "---\" << '\\n';"))))
    (progn
      (if (= (length jd:cpp-print-value) 0)
          (setq jd:cpp-print-string (concat " /*jd:cpp-print*/ std::cout << \"---"
                                            (number-to-string jd:cpp-print-count)
                                            "---\" << '\\n';"))
        (setq jd:cpp-print-string (concat " /*jd:cpp-print*/ std::cout << \"---"
                                          (number-to-string jd:cpp-print-count)
                                          "---\" << "
                                          jd:cpp-print-value
                                          " << '\\n';")))))
  (if (null jd:cpp-print-active)
      (setq jd:cpp-print-active t))
  (point-to-register jd:cpp-print-count)
  (insert jd:cpp-print-string)
  (indent-for-tab-command)
  (setq jd:cpp-print-count (1+ jd:cpp-print-count))
  (read-only-mode 1))

;; When you are finished debugging, a call to this function shall delete all of
;; the print strings accordingly and reset all state variables having to do with
;; this library.
(defun jd:cpp-print-delete-prints ()
  (interactive)
  (read-only-mode 0)
  (save-excursion
    (let ((i 0))
      (while (< i jd:cpp-print-count)
        (progn
          (jump-to-register i)
          (delete-region (point)
                         (save-excursion
                           (end-of-line)
                           (point)))
          (setq i (1+ i))))))
  (setq jd:cpp-print-active nil)
  (setq jd:cpp-print-value nil)
  (setq jd:cpp-print-string nil)
  (setq jd:cpp-print-count 0))

(provide 'jd:cpp-print)
