(defun jd:byte-compile-file ()
  (interactive)
  (byte-compile-file (buffer-file-name)))

(provide 'jd:bytecomp-st.el)
