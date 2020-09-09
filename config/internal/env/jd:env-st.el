(setenv "CC"
        (concat
         "/home/i/install/bin/clang"))

(setenv "CXX"
        (concat
         "/home/i/install/bin/clang++"))

(setenv "HISTFILE"
        (concat
         "/home/i/.bash_history"))

(setenv "LD_LIBRARY_PATH"
        (concat
         "/home/i/install/lib"
         "/root/install/lib"))

(setenv "PATH"
        (concat
         "/home/i/install/bin:"
         "/root/install/bin:"
         "/bin:"
         "/sbin:"
         "/usr/bin:"
         "/usr/sbin:"
         "/usr/local/bin:"
         "/usr/local/sbin"))

(jd:provide-feature jd:env-st)
