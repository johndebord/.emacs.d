(jd:provide-feature jd:menu-bar-kb)

;; File: $HOME/install/share/emacs/26.3.50/lisp/menu-bar.elc
;; 
;; menu-bar-showhide-window-divider-menu
;; -------------------------------------
;; key             binding
;; ---             -------
;; 
;; <bottom-and-right>              menu-bar-bottom-and-right-window-divider
;; <bottom-only>                   menu-bar-bottom-window-divider
;; <customize>                     menu-bar-window-divider-customize
;; <no-divider>                    menu-bar-no-window-divider
;; <right-only>                    menu-bar-right-window-divider
;; 
;; menu-bar-options-menu
;; ---------------------
;; key             binding
;; ---             -------
;; 
;; <blink-cursor-mode>             blink-cursor-mode
;; <cua-emulation-mode>            cua-mode
;; <cua-mode>      cua-mode
;; <customize>     Prefix Command
;; <debug-on-error>                toggle-debug-on-error
;; <debug-on-quit>                 toggle-debug-on-quit
;; <highlight-paren-mode>          show-paren-mode
;; <line-wrapping>                 Prefix Command
;; <menu-set-font>                 menu-set-font
;; <menu-system-font>              toggle-use-system-font
;; <mule>          Prefix Command
;; <package>       package-list-packages
;; <save>          menu-bar-options-save
;; <save-place>    toggle-save-place-globally
;; <search-options>                Prefix Command
;; <showhide>      Prefix Command
;; <transient-mark-mode>           transient-mark-mode
;; <uniquify>      toggle-uniquify-buffer-names
;; 
;; <line-wrapping> <truncate>      ??
;; <line-wrapping> <window-wrap>   ??
;; <line-wrapping> <word-wrap>     ??
;; 
;; <search-options> <case-fold-search>
;;                                 toggle-case-fold-search
;; <search-options> <char-fold-to-regexp>
;;                                 ??
;; <search-options> <isearch-symbol-regexp>
;;                                 ??
;; <search-options> <regexp-search>
;;                                 ??
;; <search-options> <regular-search>
;;                                 ??
;; <search-options> <word-search-regexp>
;;                                 ??
;; 
;; <mule> <describe-coding-system>
;;                                 describe-coding-system
;; <mule> <describe-input-method>  describe-input-method
;; <mule> <describe-language-environment>
;;                                 Prefix Command
;; <mule> <list-character-sets>    list-character-sets
;; <mule> <mule-diag>              mule-diag
;; <mule> <set-input-method>       set-input-method
;; <mule> <set-language-environment>
;;                                 Prefix Command
;; <mule> <set-various-coding-system>
;;                                 Prefix Command
;; <mule> <toggle-input-method>    toggle-input-method
;; <mule> <view-hello-file>        view-hello-file
;; 
;; <showhide> <column-number-mode>
;;                                 column-number-mode
;; <showhide> <display-line-numbers>
;;                                 Prefix Command
;; <showhide> <line-number-mode>   line-number-mode
;; <showhide> <menu-bar-mode>      toggle-menu-bar-mode-from-frame
;; <showhide> <showhide-battery>   display-battery-mode
;; <showhide> <showhide-date-time>
;;                                 display-time-mode
;; <showhide> <showhide-fringe>    Prefix Command
;; <showhide> <showhide-scroll-bar>
;;                                 Prefix Command
;; <showhide> <showhide-speedbar>  speedbar-frame-mode
;; <showhide> <showhide-tool-bar>  Prefix Command
;; <showhide> <showhide-tooltip-mode>
;;                                 tooltip-mode
;; <showhide> <showhide-window-divider>
;;                                 Prefix Command
;; <showhide> <size-indication-mode>
;;                                 size-indication-mode
;; 
;; <customize> <customize>         customize
;; <customize> <customize-apropos>
;;                                 customize-apropos
;; <customize> <customize-apropos-faces>
;;                                 customize-apropos-faces
;; <customize> <customize-apropos-options>
;;                                 customize-apropos-options
;; <customize> <customize-browse>  customize-browse
;; <customize> <customize-changed-options>
;;                                 customize-changed-options
;; <customize> <customize-face>    customize-face
;; <customize> <customize-group>   customize-group
;; <customize> <customize-option>  customize-option
;; <customize> <customize-saved>   customize-saved
;; <customize> <customize-themes>  customize-themes
;; 
;; <mule> <set-language-environment> <ASCII>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Arabic>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Burmese>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Cham>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Chinese>
;;                                 setup-chinese-environment-map
;; <mule> <set-language-environment> <Cyrillic>
;;                                 setup-cyrillic-environment-map
;; <mule> <set-language-environment> <Default>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <English>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Ethiopic>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European>
;;                                 setup-european-environment-map
;; <mule> <set-language-environment> <Greek>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Hebrew>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <IPA>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Indian>
;;                                 setup-indian-environment-map
;; <mule> <set-language-environment> <Japanese>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Khmer>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Korean>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Lao>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Persian>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Sinhala>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <TaiViet>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Thai>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Tibetan>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Turkish>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <UTF-8>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Vietnamese>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Windows-1255>
;;                                 setup-specified-language-environment
;; 
;; <mule> <set-various-coding-system> <revert-buffer-with-coding-system>
;;                                 revert-buffer-with-coding-system
;; <mule> <set-various-coding-system> <set-buffer-file-coding-system>
;;                                 set-buffer-file-coding-system
;; <mule> <set-various-coding-system> <set-buffer-process-coding-system>
;;                                 set-buffer-process-coding-system
;; <mule> <set-various-coding-system> <set-file-name-coding-system>
;;                                 set-file-name-coding-system
;; <mule> <set-various-coding-system> <set-keyboard-coding-system>
;;                                 set-keyboard-coding-system
;; <mule> <set-various-coding-system> <set-next-selection-coding-system>
;;                                 set-next-selection-coding-system
;; <mule> <set-various-coding-system> <set-selection-coding-system>
;;                                 set-selection-coding-system
;; <mule> <set-various-coding-system> <set-terminal-coding-system>
;;                                 set-terminal-coding-system
;; <mule> <set-various-coding-system> <universal-coding-system-argument>
;;                                 universal-coding-system-argument
;; 
;; <mule> <describe-language-environment> <ASCII>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Arabic>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Burmese>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Chinese>
;;                                 describe-chinese-environment-map
;; <mule> <describe-language-environment> <Cyrillic>
;;                                 describe-cyrillic-environment-map
;; <mule> <describe-language-environment> <Default>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <English>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Ethiopic>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European>
;;                                 describe-european-environment-map
;; <mule> <describe-language-environment> <Greek>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Hebrew>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <IPA>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Indian>
;;                                 describe-indian-environment-map
;; <mule> <describe-language-environment> <Japanese>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Khmer>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Korean>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Lao>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Persian>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Sinhala>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <TaiViet>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Thai>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Tibetan>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Turkish>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <UTF-8>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Vietnamese>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Windows-1255>
;;                                 describe-specified-language-support
;; 
;; <showhide> <showhide-tool-bar> <showhide-tool-bar-bottom>
;;                                 menu-bar-showhide-tool-bar-menu-customize-enable-bottom
;; <showhide> <showhide-tool-bar> <showhide-tool-bar-left>
;;                                 menu-bar-showhide-tool-bar-menu-customize-enable-left
;; <showhide> <showhide-tool-bar> <showhide-tool-bar-none>
;;                                 menu-bar-showhide-tool-bar-menu-customize-disable
;; <showhide> <showhide-tool-bar> <showhide-tool-bar-right>
;;                                 menu-bar-showhide-tool-bar-menu-customize-enable-right
;; <showhide> <showhide-tool-bar> <showhide-tool-bar-top>
;;                                 menu-bar-showhide-tool-bar-menu-customize-enable-top
;; 
;; <showhide> <showhide-scroll-bar> <horizontal>
;;                                 horizontal-scroll-bar-mode
;; <showhide> <showhide-scroll-bar> <left>
;;                                 menu-bar-left-scroll-bar
;; <showhide> <showhide-scroll-bar> <none>
;;                                 menu-bar-no-scroll-bar
;; <showhide> <showhide-scroll-bar> <right>
;;                                 menu-bar-right-scroll-bar
;; 
;; <showhide> <showhide-fringe> <customize>
;;                                 menu-bar-showhide-fringe-menu-customize
;; <showhide> <showhide-fringe> <default>
;;                                 menu-bar-showhide-fringe-menu-customize-reset
;; <showhide> <showhide-fringe> <indicate-empty-lines>
;;                                 toggle-indicate-empty-lines
;; <showhide> <showhide-fringe> <left>
;;                                 menu-bar-showhide-fringe-menu-customize-left
;; <showhide> <showhide-fringe> <none>
;;                                 menu-bar-showhide-fringe-menu-customize-disable
;; <showhide> <showhide-fringe> <right>
;;                                 menu-bar-showhide-fringe-menu-customize-right
;; <showhide> <showhide-fringe> <showhide-fringe-ind>
;;                                 Prefix Command
;; 
;; <showhide> <showhide-window-divider> <bottom-and-right>
;;                                 menu-bar-bottom-and-right-window-divider
;; <showhide> <showhide-window-divider> <bottom-only>
;;                                 menu-bar-bottom-window-divider
;; <showhide> <showhide-window-divider> <customize>
;;                                 menu-bar-window-divider-customize
;; <showhide> <showhide-window-divider> <no-divider>
;;                                 menu-bar-no-window-divider
;; <showhide> <showhide-window-divider> <right-only>
;;                                 menu-bar-right-window-divider
;; 
;; <showhide> <display-line-numbers> <absolute>
;;                                 ??
;; <showhide> <display-line-numbers> <global>
;;                                 global-display-line-numbers-mode
;; <showhide> <display-line-numbers> <none>
;;                                 ??
;; <showhide> <display-line-numbers> <relative>
;;                                 ??
;; <showhide> <display-line-numbers> <visual>
;;                                 ??
;; 
;; <mule> <set-language-environment> <Chinese> <Chinese-BIG5>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Chinese> <Chinese-CNS>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Chinese> <Chinese-EUC-TW>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Chinese> <Chinese-GB>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Chinese> <Chinese-GB18030>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Chinese> <Chinese-GBK>
;;                                 setup-specified-language-environment
;; 
;; <mule> <set-language-environment> <Cyrillic> <Belarusian>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Cyrillic> <Bulgarian>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Cyrillic> <Cyrillic-ALT>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Cyrillic> <Cyrillic-ISO>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Cyrillic> <Cyrillic-KOI8>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Cyrillic> <Russian>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Cyrillic> <Tajik>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Cyrillic> <Ukrainian>
;;                                 setup-specified-language-environment
;; 
;; <mule> <set-language-environment> <Indian> <Bengali>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Indian> <Devanagari>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Indian> <Gujarati>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Indian> <Kannada>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Indian> <Malayalam>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Indian> <Oriya>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Indian> <Punjabi>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Indian> <Tamil>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <Indian> <Telugu>
;;                                 setup-specified-language-environment
;; 
;; <mule> <set-language-environment> <European> <Brazilian Portuguese>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Catalan>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Croatian>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Czech>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Dutch>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Esperanto>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <French>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Georgian>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <German>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Italian>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Latin-1>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Latin-2>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Latin-3>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Latin-4>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Latin-5>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Latin-6>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Latin-7>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Latin-8>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Latin-9>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Latvian>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Lithuanian>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Polish>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Romanian>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Slovak>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Slovenian>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Spanish>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Swedish>
;;                                 setup-specified-language-environment
;; <mule> <set-language-environment> <European> <Welsh>
;;                                 setup-specified-language-environment
;; 
;; <mule> <describe-language-environment> <Chinese> <Chinese-BIG5>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Chinese> <Chinese-CNS>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Chinese> <Chinese-EUC-TW>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Chinese> <Chinese-GB>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Chinese> <Chinese-GB18030>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Chinese> <Chinese-GBK>
;;                                 describe-specified-language-support
;; 
;; <mule> <describe-language-environment> <Cyrillic> <Belarusian>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Cyrillic> <Bulgarian>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Cyrillic> <Cyrillic-ALT>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Cyrillic> <Cyrillic-ISO>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Cyrillic> <Cyrillic-KOI8>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Cyrillic> <Russian>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Cyrillic> <Tajik>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Cyrillic> <Ukrainian>
;;                                 describe-specified-language-support
;; 
;; <mule> <describe-language-environment> <Indian> <Bengali>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Indian> <Devanagari>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Indian> <Gujarati>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Indian> <Kannada>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Indian> <Malayalam>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Indian> <Oriya>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Indian> <Punjabi>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Indian> <Tamil>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <Indian> <Telugu>
;;                                 describe-specified-language-support
;; 
;; <mule> <describe-language-environment> <European> <Brazilian Portuguese>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Catalan>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Croatian>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Czech>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Dutch>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Esperanto>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <French>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Georgian>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <German>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Italian>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Latin-1>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Latin-2>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Latin-3>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Latin-4>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Latin-5>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Latin-6>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Latin-7>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Latin-8>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Latin-9>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Latvian>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Lithuanian>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Polish>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Romanian>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Slovak>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Slovenian>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Spanish>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Swedish>
;;                                 describe-specified-language-support
;; <mule> <describe-language-environment> <European> <Welsh>
;;                                 describe-specified-language-support
;; 
;; <showhide> <showhide-fringe> <showhide-fringe-ind> <box>
;;                                 menu-bar-showhide-fringe-ind-box
;; <showhide> <showhide-fringe> <showhide-fringe-ind> <customize>
;;                                 menu-bar-showhide-fringe-ind-customize
;; <showhide> <showhide-fringe> <showhide-fringe-ind> <left>
;;                                 menu-bar-showhide-fringe-ind-left
;; <showhide> <showhide-fringe> <showhide-fringe-ind> <mixed>
;;                                 menu-bar-showhide-fringe-ind-mixed
;; <showhide> <showhide-fringe> <showhide-fringe-ind> <none>
;;                                 menu-bar-showhide-fringe-ind-none
;; <showhide> <showhide-fringe> <showhide-fringe-ind> <right>
;;                                 menu-bar-showhide-fringe-ind-right
;; 
;; global-buffers-menu-map
;; -----------------------
;; key             binding
;; ---             -------
;; 
;; C-@             ??
;; C-a             ??
;; C-b             ??
;; C-c             ??
;; C-d             ??
;; C-e             ??
;; C-f             ??
;; C-g             ??
;; C-h             ??
;; TAB             ??
;; <list-all-buffers>              list-buffers
;; <next-buffer>                   next-buffer
;; <previous-buffer>               previous-buffer
;; <select-named-buffer>           switch-to-buffer
;; 
;; menu-bar-files-menu
;; -------------------
;; key             binding
;; ---             -------
;; 
;; <delete-this-frame>             delete-frame
;; <dired>         dired
;; <exit-emacs>    save-buffers-kill-terminal
;; <insert-file>   insert-file
;; <kill-buffer>   kill-this-buffer
;; <make-frame>    make-frame-command
;; <make-frame-on-display>         make-frame-on-display
;; <new-file>      find-file
;; <new-window-below>              split-window-below
;; <new-window-on-right>           split-window-right
;; <one-window>                    delete-other-windows
;; <open-file>                     menu-find-file-existing
;; <print-buffer>                  print-buffer
;; <print-region>                  print-region
;; <ps-print-buffer>               ps-print-buffer
;; <ps-print-buffer-faces>         ps-print-buffer-with-faces
;; <ps-print-region>               ps-print-region
;; <ps-print-region-faces>         ps-print-region-with-faces
;; <recover-session>               recover-session
;; <revert-buffer>                 revert-buffer
;; <save-buffer>                   save-buffer
;; <write-file>                    write-file
;; 
;; menu-bar-goto-menu
;; ------------------
;; key             binding
;; ---             -------
;; 
;; <beg-of-buf>    beginning-of-buffer
;; <end-of-buf>    end-of-buffer
;; <go-to-line>    goto-line
;; <go-to-pos>     goto-char
;; <set-tags-name>                 visit-tags-table
;; <xref-apropos>                  xref-find-apropos
;; <xref-find-def>                 xref-find-definitions
;; <xref-find-otherw>              xref-find-definitions-other-window
;; <xref-pop>      xref-pop-marker-stack
;; 
;; menu-bar-showhide-tool-bar-menu
;; -------------------------------
;; key             binding
;; ---             -------
;; 
;; <showhide-tool-bar-bottom>      menu-bar-showhide-tool-bar-menu-customize-enable-bottom
;; <showhide-tool-bar-left>        menu-bar-showhide-tool-bar-menu-customize-enable-left
;; <showhide-tool-bar-none>        menu-bar-showhide-tool-bar-menu-customize-disable
;; <showhide-tool-bar-right>       menu-bar-showhide-tool-bar-menu-customize-enable-right
;; <showhide-tool-bar-top>         menu-bar-showhide-tool-bar-menu-customize-enable-top
;; 
;; menu-bar-help-menu
;; ------------------
;; key             binding
;; ---             -------
;; 
;; <about-emacs>   about-emacs
;; <about-gnu-project>             describe-gnu-project
;; <describe>      Prefix Command
;; <describe-copying>              describe-copying
;; <describe-no-warranty>          describe-no-warranty
;; <emacs-faq>                     view-emacs-FAQ
;; <emacs-known-problems>          view-emacs-problems
;; <emacs-manual>                  info-emacs-manual
;; <emacs-manual-bug>              info-emacs-bug
;; <emacs-news>                    view-emacs-news
;; <emacs-psychotherapist>         doctor
;; <emacs-tutorial>                help-with-tutorial
;; <emacs-tutorial-language-specific>
;;                                 help-with-tutorial-spec-language
;; <external-packages>             view-external-packages
;; <find-emacs-packages>           finder-by-keyword
;; <getting-new-versions>          describe-distribution
;; <more-manuals>                  Prefix Command
;; <search-documentation>          Prefix Command
;; <send-emacs-bug-report>         report-emacs-bug
;; 
;; <search-documentation> <emacs-terminology>
;;                                 search-emacs-glossary
;; <search-documentation> <find-any-object-by-name>
;;                                 apropos
;; <search-documentation> <find-commands-by-name>
;;                                 apropos-command
;; <search-documentation> <find-option-by-value>
;;                                 apropos-value
;; <search-documentation> <find-options-by-name>
;;                                 apropos-user-option
;; <search-documentation> <lookup-command-in-manual>
;;                                 Info-goto-emacs-command-node
;; <search-documentation> <lookup-key-in-manual>
;;                                 Info-goto-emacs-key-command-node
;; <search-documentation> <lookup-subject-in-elisp-manual>
;;                                 elisp-index-search
;; <search-documentation> <lookup-subject-in-emacs-manual>
;;                                 emacs-index-search
;; <search-documentation> <search-documentation-strings>
;;                                 apropos-documentation
;; 
;; <describe> <describe-coding-system>
;;                                 describe-coding-system
;; <describe> <describe-coding-system-briefly>
;;                                 describe-current-coding-system-briefly
;; <describe> <describe-current-display-table>
;;                                 describe-current-display-table
;; <describe> <describe-face>      describe-face
;; <describe> <describe-function>  describe-function
;; <describe> <describe-input-method>
;;                                 describe-input-method
;; <describe> <describe-key-1>     describe-key
;; <describe> <describe-language-environment>
;;                                 Prefix Command
;; <describe> <describe-mode>      describe-mode
;; <describe> <describe-package>   describe-package
;; <describe> <describe-variable>  describe-variable
;; <describe> <list-keybindings>   describe-bindings
;; <describe> <mule-diag>          mule-diag
;; 
;; <more-manuals> <emacs-lisp-intro>
;;                                 menu-bar-read-lispintro
;; <more-manuals> <emacs-lisp-reference>
;;                                 menu-bar-read-lispref
;; <more-manuals> <lookup-subject-in-all-manuals>
;;                                 info-apropos
;; <more-manuals> <man>            manual-entry
;; <more-manuals> <order-emacs-manuals>
;;                                 view-order-manuals
;; <more-manuals> <other-manuals>  Info-directory
;; 
;; <describe> <describe-language-environment> <ASCII>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Arabic>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Burmese>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Chinese>
;;                                 describe-chinese-environment-map
;; <describe> <describe-language-environment> <Cyrillic>
;;                                 describe-cyrillic-environment-map
;; <describe> <describe-language-environment> <Default>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <English>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Ethiopic>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European>
;;                                 describe-european-environment-map
;; <describe> <describe-language-environment> <Greek>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Hebrew>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <IPA>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Indian>
;;                                 describe-indian-environment-map
;; <describe> <describe-language-environment> <Japanese>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Khmer>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Korean>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Lao>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Persian>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Sinhala>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <TaiViet>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Thai>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Tibetan>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Turkish>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <UTF-8>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Vietnamese>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Windows-1255>
;;                                 describe-specified-language-support
;; 
;; <describe> <describe-language-environment> <Chinese> <Chinese-BIG5>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Chinese> <Chinese-CNS>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Chinese> <Chinese-EUC-TW>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Chinese> <Chinese-GB>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Chinese> <Chinese-GB18030>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Chinese> <Chinese-GBK>
;;                                 describe-specified-language-support
;; 
;; <describe> <describe-language-environment> <Cyrillic> <Belarusian>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Cyrillic> <Bulgarian>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Cyrillic> <Cyrillic-ALT>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Cyrillic> <Cyrillic-ISO>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Cyrillic> <Cyrillic-KOI8>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Cyrillic> <Russian>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Cyrillic> <Tajik>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Cyrillic> <Ukrainian>
;;                                 describe-specified-language-support
;; 
;; <describe> <describe-language-environment> <Indian> <Bengali>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Indian> <Devanagari>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Indian> <Gujarati>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Indian> <Kannada>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Indian> <Malayalam>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Indian> <Oriya>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Indian> <Punjabi>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Indian> <Tamil>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <Indian> <Telugu>
;;                                 describe-specified-language-support
;; 
;; <describe> <describe-language-environment> <European> <Brazilian Portuguese>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Catalan>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Croatian>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Czech>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Dutch>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Esperanto>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <French>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Georgian>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <German>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Italian>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Latin-1>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Latin-2>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Latin-3>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Latin-4>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Latin-5>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Latin-6>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Latin-7>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Latin-8>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Latin-9>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Latvian>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Lithuanian>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Polish>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Romanian>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Slovak>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Slovenian>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Spanish>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Swedish>
;;                                 describe-specified-language-support
;; <describe> <describe-language-environment> <European> <Welsh>
;;                                 describe-specified-language-support
;; 
;; menu-bar-manuals-menu
;; ---------------------
;; key             binding
;; ---             -------
;; 
;; <emacs-lisp-intro>              menu-bar-read-lispintro
;; <emacs-lisp-reference>          menu-bar-read-lispref
;; <lookup-subject-in-all-manuals>
;;                                 info-apropos
;; <man>           manual-entry
;; <order-emacs-manuals>           view-order-manuals
;; <other-manuals>                 Info-directory
;; 
;; menu-bar-i-search-menu
;; ----------------------
;; key             binding
;; ---             -------
;; 
;; <isearch-backward>              isearch-backward
;; <isearch-backward-regexp>       isearch-backward-regexp
;; <isearch-forward>               isearch-forward
;; <isearch-forward-regexp>        isearch-forward-regexp
;; 
;; menu-bar-line-wrapping-menu
;; ---------------------------
;; key             binding
;; ---             -------
;; 
;; <truncate>      ??
;; <window-wrap>   ??
;; <word-wrap>     ??
;; 
;; menu-bar-search-options-menu
;; ----------------------------
;; key             binding
;; ---             -------
;; 
;; <case-fold-search>              toggle-case-fold-search
;; <char-fold-to-regexp>           ??
;; <isearch-symbol-regexp>         ??
;; <regexp-search>                 ??
;; <regular-search>                ??
;; <word-search-regexp>            ??
;; 
;; menu-bar-showhide-fringe-menu
;; -----------------------------
;; key             binding
;; ---             -------
;; 
;; <customize>     menu-bar-showhide-fringe-menu-customize
;; <default>       menu-bar-showhide-fringe-menu-customize-reset
;; <indicate-empty-lines>          toggle-indicate-empty-lines
;; <left>          menu-bar-showhide-fringe-menu-customize-left
;; <none>          menu-bar-showhide-fringe-menu-customize-disable
;; <right>         menu-bar-showhide-fringe-menu-customize-right
;; <showhide-fringe-ind>           Prefix Command
;; 
;; <showhide-fringe-ind> <box>     menu-bar-showhide-fringe-ind-box
;; <showhide-fringe-ind> <customize>
;;                                 menu-bar-showhide-fringe-ind-customize
;; <showhide-fringe-ind> <left>    menu-bar-showhide-fringe-ind-left
;; <showhide-fringe-ind> <mixed>   menu-bar-showhide-fringe-ind-mixed
;; <showhide-fringe-ind> <none>    menu-bar-showhide-fringe-ind-none
;; <showhide-fringe-ind> <right>   menu-bar-showhide-fringe-ind-right
;; 
;; menu-bar-showhide-line-numbers-menu
;; -----------------------------------
;; key             binding
;; ---             -------
;; 
;; <absolute>      ??
;; <global>        global-display-line-numbers-mode
;; <none>          ??
;; <relative>      ??
;; <visual>        ??
;; 
;; menu-bar-replace-menu
;; ---------------------
;; key             binding
;; ---             -------
;; 
;; <query-replace>                 query-replace
;; <query-replace-regexp>          query-replace-regexp
;; <tags-repl>                     tags-query-replace
;; <tags-repl-continue>            tags-loop-continue
;; 
;; menu-bar-search-documentation-menu
;; ----------------------------------
;; key             binding
;; ---             -------
;; 
;; <emacs-terminology>             search-emacs-glossary
;; <find-any-object-by-name>       apropos
;; <find-commands-by-name>         apropos-command
;; <find-option-by-value>          apropos-value
;; <find-options-by-name>          apropos-user-option
;; <lookup-command-in-manual>      Info-goto-emacs-command-node
;; <lookup-key-in-manual>          Info-goto-emacs-key-command-node
;; <lookup-subject-in-elisp-manual>
;;                                 elisp-index-search
;; <lookup-subject-in-emacs-manual>
;;                                 emacs-index-search
;; <search-documentation-strings>  apropos-documentation
;; 
;; menu-bar-file-menu
;; ------------------
;; key             binding
;; ---             -------
;; 
;; <delete-this-frame>             delete-frame
;; <dired>         dired
;; <exit-emacs>    save-buffers-kill-terminal
;; <insert-file>   insert-file
;; <kill-buffer>   kill-this-buffer
;; <make-frame>    make-frame-command
;; <make-frame-on-display>         make-frame-on-display
;; <new-file>      find-file
;; <new-window-below>              split-window-below
;; <new-window-on-right>           split-window-right
;; <one-window>                    delete-other-windows
;; <open-file>                     menu-find-file-existing
;; <print-buffer>                  print-buffer
;; <print-region>                  print-region
;; <ps-print-buffer>               ps-print-buffer
;; <ps-print-buffer-faces>         ps-print-buffer-with-faces
;; <ps-print-region>               ps-print-region
;; <ps-print-region-faces>         ps-print-region-with-faces
;; <recover-session>               recover-session
;; <revert-buffer>                 revert-buffer
;; <save-buffer>                   save-buffer
;; <write-file>                    write-file
;; 
;; menu-bar-search-menu
;; --------------------
;; key             binding
;; ---             -------
;; 
;; <i-search>      Prefix Command
;; <re-search-backward>            nonincremental-re-search-backward
;; <re-search-forward>             nonincremental-re-search-forward
;; <repeat-search-back>            nonincremental-repeat-search-backward
;; <repeat-search-fwd>             nonincremental-repeat-search-forward
;; <search-backward>               nonincremental-search-backward
;; <search-forward>                nonincremental-search-forward
;; <tags-continue>                 tags-loop-continue
;; <tags-srch>                     tags-search
;; 
;; <i-search> <isearch-backward>   isearch-backward
;; <i-search> <isearch-backward-regexp>
;;                                 isearch-backward-regexp
;; <i-search> <isearch-forward>    isearch-forward
;; <i-search> <isearch-forward-regexp>
;;                                 isearch-forward-regexp
;; 
;; menu-bar-describe-menu
;; ----------------------
;; key             binding
;; ---             -------
;; 
;; <describe-coding-system>        describe-coding-system
;; <describe-coding-system-briefly>
;;                                 describe-current-coding-system-briefly
;; <describe-current-display-table>
;;                                 describe-current-display-table
;; <describe-face>                 describe-face
;; <describe-function>             describe-function
;; <describe-input-method>         describe-input-method
;; <describe-key-1>                describe-key
;; <describe-language-environment>
;;                                 Prefix Command
;; <describe-mode>                 describe-mode
;; <describe-package>              describe-package
;; <describe-variable>             describe-variable
;; <list-keybindings>              describe-bindings
;; <mule-diag>                     mule-diag
;; 
;; <describe-language-environment> <ASCII>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Arabic>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Burmese>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Chinese>
;;                                 describe-chinese-environment-map
;; <describe-language-environment> <Cyrillic>
;;                                 describe-cyrillic-environment-map
;; <describe-language-environment> <Default>
;;                                 describe-specified-language-support
;; <describe-language-environment> <English>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Ethiopic>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European>
;;                                 describe-european-environment-map
;; <describe-language-environment> <Greek>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Hebrew>
;;                                 describe-specified-language-support
;; <describe-language-environment> <IPA>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Indian>
;;                                 describe-indian-environment-map
;; <describe-language-environment> <Japanese>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Khmer>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Korean>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Lao>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Persian>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Sinhala>
;;                                 describe-specified-language-support
;; <describe-language-environment> <TaiViet>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Thai>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Tibetan>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Turkish>
;;                                 describe-specified-language-support
;; <describe-language-environment> <UTF-8>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Vietnamese>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Windows-1255>
;;                                 describe-specified-language-support
;; 
;; <describe-language-environment> <Chinese> <Chinese-BIG5>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Chinese> <Chinese-CNS>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Chinese> <Chinese-EUC-TW>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Chinese> <Chinese-GB>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Chinese> <Chinese-GB18030>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Chinese> <Chinese-GBK>
;;                                 describe-specified-language-support
;; 
;; <describe-language-environment> <Cyrillic> <Belarusian>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Cyrillic> <Bulgarian>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Cyrillic> <Cyrillic-ALT>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Cyrillic> <Cyrillic-ISO>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Cyrillic> <Cyrillic-KOI8>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Cyrillic> <Russian>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Cyrillic> <Tajik>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Cyrillic> <Ukrainian>
;;                                 describe-specified-language-support
;; 
;; <describe-language-environment> <Indian> <Bengali>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Indian> <Devanagari>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Indian> <Gujarati>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Indian> <Kannada>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Indian> <Malayalam>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Indian> <Oriya>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Indian> <Punjabi>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Indian> <Tamil>
;;                                 describe-specified-language-support
;; <describe-language-environment> <Indian> <Telugu>
;;                                 describe-specified-language-support
;; 
;; <describe-language-environment> <European> <Brazilian Portuguese>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Catalan>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Croatian>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Czech>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Dutch>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Esperanto>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <French>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Georgian>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <German>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Italian>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Latin-1>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Latin-2>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Latin-3>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Latin-4>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Latin-5>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Latin-6>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Latin-7>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Latin-8>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Latin-9>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Latvian>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Lithuanian>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Polish>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Romanian>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Slovak>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Slovenian>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Spanish>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Swedish>
;;                                 describe-specified-language-support
;; <describe-language-environment> <European> <Welsh>
;;                                 describe-specified-language-support
;; 
;; menu-bar-showhide-fringe-ind-menu
;; ---------------------------------
;; key             binding
;; ---             -------
;; 
;; <box>           menu-bar-showhide-fringe-ind-box
;; <customize>     menu-bar-showhide-fringe-ind-customize
;; <left>          menu-bar-showhide-fringe-ind-left
;; <mixed>         menu-bar-showhide-fringe-ind-mixed
;; <none>          menu-bar-showhide-fringe-ind-none
;; <right>         menu-bar-showhide-fringe-ind-right
;; 
;; menu-bar-encryption-decryption-menu
;; -----------------------------------
;; key             binding
;; ---             -------
;; 
;; <decrypt-file>  epa-decrypt-file
;; <decrypt-region>                epa-decrypt-region
;; <encrypt-file>                  epa-encrypt-file
;; <encrypt-region>                epa-encrypt-region
;; <export-keys>                   epa-export-keys
;; <import-keys>                   epa-import-keys
;; <import-keys-region>            epa-import-keys-region
;; <insert-keys>                   epa-insert-keys
;; <list-keys>                     epa-list-keys
;; <sign-file>                     epa-sign-file
;; <sign-region>                   epa-sign-region
;; <verify-file>                   epa-verify-file
;; <verify-region>                 epa-verify-region
;; 
;; tty-menu-navigation-map
;; -----------------------
;; key             binding
;; ---             -------
;; 
;; C-b             tty-menu-prev-menu
;; C-f             tty-menu-next-menu
;; C-g             tty-menu-exit
;; C-j             tty-menu-select
;; RET             tty-menu-select
;; C-n             tty-menu-next-item
;; C-p             tty-menu-prev-item
;; C-r             tty-menu-select
;; ESC             Prefix Command
;; <C-down-mouse-1>                tty-menu-ignore
;; <C-down-mouse-2>                tty-menu-ignore
;; <C-down-mouse-3>                tty-menu-ignore
;; <S-drag-mouse-1>                tty-menu-next-item
;; <S-drag-mouse-2>                tty-menu-prev-item
;; <S-drag-mouse-3>                tty-menu-prev-item
;; <S-mouse-1>                     tty-menu-next-item
;; <S-mouse-2>                     tty-menu-prev-item
;; <S-mouse-3>                     tty-menu-prev-item
;; <down>          tty-menu-next-item
;; <down-mouse-1>  tty-menu-ignore
;; <drag-mouse-1>  tty-menu-select
;; <drag-mouse-2>  tty-menu-select
;; <drag-mouse-3>  tty-menu-select
;; <f10>           tty-menu-exit
;; <header-line>   Prefix Command
;; <left>          tty-menu-prev-menu
;; <linefeed>      tty-menu-select
;; <mode-line>     Prefix Command
;; <mouse-1>       tty-menu-select
;; <mouse-2>       tty-menu-select
;; <mouse-3>       tty-menu-select
;; <mouse-movement>                tty-menu-mouse-movement
;; <return>        tty-menu-select
;; <right>         tty-menu-next-menu
;; <up>            tty-menu-prev-item
;; <wheel-down>    tty-menu-next-item
;; <wheel-left>    tty-menu-prev-menu
;; <wheel-right>   tty-menu-next-menu
;; <wheel-up>      tty-menu-prev-item
;; 
;; <mode-line> <C-down-mouse-1>    tty-menu-ignore
;; <mode-line> <C-down-mouse-2>    tty-menu-ignore
;; <mode-line> <C-down-mouse-3>    tty-menu-ignore
;; <mode-line> <down-mouse-1>      tty-menu-ignore
;; <mode-line> <down-mouse-2>      tty-menu-ignore
;; <mode-line> <down-mouse-3>      tty-menu-ignore
;; 
;; <header-line> <drag-mouse-1>    tty-menu-select
;; <header-line> <mouse-1>         tty-menu-select
;; 
;; ESC ESC         Prefix Command
;; 
;; ESC ESC ESC     tty-menu-exit
;; 
;; menu-bar-showhide-scroll-bar-menu
;; ---------------------------------
;; key             binding
;; ---             -------
;; 
;; <horizontal>    horizontal-scroll-bar-mode
;; <left>          menu-bar-left-scroll-bar
;; <none>          menu-bar-no-scroll-bar
;; <right>         menu-bar-right-scroll-bar
;; 
;; menu-bar-games-menu
;; -------------------
;; key             binding
;; ---             -------
;; 
;; <5x5>           5x5
;; <adventure>     dunnet
;; <black-box>     blackbox
;; <bubbles>       bubbles
;; <gomoku>        gomoku
;; <hanoi>         hanoi
;; <life>          life
;; <mult>          mpuz
;; <pong>          pong
;; <snake>         snake
;; <solitaire>     solitaire
;; <tetris>        tetris
;; <zone>          zone
;; 
;; menu-bar-edit-menu
;; ------------------
;; key             binding
;; ---             -------
;; 
;; <bookmark>      menu-bar-bookmark-map
;; <clear>         delete-region
;; <copy>          kill-ring-save
;; <cut>           kill-region
;; <fill>          fill-region
;; <goto>          Prefix Command
;; <hi-lock>       Prefix Command
;; <mark-whole-buffer>             mark-whole-buffer
;; <paste>         yank
;; <paste-from-menu>               yank-menu
;; <props>         facemenu-menu
;; <replace>       Prefix Command
;; <search>        Prefix Command
;; <undo>          undo
;; 
;; <search> <i-search>             Prefix Command
;; <search> <re-search-backward>   nonincremental-re-search-backward
;; <search> <re-search-forward>    nonincremental-re-search-forward
;; <search> <repeat-search-back>   nonincremental-repeat-search-backward
;; <search> <repeat-search-fwd>    nonincremental-repeat-search-forward
;; <search> <search-backward>      nonincremental-search-backward
;; <search> <search-forward>       nonincremental-search-forward
;; <search> <tags-continue>        tags-loop-continue
;; <search> <tags-srch>            tags-search
;; 
;; <replace> <query-replace>       query-replace
;; <replace> <query-replace-regexp>
;;                                 query-replace-regexp
;; <replace> <tags-repl>           tags-query-replace
;; <replace> <tags-repl-continue>  tags-loop-continue
;; 
;; <goto> <beg-of-buf>             beginning-of-buffer
;; <goto> <end-of-buf>             end-of-buffer
;; <goto> <go-to-line>             goto-line
;; <goto> <go-to-pos>              goto-char
;; <goto> <set-tags-name>          visit-tags-table
;; <goto> <xref-apropos>           xref-find-apropos
;; <goto> <xref-find-def>          xref-find-definitions
;; <goto> <xref-find-otherw>       xref-find-definitions-other-window
;; <goto> <xref-pop>               xref-pop-marker-stack
;; 
;; <bookmark> <delete>             bookmark-delete
;; <bookmark> <edit>               bookmark-bmenu-list
;; <bookmark> <insert>             bookmark-insert
;; <bookmark> <jump>               bookmark-jump
;; <bookmark> <load>               bookmark-load
;; <bookmark> <locate>             bookmark-locate
;; <bookmark> <rename>             bookmark-rename
;; <bookmark> <save>               bookmark-save
;; <bookmark> <set>                bookmark-set
;; <bookmark> <write>              bookmark-write
;; 
;; <props> <bg>    facemenu-background-menu
;; <props> <dc>    list-colors-display
;; <props> <df>    list-faces-display
;; <props> <dp>    describe-text-properties
;; <props> <fc>    facemenu-face-menu
;; <props> <fg>    facemenu-foreground-menu
;; <props> <in>    facemenu-indentation-menu
;; <props> <ju>    facemenu-justification-menu
;; <props> <ra>    facemenu-remove-all
;; <props> <rm>    facemenu-remove-face-props
;; <props> <sp>    facemenu-special-menu
;; 
;; <hi-lock> <hi-lock-find-patterns>
;;                                 hi-lock-find-patterns
;; <hi-lock> <hi-lock-write-interactive-patterns>
;;                                 hi-lock-write-interactive-patterns
;; <hi-lock> <highlight-lines-matching-regexp>
;;                                 highlight-lines-matching-regexp
;; <hi-lock> <highlight-phrase>    highlight-phrase
;; <hi-lock> <highlight-regexp>    highlight-regexp
;; <hi-lock> <highlight-symbol-at-point>
;;                                 highlight-symbol-at-point
;; <hi-lock> <unhighlight-regexp>  unhighlight-regexp
;; 
;; <search> <i-search> <isearch-backward>
;;                                 isearch-backward
;; <search> <i-search> <isearch-backward-regexp>
;;                                 isearch-backward-regexp
;; <search> <i-search> <isearch-forward>
;;                                 isearch-forward
;; <search> <i-search> <isearch-forward-regexp>
;;                                 isearch-forward-regexp
;; 
;; <props> <fc> b  facemenu-set-bold
;; <props> <fc> d  facemenu-set-default
;; <props> <fc> i  facemenu-set-italic
;; <props> <fc> l  facemenu-set-bold-italic
;; <props> <fc> o  facemenu-set-face
;; <props> <fc> u  facemenu-set-underline
;; 
;; <props> <fg> o  facemenu-set-foreground
;; 
;; <props> <bg> o  facemenu-set-background
;; 
;; <props> <sp> r  facemenu-set-read-only
;; <props> <sp> s  facemenu-remove-special
;; <props> <sp> t  facemenu-set-intangible
;; <props> <sp> v  facemenu-set-invisible
;; 
;; <props> <ju> b  set-justification-full
;; <props> <ju> c  set-justification-center
;; <props> <ju> l  set-justification-left
;; <props> <ju> r  set-justification-right
;; <props> <ju> u  set-justification-none
;; 
;; <props> <in> <decrease-left-margin>
;;                                 decrease-left-margin
;; <props> <in> <decrease-right-margin>
;;                                 decrease-right-margin
;; <props> <in> <increase-left-margin>
;;                                 increase-left-margin
;; <props> <in> <increase-right-margin>
;;                                 increase-right-margin
;; 
;; menu-bar-tools-menu
;; -------------------
;; key             binding
;; ---             -------
;; 
;; <browse-web>    browse-web
;; <calc>          calc
;; <calendar>      calendar
;; <compare>       menu-bar-ediff-menu
;; <compile>       compile
;; <compose-mail>  compose-mail
;; <directory-search>              eudc-tools-menu
;; <ede>           global-ede-mode
;; <ediff-merge>   menu-bar-ediff-merge-menu
;; <encryption-decryption>         Prefix Command
;; <epatch>        menu-bar-epatch-menu
;; <games>         Prefix Command
;; <gdb>           gdb
;; <gnus>          gnus
;; <grep>          grep
;; <rmail>         menu-bar-read-mail
;; <semantic>      semantic-mode
;; <shell>         shell-command
;; <shell-on-region>               shell-command-on-region
;; <simple-calculator>             calculator
;; <spell>         ispell-menu-map
;; 
;; <spell> <flyspell-mode>         flyspell-mode
;; <spell> <ispell-buffer>         ispell-buffer
;; <spell> <ispell-change-dictionary>
;;                                 ispell-change-dictionary
;; <spell> <ispell-comments-and-strings>
;;                                 ispell-comments-and-strings
;; <spell> <ispell-complete-word>  ispell-complete-word
;; <spell> <ispell-complete-word-interior-frag>
;;                                 ispell-complete-word-interior-frag
;; <spell> <ispell-continue>       ispell-continue
;; <spell> <ispell-customize>      ??
;; <spell> <ispell-help>           ??
;; <spell> <ispell-kill-ispell>    ??
;; <spell> <ispell-message>        ispell-message
;; <spell> <ispell-pdict-save>     ??
;; <spell> <ispell-region>         ispell-region
;; <spell> <ispell-word>           ispell-word
;; 
;; <compare> <ediff-buffers>       ediff-buffers
;; <compare> <ediff-buffers3>      ediff-buffers3
;; <compare> <ediff-dir-revision>  ediff-directory-revisions
;; <compare> <ediff-directories>   ediff-directories
;; <compare> <ediff-directories3>  ediff-directories3
;; <compare> <ediff-files>         ediff-files
;; <compare> <ediff-files3>        ediff-files3
;; <compare> <ediff-misc>          menu-bar-ediff-misc-menu
;; <compare> <ediff-regions-linewise>
;;                                 ediff-regions-linewise
;; <compare> <ediff-regions-wordwise>
;;                                 ediff-regions-wordwise
;; <compare> <ediff-revision>      ediff-revision
;; <compare> <ediff-windows-linewise>
;;                                 ediff-windows-linewise
;; <compare> <ediff-windows-wordwise>
;;                                 ediff-windows-wordwise
;; <compare> <window>              compare-windows
;; 
;; <ediff-merge> <ediff-merge-buffers>
;;                                 ediff-merge-buffers
;; <ediff-merge> <ediff-merge-buffers-with-ancestor>
;;                                 ediff-merge-buffers-with-ancestor
;; <ediff-merge> <ediff-merge-dir-revisions>
;;                                 ediff-merge-directory-revisions
;; <ediff-merge> <ediff-merge-dir-revisions-with-ancestor>
;;                                 ediff-merge-directory-revisions-with-ancestor
;; <ediff-merge> <ediff-merge-directories>
;;                                 ediff-merge-directories
;; <ediff-merge> <ediff-merge-directories-with-ancestor>
;;                                 ediff-merge-directories-with-ancestor
;; <ediff-merge> <ediff-merge-files>
;;                                 ediff-merge-files
;; <ediff-merge> <ediff-merge-files-with-ancestor>
;;                                 ediff-merge-files-with-ancestor
;; <ediff-merge> <ediff-merge-revisions>
;;                                 ediff-merge-revisions
;; <ediff-merge> <ediff-merge-revisions-with-ancestor>
;;                                 ediff-merge-revisions-with-ancestor
;; 
;; <epatch> <ediff-patch-buffer>   ediff-patch-buffer
;; <epatch> <ediff-patch-file>     ediff-patch-file
;; 
;; <vc> <vc-annotate>              vc-annotate
;; <vc> <vc-create-tag>            vc-create-tag
;; <vc> <vc-diff>                  vc-diff
;; <vc> <vc-dir>                   vc-dir
;; <vc> <vc-ignore>                vc-ignore
;; <vc> <vc-insert-header>         vc-insert-headers
;; <vc> <vc-log-in>                vc-log-incoming
;; <vc> <vc-log-out>               vc-log-outgoing
;; <vc> <vc-next-action>           vc-next-action
;; <vc> <vc-print-log>             vc-print-log
;; <vc> <vc-print-root-log>        vc-print-root-log
;; <vc> <vc-push>                  vc-push
;; <vc> <vc-register>              vc-register
;; <vc> <vc-rename-file>           vc-rename-file
;; <vc> <vc-retrieve-tag>          vc-retrieve-tag
;; <vc> <vc-revert>                vc-revert
;; <vc> <vc-revision-other-window>
;;                                 vc-revision-other-window
;; <vc> <vc-root-diff>             vc-root-diff
;; <vc> <vc-update>                vc-update
;; <vc> <vc-update-change-log>     vc-update-change-log
;; 
;; <directory-search> <email>      eudc-get-email
;; <directory-search> <expand-inline>
;;                                 eudc-expand-inline
;; <directory-search> <load>       eudc-load-eudc
;; <directory-search> <new>        eudc-set-server
;; <directory-search> <phone>      eudc-get-phone
;; <directory-search> <query>      eudc-query-form
;; 
;; <encryption-decryption> <decrypt-file>
;;                                 epa-decrypt-file
;; <encryption-decryption> <decrypt-region>
;;                                 epa-decrypt-region
;; <encryption-decryption> <encrypt-file>
;;                                 epa-encrypt-file
;; <encryption-decryption> <encrypt-region>
;;                                 epa-encrypt-region
;; <encryption-decryption> <export-keys>
;;                                 epa-export-keys
;; <encryption-decryption> <import-keys>
;;                                 epa-import-keys
;; <encryption-decryption> <import-keys-region>
;;                                 epa-import-keys-region
;; <encryption-decryption> <insert-keys>
;;                                 epa-insert-keys
;; <encryption-decryption> <list-keys>
;;                                 epa-list-keys
;; <encryption-decryption> <sign-file>
;;                                 epa-sign-file
;; <encryption-decryption> <sign-region>
;;                                 epa-sign-region
;; <encryption-decryption> <verify-file>
;;                                 epa-verify-file
;; <encryption-decryption> <verify-region>
;;                                 epa-verify-region
;; 
;; <games> <5x5>   5x5
;; <games> <adventure>             dunnet
;; <games> <black-box>             blackbox
;; <games> <bubbles>               bubbles
;; <games> <gomoku>                gomoku
;; <games> <hanoi>                 hanoi
;; <games> <life>                  life
;; <games> <mult>                  mpuz
;; <games> <pong>                  pong
;; <games> <snake>                 snake
;; <games> <solitaire>             solitaire
;; <games> <tetris>                tetris
;; <games> <zone>                  zone
;; 
;; <compare> <ediff-misc> <ediff-cust>
;;                                 ediff-customize
;; <compare> <ediff-misc> <ediff-doc>
;;                                 ediff-documentation
;; <compare> <ediff-misc> <emultiframe>
;;                                 ediff-toggle-multiframe
;; <compare> <ediff-misc> <eregistry>
;;                                 ediff-show-registry
;; 
;; menu-bar-custom-menu
;; --------------------
;; key             binding
;; ---             -------
;; 
;; <customize>     customize
;; <customize-apropos>             customize-apropos
;; <customize-apropos-faces>       customize-apropos-faces
;; <customize-apropos-options>     customize-apropos-options
;; <customize-browse>              customize-browse
;; <customize-changed-options>     customize-changed-options
;; <customize-face>                customize-face
;; <customize-group>               customize-group
;; <customize-option>              customize-option
;; <customize-saved>               customize-saved
;; <customize-themes>              customize-themes
;; 
;; menu-bar-showhide-menu
;; ----------------------
;; key             binding
;; ---             -------
;; 
;; <column-number-mode>            column-number-mode
;; <display-line-numbers>          Prefix Command
;; <line-number-mode>              line-number-mode
;; <menu-bar-mode>                 toggle-menu-bar-mode-from-frame
;; <showhide-battery>              display-battery-mode
;; <showhide-date-time>            display-time-mode
;; <showhide-fringe>               Prefix Command
;; <showhide-scroll-bar>           Prefix Command
;; <showhide-speedbar>             speedbar-frame-mode
;; <showhide-tool-bar>             Prefix Command
;; <showhide-tooltip-mode>         tooltip-mode
;; <showhide-window-divider>       Prefix Command
;; <size-indication-mode>          size-indication-mode
;; 
;; <showhide-tool-bar> <showhide-tool-bar-bottom>
;;                                 menu-bar-showhide-tool-bar-menu-customize-enable-bottom
;; <showhide-tool-bar> <showhide-tool-bar-left>
;;                                 menu-bar-showhide-tool-bar-menu-customize-enable-left
;; <showhide-tool-bar> <showhide-tool-bar-none>
;;                                 menu-bar-showhide-tool-bar-menu-customize-disable
;; <showhide-tool-bar> <showhide-tool-bar-right>
;;                                 menu-bar-showhide-tool-bar-menu-customize-enable-right
;; <showhide-tool-bar> <showhide-tool-bar-top>
;;                                 menu-bar-showhide-tool-bar-menu-customize-enable-top
;; 
;; <showhide-scroll-bar> <horizontal>
;;                                 horizontal-scroll-bar-mode
;; <showhide-scroll-bar> <left>    menu-bar-left-scroll-bar
;; <showhide-scroll-bar> <none>    menu-bar-no-scroll-bar
;; <showhide-scroll-bar> <right>   menu-bar-right-scroll-bar
;; 
;; <showhide-fringe> <customize>   menu-bar-showhide-fringe-menu-customize
;; <showhide-fringe> <default>     menu-bar-showhide-fringe-menu-customize-reset
;; <showhide-fringe> <indicate-empty-lines>
;;                                 toggle-indicate-empty-lines
;; <showhide-fringe> <left>        menu-bar-showhide-fringe-menu-customize-left
;; <showhide-fringe> <none>        menu-bar-showhide-fringe-menu-customize-disable
;; <showhide-fringe> <right>       menu-bar-showhide-fringe-menu-customize-right
;; <showhide-fringe> <showhide-fringe-ind>
;;                                 Prefix Command
;; 
;; <showhide-window-divider> <bottom-and-right>
;;                                 menu-bar-bottom-and-right-window-divider
;; <showhide-window-divider> <bottom-only>
;;                                 menu-bar-bottom-window-divider
;; <showhide-window-divider> <customize>
;;                                 menu-bar-window-divider-customize
;; <showhide-window-divider> <no-divider>
;;                                 menu-bar-no-window-divider
;; <showhide-window-divider> <right-only>
;;                                 menu-bar-right-window-divider
;; 
;; <display-line-numbers> <absolute>
;;                                 ??
;; <display-line-numbers> <global>
;;                                 global-display-line-numbers-mode
;; <display-line-numbers> <none>   ??
;; <display-line-numbers> <relative>
;;                                 ??
;; <display-line-numbers> <visual>
;;                                 ??
;; 
;; <showhide-fringe> <showhide-fringe-ind> <box>
;;                                 menu-bar-showhide-fringe-ind-box
;; <showhide-fringe> <showhide-fringe-ind> <customize>
;;                                 menu-bar-showhide-fringe-ind-customize
;; <showhide-fringe> <showhide-fringe-ind> <left>
;;                                 menu-bar-showhide-fringe-ind-left
;; <showhide-fringe> <showhide-fringe-ind> <mixed>
;;                                 menu-bar-showhide-fringe-ind-mixed
;; <showhide-fringe> <showhide-fringe-ind> <none>
;;                                 menu-bar-showhide-fringe-ind-none
;; <showhide-fringe> <showhide-fringe-ind> <right>
;;                                 menu-bar-showhide-fringe-ind-right
