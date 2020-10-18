(jd:load-feature compile (concat jd:site-lisp-prefix "/progmodes/"))
(jd:load-feature jd:compile-kb jd:internal-prefix "/progmodes/compile/")
(jd:load-feature jd:compile-st jd:internal-prefix "/progmodes/compile/")

(jd:provide-feature jd:compile)
