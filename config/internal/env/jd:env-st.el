(setenv "CC"
        (concat
         "clang"))

(setenv "CXX"
        (concat
         "clang++"))

(setenv "LD_LIBRARY_PATH"
        (concat
         "/home/i/install/lib"))

(setenv "PATH"
        (concat
         "/home/i/install/bin:"
         "/bin:"
         "/sbin:"
         "/usr/bin:"
         "/usr/sbin:"
         "/usr/local/bin:"
         "/usr/local/sbin"))

(provide 'jd:env-st)
