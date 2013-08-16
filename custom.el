(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector [solarized-bg red green yellow blue magenta cyan solarized-fg])
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 211 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(coffee-args-compile (quote ("-c" "-o js")))
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(compilation-ask-about-save nil)
 '(compilation-auto-jump-to-first-error nil)
 '(compilation-scroll-output (quote first-error))
 '(css-indent-offset 3)
 '(custom-enabled-themes (quote (tsdh-light)))
 '(custom-safe-themes (quote ("526e738d6d89317f821becd58d3165b5ecf5afe336ff1c96e331fdfca5e8fe03" "af715c3ca73e944e497af01b5ab4e985909e468123a932fd2e96981900f402c0" "e8529b3c5ecf27ee61ee946714998a35d07f1c5c3f778fe26b324fdeb95f0e4a" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "9dca06b5ad047c5f5e6caf7ce63a88ac6a6309e7807281ce71fa55ed809c4e86" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "bf7ed640479049f1d74319ed004a9821072c1d9331bc1147e01d22748c18ebdf" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "211bb9b24001d066a646809727efb9c9a2665c270c753aa125bace5e899cb523" "71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" "ecfb3c1793f512784221c49126c884aeba2f82f8c90e5e465747f8276cab95c8" "578774dcad25cd8d2e0ff39528cc4ada645dc7907c48a638424ec9aad8947caf" "da79193a8502c5959eb48117781ef849b0ca5ff79be5fd1a56bce9d15355e318" "77ae2863b2f53b83b9cad0e5ea5e298b46bcb47a5f39dc05c7d5feaa72278198" "717b8e7c479356a4bc617fe717e8f5095f624b36bc855062e67747aaa286fcc4" "797669b12acde8b615f67649d1834c3fc4844b70728127b552ce6cf09a81fb91" "f40a859bab86132df135923308182d41bb8abd9119c19685c8bf181df71b5db0" "ece7a5475086d7a66dcf77854ac5d6b5b72d6544120154586d52ec734eb5eead" "c97ebcf01c5cdb540733efba36666517dd1637c1bbf66f40d2023663ff1a04a4" "01aab4f660f5ef1159d0b7a42bd0c2b884b7610b34c8ec8829fcfb857839c630" "caad708d84f6934db3b31f4116bb1c4f5fcf99686bd68d0269e9daedb5565670" "baed08a10ff9393ce578c3ea3e8fd4f8c86e595463a882c55f3bd617df7e5a45" "54d1bcf3fcf758af4812f98eb53b5d767f897442753e1aa468cfeb221f8734f9" "9d4a079112efbb698f941c82da3bc8138ba644a3a8742049da04fed8b9977883" "f7f676cd4428f33b6a83d99d181ebff3942686e168a78d583174358ef69009db" "8327109de3cb68be9e88a7837c6c57eefacf29e5b4bf0637c26cc6b95a075116" "7cd8074097c86bee5a787bc448b54a25e8809e4aba525ae3dfc9a4c5ccaff1fa" "8fae7236cb9be6a5ae053270e70d22186d860459cd51434ad533107855aa03d2" "180be8ecbfeebff1032191e90095149e58b0eeff86ea5a4f8dff4bf8b5de86ae" "72cc9ae08503b8e977801c6d6ec17043b55313cda34bcf0e6921f2f04cf2da56" "d2622a2a2966905a5237b54f35996ca6fda2f79a9253d44793cfe31079e3c92b" "501caa208affa1145ccbb4b74b6cd66c3091e41c5bb66c677feda9def5eab19c" default)))
 '(default-frame-alist (quote ((vertical-scroll-bars) (cursor-type . box) (internal-border-width . 0) (left-fringe . 1) (right-fringe) (fringe) (background-color . "#211E1E") (background-mode . dark) (background-toolbar-color . "#cf3ccf3ccf3c") (border-color . "Grey") (bottom-toolbar-shadow-color . "#79e77df779e7") (cursor-color . "#FFFFFF") (foreground-color . "#DADADA") (mouse-color . "Grey") (top-toolbar-shadow-color . "#fffffbeeffff") (viper-saved-cursor-color-in-replace-mode . "Red3"))))
 '(electric-pair-mode t)
 '(erc-modules (quote (autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring scrolltobottom smiley stamp spelling track)))
 '(erc-server "irc.freenode.net")
 '(ergoemacs-mode nil)
 '(fci-rule-color "#073642")
 '(flymake-allowed-file-name-masks (quote ((".+\\.lhs$" flymake-Haskell-init flymake-simple-java-cleanup) (".+\\.hs$" flymake-Haskell-init flymake-simple-java-cleanup) ("\\.\\(?:c\\(?:pp\\|xx\\|\\+\\+\\)?\\|CC\\)\\'" flymake-simple-make-init) ("\\.xml\\'" flymake-xml-init) ("\\.html?\\'" flymake-xml-init) ("\\.cs\\'" flymake-simple-make-init) ("\\.p[ml]\\'" flymake-perl-init) ("\\.php[345]?\\'" flymake-php-init) ("\\.h\\'" flymake-master-make-header-init flymake-master-cleanup) ("\\.java\\'" flymake-simple-make-java-init flymake-simple-java-cleanup) ("[0-9]+\\.tex\\'" flymake-master-tex-init flymake-master-cleanup) ("\\.tex\\'" flymake-simple-tex-init) ("\\.idl\\'" flymake-simple-make-init))))
 '(glasses-face (quote bold))
 '(glasses-original-separator " ")
 '(glasses-separate-parentheses-p nil)
 '(glasses-separator " ")
 '(glasses-uncapitalize-p nil)
 '(global-auto-revert-mode t)
 '(global-linum-mode nil)
 '(global-toby-mode t)
 '(haskell-font-lock-symbols (quote unicode) t)
 '(js-expr-indent-offset 2)
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-cleanup-whitespace t)
 '(js2-mirror-mode t)
 '(js2-mode-show-parse-errors nil)
 '(js2-mode-show-strict-warnings nil)
 '(magit-process-popup-time 20)
 '(ns-tool-bar-display-mode nil t)
 '(ns-tool-bar-size-mode nil t)
 '(org-agenda-files (quote ("~/Dropbox/org/ib-tasks.org" "~/Dropbox/org/my-tasks.org")))
 '(rbenv-installation-dir "/usr/local")
 '(revert-without-query (quote (".*")))
 '(rspec-compilation-buffer-name "*specs*")
 '(rspec-rake-command "bundle exec rake")
 '(rspec-spec-command " rspec ")
 '(rspec-use-bundler-when-possible nil)
 '(rspec-use-rake-flag nil)
 '(rspec-use-rake-when-possible nil)
 '(rspec-use-rvm nil)
 '(ruby-deep-arglist nil)
 '(ruby-deep-indent-paren nil)
 '(safe-local-variable-values (quote ((encoding . utf-8) (whitespace-line-column . 80) (lexical-binding . t))))
 '(visual-line-mode nil t)
 '(warning-minimum-level :error)
 '(whitespace-style (quote (trailing tab-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :foreground "#586e75"))))
 '(highlight ((t (:background "color-18" :foreground "white"))))
 '(hl-line ((t (:background "#002b36"))))
 '(magit-item-highlight ((t (:inherit highlight))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "wheat")))))
