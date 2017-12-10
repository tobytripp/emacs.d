(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   [solarized-bg red green yellow blue magenta cyan solarized-fg])
 '(cider-auto-test-mode t)
 '(coffee-args-compile (quote ("-c" "-o js")))
 '(coffee-tab-width 2)
 '(company-backends
   (quote
    (company-tern company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-cmake company-capf
                  (company-dabbrev-code company-gtags company-etags company-keywords)
                  company-oddmuse company-files company-dabbrev)))
 '(compilation-always-kill t)
 '(compilation-ask-about-save nil)
 '(compilation-auto-jump-to-first-error nil)
 '(compilation-scroll-output nil)
 '(css-indent-offset 3)
 '(custom-enabled-themes (quote (smart-mode-line-powerline)))
 '(custom-safe-themes
   (quote
    ("f396fd225b1da424caa8a55419801e8c0404b25e31197c39e38ea9ee0abe2832" "4666906bf6dc06853997136c12c5023aa0df2c78aa206a96204ec8e279967e69" "f04682537718d4b14a24adccfc4d58c1f7966278b59df0d64012fba06890f7cb" "42576c3986299aaf4fb2182b8b5b349c177a9b544b39982a1616cb846a239023" "d937ee7d1721f72a05318d1402aab4a27f71d2e68ce013e95ee0403effcd684e" "7f477c42e252940634702beeb4a080ae8102cd8bac754f3e3b55136381c1580b" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "dea90045cc16a3e4e6a497604563333b6278b23270ec8b316dd7348c10291b87" "ae2fcdc83b722029d011a3dc41b72b993f464288f3898c2c85c836fff8b230b7" "ce64c06d0dcdcdb456b12433c822f44f2911127a8c5f6c117dde0cc5820e8e37" "dbb3e7bdaa127dc6ab80d3980c9385fe10d6bd76431c0a2ae389e6fe8f0db213" "16fe858cd5e75a75bca18b373d1e9b7fa01218cfa9da931059d8fb4e4fb19ab5" "d6fddc764dc341ef53d2a6535d637689b9a84b99b1e781a91137121adc8fb848" "7d6fd48acf6e44b574f49e4bcb9ce960a103e9ffcd0b080955529bda92bd49f2" default)))
 '(debug-on-error t)
 '(default-frame-alist
    (quote
     (quote
      (quote
       (quote
        ((vertical-scroll-bars)
         (cursor-type . box)
         (internal-border-width . 0)
         (left-fringe . 1)
         (right-fringe)
         (fringe)
         (background-color . "#211E1E")
         (background-mode . dark)
         (background-toolbar-color . "#cf3ccf3ccf3c")
         (border-color . "Grey")
         \.\.\.))))))
 '(dired-auto-revert-buffer (quote dired-directory-changed-p))
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(electric-pair-mode nil)
 '(erc-away-nickname "(toby)")
 '(erc-interpret-mirc-color t)
 '(erc-modules (quote (autojoin button completion fill)))
 '(erc-nick "toby")
 '(erc-reuse-frames nil)
 '(erc-server "localhost")
 '(erc-server-reconnect-attempts 3)
 '(erc-show-my-nick nil)
 '(erc-user-full-name "Toby Tripp")
 '(ergoemacs-mode nil)
 '(eudc-default-return-attributes (quote all))
 '(eudc-duplicate-attribute-handling-method (quote list))
 '(eudc-protocol (quote ldap))
 '(eudc-query-form-attributes (quote (cn name firstname email)))
 '(eudc-strict-return-matches nil)
 '(eudc-use-raw-directory-names t)
 '(fci-rule-color "#073642")
 '(feature-cucumber-command
   "bundle exec cucumber -p guard CUCUMBER_OPTS=\"{options}\" {feature}")
 '(fill-column 78)
 '(flycheck-disabled-checkers (quote (ruby-rubocop)))
 '(flymake-allowed-file-name-masks
   (quote
    ((".+\\.lhs$" flymake-Haskell-init flymake-simple-java-cleanup)
     (".+\\.hs$" flymake-Haskell-init flymake-simple-java-cleanup)
     ("\\.\\(?:c\\(?:pp\\|xx\\|\\+\\+\\)?\\|CC\\)\\'" flymake-simple-make-init)
     ("\\.xml\\'" flymake-xml-init)
     ("\\.html?\\'" flymake-xml-init)
     ("\\.cs\\'" flymake-simple-make-init)
     ("\\.p[ml]\\'" flymake-perl-init)
     ("\\.php[345]?\\'" flymake-php-init)
     ("\\.h\\'" flymake-master-make-header-init flymake-master-cleanup)
     ("\\.java\\'" flymake-simple-make-java-init flymake-simple-java-cleanup)
     ("[0-9]+\\.tex\\'" flymake-master-tex-init flymake-master-cleanup)
     ("\\.tex\\'" flymake-simple-tex-init)
     ("\\.idl\\'" flymake-simple-make-init))))
 '(frame-resize-pixelwise t)
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(glasses-face (quote bold))
 '(glasses-original-separator " ")
 '(glasses-separate-parentheses-p nil)
 '(glasses-separator " ")
 '(glasses-uncapitalize-p nil)
 '(global-linum-mode nil)
 '(haskell-cabal-list-comma-position (quote after))
 '(haskell-font-lock-symbols (quote unicode))
 ;; '(highlight-changes-invisible-string " ¬𝛥")
 ;; '(highlight-changes-visible-string " 𝑑𝛥")
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-cleanup-whitespace t)
 '(js2-mirror-mode t)
 '(js2-mode-show-parse-errors nil)
 '(js2-mode-show-strict-warnings nil)
 '(ldap-host-parameters-alist
   (quote
    (("198.211.113.142:389" base "dc=mmtest" binddn "cn=admin,dc=mmtest" passwd "2funky4u" auth simple scope nil)
     ("localhost:389" base "dc=ldap,dc=masterymanager,dc=local" binddn "cn=admin,dc=ldap,dc=masterymanager,dc=local" passwd "2funky4u" auth simple))))
 '(magit-save-repository-buffers (quote dontask))
 '(magit-wip-after-apply-mode t)
 '(magit-wip-after-apply-mode-lighter " 𝛼")
 '(magit-wip-after-save-local-mode-lighter " 𝛿")
 '(magit-wip-after-save-mode t)
 '(magit-wip-before-change-mode t)
 '(magit-wip-before-change-mode-lighter " 𝛥")
 '(menu-bar-mode t)
 '(mmm-mode-ext-classes-alist
   (quote
    ((web-mode "\\.mm\\'" mason)
     (html-mode "\\.mm\\'" mason)
     (ruby-mode "\\.rb\\'" toby/heredoc))))
 '(ns-auto-hide-menu-bar t)
 '(ns-use-native-fullscreen nil)
 '(org-babel-clojure-backend (quote cider))
 '(org-src-window-setup (quote other-window))
 '(package-load-list (quote ((smex t))))
 '(package-selected-packages
   (quote
    (dash smartparens flycheck-pos-tip flycheck-clojure flymd markdown-mode docker-tramp clj-refactor sqlup-mode cider-eval-sexp-fu cider command-log-mode minitest-mode minitest log4j-mode org-plus-contrib terraform-mode cl-lib org yasnippet yaml-mode web-mode web-completion-data twittering-mode tt-mode switch-window smex smart-mode-line-powerline-theme sass-mode ruby-tools ruby-end rspec-mode rhtml-mode rbenv rainbow-delimiters psci projectile perl6-mode paredit ox-reveal ocodo-svg-modelines multi-term mmm-mode magit js-comint isearch+ inf-ruby idle-highlight-mode htmlize highlight-indentation haskell-mode fullframe flx-ido feature-mode enh-ruby-mode emmet-mode elixir-mode dockerfile-mode dired+ dash-at-point company-quickhelp column-marker color-identifiers-mode bug-hunter browse-kill-ring apache-mode alchemist ag ace-window ace-jump-mode)))
 '(perltidy-program "~/perl5/bin/perltidy")
 '(revert-without-query (quote ("rspec.*")))
 '(rspec-compilation-buffer-name "*specs*")
 '(rspec-use-rake-flag nil)
 '(safe-local-variable-values
   (quote
    (quote
     (quote
      (quote
       ((encoding . utf-8)
        (whitespace-line-column . 80)
        (lexical-binding . t)))))))
 '(scss-compile-at-save nil)
 '(show-paren-mode t)
 '(sml/pos-id-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s" powerline-default-separator
                            (car powerline-default-separator-dir)))
                   (quote powerline-active1)
                   (quote powerline-active2))))
     (:propertize " " face powerline-active2))))
 '(sml/pos-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active1)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s" powerline-default-separator
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active1)
                   nil)))
     (:propertize " " face sml/global))))
 '(sml/pre-id-separator
   (quote
    (""
     (:propertize " " face sml/global)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s" powerline-default-separator
                            (car powerline-default-separator-dir)))
                   nil
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-minor-modes-separator
   (quote
    (""
     (:propertize " " face powerline-active2)
     (:eval
      (propertize " "
                  (quote display)
                  (funcall
                   (intern
                    (format "powerline-%s-%s" powerline-default-separator
                            (cdr powerline-default-separator-dir)))
                   (quote powerline-active2)
                   (quote powerline-active1))))
     (:propertize " " face powerline-active1))))
 '(sml/pre-modes-separator (propertize " " (quote face) (quote sml/modes)))
 '(sml/theme (quote powerline))
 '(sp-base-key-bindings (quote paredit))
 '(tags-revert-without-query t)
 '(tags-table-list (quote ("/Users/toby/Code/reception-desk/.TAGS")))
 '(visible-bell t)
 '(visual-line-mode nil t)
 '(warning-minimum-level :error)
 '(web-mode-code-indent-offset 2)
 '(web-mode-enable-whitespace-fontification nil)
 '(web-mode-markup-indent-offset 2)
 '(whitespace-style (quote (quote (quote (quote (trailing tab-mark))))) t)
 '(winner-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ediff-current-diff-B ((t (:background "DarkOliveGreen4"))))
 '(ediff-even-diff-A ((t (:background "gray40"))))
 '(ediff-even-diff-B ((t (:background "gray40"))))
 '(ediff-even-diff-C ((t (:inherit ediff-even-diff-A))))
 '(ediff-fine-diff-A ((t (:background "sienna4"))))
 '(ediff-fine-diff-Ancestor ((t (:background "wheat4"))))
 '(ediff-fine-diff-B ((t (:background "dark green"))))
 '(ediff-odd-diff-A ((t (:inherit ediff-odd-diff-B))))
 '(ediff-odd-diff-B ((t (:background "gray55"))))
 '(ediff-odd-diff-C ((t (:inherit ediff-odd-diff-B)))))
