(defun jd:obliterate-theme (&rest _)
  "Obliterate theme.
  Courtesy: https://emacs.stackexchange.com/questions/55715"
  (dolist (face (face-list))
    (set-face-attribute face nil
                        :family "Monospace"
                        ;; :foundry nil
                        :width 'normal
                        :height 98
                        :weight 'normal
                        :slant 'normal
                        :foreground nil
                        :background nil
                        :underline nil
                        :overline nil
                        :strike-through nil
                        :box nil
                        :inverse-video nil
                        :stipple nil
                        ;; :font nil
                        :inherit nil)))

(defconst jd:black "#000000")
(defconst jd:grey0 "#5a5a5a")
(defconst jd:grey1 "#787878")
(defconst jd:grey2 "#969696")
(defconst jd:grey3 "#b4b4b4")
(defconst jd:grey4 "#d2d2d2")
(defconst jd:grey5 "#f0f0f0")
(defconst jd:yello "#cdcd00")
(defconst jd:white "#ffffff")
(defconst jd:reddd "#ff0000")

(defun jd:initialize-theme (&rest _)
  "Initialize theme."
  (custom-set-faces
   ;; Company.
   `(company-scrollbar-bg ((t (:background ,jd:grey5))))
   `(company-scrollbar-fg ((t (:background ,jd:black))))
   `(company-tooltip ((t (:background ,jd:grey5))))
   `(company-tooltip-annotation ((t (:background ,jd:grey5))))
   `(company-tooltip-annotation-selection ((t (:background ,jd:grey4))))
   `(company-tooltip-common ((t (:background ,jd:grey5 :underline (:color ,jd:black)))))
   `(company-tooltip-common-selection ((t (:background ,jd:grey4 :underline (:color ,jd:black)))))
   `(company-tooltip-mouse ((t (:background ,jd:grey4 :underline (:color ,jd:black)))))
   `(company-tooltip-selection ((t (:background ,jd:grey4))))

   ;; Idle Highlight
   `(idle-highlight ((t (:background ,jd:grey4))))
   
   ;; Ivy.
   `(ivy-current-match ((t (:background ,jd:grey4))))
   `(ivy-minibuffer-match-face-1 ((t (:underline (:color ,jd:black)))))
   '(ivy-minibuffer-match-face-2 ((t (:inherit ivy-minibuffer-match-face-1))))
   '(ivy-minibuffer-match-face-3 ((t (:inherit ivy-minibuffer-match-face-1))))
   '(ivy-minibuffer-match-face-4 ((t (:inherit ivy-minibuffer-match-face-1))))
   
   ;; Swiper.
   `(swiper-background-match-face-1 ((t (:background ,jd:yello))))
   '(swiper-background-match-face-2 ((t (:inherit swiper-background-match-face-1))))
   '(swiper-background-match-face-3 ((t (:inherit swiper-background-match-face-1))))
   '(swiper-background-match-face-4 ((t (:inherit swiper-background-match-face-1))))
   `(swiper-line-face ((t (:background ,jd:grey4))))
   `(swiper-match-face-1 ((t (:background ,jd:yello))))
   '(swiper-match-face-2 ((t (:inherit swiper-match-face-1))))
   '(swiper-match-face-3 ((t (:inherit swiper-match-face-1))))
   '(swiper-match-face-4 ((t (:inherit swiper-match-face-1))))
   
   ;; Yasnippet
   `(yas--field-debug-face ((t (:background ,jd:grey4))))
   
   ;; Misc.
   `(highlight ((t (:background ,jd:grey2))))
   `(lazy-highlight ((t (:background ,jd:grey2))))
   `(linum ((t (:background ,jd:white :foreground ,jd:black))))
   `(mode-line ((t (:background ,jd:grey0 :foreground ,jd:white))))
   `(mode-line-inactive ((t (:background ,jd:grey5))))
   `(query-replace ((t (:background ,jd:grey2))))
   `(reb-match-0 ((t (:background ,jd:grey2))))
   `(region ((t (:background ,jd:grey2))))
   `(show-paren-match ((t (:background ,jd:grey4))))
   `(show-paren-mismatch ((t (:background ,jd:reddd)))))
  (if (null after-init)
      (progn
        (add-to-list 'after-load-functions 'jd:initialize-theme)
        (add-to-list 'after-load-functions 'jd:obliterate-theme)
        (setq after-init t))))

(defvar after-init nil
  "To control the hooks called in all subsequent loads. This is to get around my
  convention of explicitly loading files during init.")

;; `jd:initialize-theme` must execute before `jd:obliterate-theme`.
(add-to-list 'after-init-hook 'jd:initialize-theme)

;; `jd:obliterate-theme` must execute after `jd:initialize-theme`.
(add-to-list 'after-init-hook 'jd:obliterate-theme)

(jd:provide-feature jd:establish-theme)
