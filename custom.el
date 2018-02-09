(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   [solarized-bg red green yellow blue magenta cyan solarized-fg])
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 211 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(aw-ignore-current t)
 '(cider-auto-select-error-buffer nil)
 '(cider-auto-test-mode t)
 '(coffee-args-compile (quote ("-c" "-o js")))
 '(coffee-tab-width 2)
 '(company-backends
   (quote
    (company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-cmake company-capf
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
    ("8521db87899b46612cab278ed0dd73ac226c0172266ccec19329718a78d4c3aa" "10c01ff7d2c4c3538c556b452c55dcd2d4b361c36fce90d255336abd9f2054ec" "5521a75edb4cf8c883eb739a7644baa38ee356689248f89b309984995fdc8250" "6889aacaf31b2e9c6e983883dbfce9be918689210d08194aef9584c8a9639eee" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "7086923ce78db059a71e6f428b32a3894c18a3fa586dd182bfade998e66bbc72" "5d01a86960de1eb33cf786e7e4618deff5620796612d3e931549ef4b11301c5b" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "81d4cc8374c164a5ef3d03d2ce95bbc63b63ec9501eb95efcda618ef2be912c7" "288543c0482be3721231ac464e03dea0216f06231ba67b87b19bf8d7c9de8fb9" "bb017d8fde573b632afcc6e6a9bfa97be34b1cedd5302eb25c495e90b91215d4" "25e6c96f73abc907d629bac26145677d283e9d54975f0515adb3c7790b9ed0cd" "633166cd22dfd9661a13b79fa6c93de958fc383546f3d38e2945e064efd89b5d" "01bbac544c1358e1219e453c4f9d46ba7c397292a655977225d17af9f4fe0eaf" "f3b20fa3cb4656c3d683c14e40bdc01a2a65bada81ed7832c39e8875f23a8290" "5ebf86527cdd9a9b5d2e4cfea1da01315a337cf3fecc519b64aada44a4f329d0" "462b3c5f9056d5cddf9b66d96ca5ee5f1f154f155a594fc2fe20d95f6715b627" "58fa5099e00d5ba113a33a2c51e45d5f9b9fe7d1469ed20f947c590a71d0b10a" "46b9c7059d63d2de5f122fc90d5ee303a433ab5d25f482f6dcdebd47de23d2c2" "d2e2792bf4c9e6338663f64165b0948e84a4165465272b7cf814ba7e1b5e6cb2" "137705bce54ded838e45224f0aaa92db6ba6a2128ef7f8d45d5486dfead8e933" "730c625dbb2390df143f0ae74f27ddff6f18c00d15185c35f5c14aedbcf3dc37" "64b6d6eec0935f6150b0748b91dd52e7d47cd7d733352176443651f8e60f67f7" "25dab113b04c1d1152bb1cac0027c47c2cb9c3b860516781feffaf7f3ef95610" "9330df8772bfe8025d061f7d108780f1e10bec8ab63b69f65688fef4b732b641" "26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" default)))
 '(debug-on-error t)
 '(default-frame-alist
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
      (bottom-toolbar-shadow-color . "#79e77df779e7")
      (cursor-color . "#FFFFFF")
      (foreground-color . "#DADADA")
      (mouse-color . "Grey")
      (top-toolbar-shadow-color . "#fffffbeeffff")
      (viper-saved-cursor-color-in-replace-mode . "Red3"))))
 '(dired-auto-revert-buffer (quote dired-directory-changed-p))
 '(ediff-window-setup-function (quote ediff-setup-windows-plain))
 '(electric-pair-mode nil)
 '(enh-ruby-deep-indent-paren nil)
 '(enh-ruby-use-ruby-mode-show-parens-config t)
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
 '(eval-sexp-fu-flash-mode nil)
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
 '(glasses-face (quote bold))
 '(glasses-original-separator " ")
 '(glasses-separate-parentheses-p nil)
 '(glasses-separator " ")
 '(glasses-uncapitalize-p nil)
 '(global-color-identifiers-mode t)
 '(global-linum-mode nil)
 '(haskell-cabal-list-comma-position (quote after))
 '(haskell-font-lock-symbols (quote unicode))
 '(inf-ruby-default-implementation "pry")
 '(inf-ruby-implementations
   (quote
    (("ruby" . "irb --prompt default --noreadline -r irb/completion -I ./lib")
     ("jruby" . "jruby -S irb --prompt default --noreadline -r irb/completion")
     ("rubinius" . "rbx -r irb/completion")
     ("yarv" . "irb1.9 -r irb/completion")
     ("macruby" . "macirb -r irb/completion")
     ("pry" . "pry "))))
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
 '(magit-push-arguments nil)
 '(magit-wip-after-apply-mode t)
 '(magit-wip-after-apply-mode-lighter " 𝛼")
 '(magit-wip-after-save-local-mode-lighter " 𝛿")
 '(magit-wip-after-save-mode t)
 '(magit-wip-before-change-mode t)
 '(magit-wip-before-change-mode-lighter " 𝛥")
 '(menu-bar-mode t)
 '(minitest-default-command (quote ("ruby" "-Ilib:test:spec:src/ruby:test/ruby")))
 '(mmm-mode-ext-classes-alist
   (quote
    ((web-mode "\\.mm\\'" mason)
     (html-mode "\\.mm\\'" mason)
     (ruby-mode "\\.rb\\'" toby/heredoc))) nil (mmm-mode))
 '(org-src-window-setup (quote other-window))
 '(package-selected-packages
   (quote
    (epa-file log4j-mode org-plus-contrib terraform-mode cl-lib org yasnippet yaml-mode web-mode web-completion-data twittering-mode tt-mode textmate switch-window smex smart-mode-line-powerline-theme sass-mode ruby-tools ruby-end rspec-mode rhtml-mode rbenv rainbow-delimiters psci projectile perl6-mode paredit ox-reveal ocodo-svg-modelines multi-term mmm-mode magit js-comint isearch+ inf-ruby idle-highlight-mode htmlize highlight-indentation haskell-mode fullframe flx-ido feature-mode enh-ruby-mode emmet-mode elixir-mode dockerfile-mode dired+ dash-at-point company-quickhelp column-marker color-identifiers-mode cider-eval-sexp-fu bug-hunter browse-kill-ring apache-mode alchemist ag ace-window ace-jump-mode)))
 '(perltidy-program "~/perl5/bin/perltidy")
 '(revert-without-query (quote ("rspec.*")))
 '(rspec-compilation-buffer-name "*specs*")
 '(rspec-primary-source-dirs (quote ("app")))
 '(rspec-rake-command "bundle exec rake")
 '(rspec-spec-command "rspec ")
 '(rspec-use-bundler-when-possible t)
 '(rspec-use-docker-when-possible t)
 '(rspec-use-rake-flag nil)
 '(rspec-use-rake-when-possible nil)
 '(rspec-use-rvm nil)
 '(ruby-align-to-stmt-keywords (quote (def if case unless)))
 '(ruby-deep-arglist nil)
 '(safe-local-variable-values
   (quote
    ((org-confirm-babel-evaluate)
     (encoding . utf-8)
     (whitespace-line-column . 80)
     (lexical-binding . t))))
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
 '(sql-connection-alist
   (quote
    (("db-master"
      (sql-product
       (quote postgres))
      (sql-user "postgres")
      (sql-database "report_development")
      (sql-server "localhost")
      (sql-port 5432))
     ("boot2docker"
      (sql-product
       (quote postgres))
      (sql-user "postgres")
      (sql-database "noble")
      (sql-server "192.168.99.100")
      (sql-port 5432))
     ("postgres-staging"
      (sql-product
       (quote postgres))
      (sql-user "postgres")
      (sql-database "reports_staging")
      (sql-server "mm2-reports-staging.c7mzhhsy2lsx.us-east-1.rds.amazonaws.com")
      (sql-port 5432))
     ("local.db"
      (sql-product
       (quote postgres))
      (sql-user "toby")
      (sql-database "toby")
      (sql-server "localhost")
      (sql-port 5432))
     ("vm-db"
      (sql-product
       (quote postgres))
      (sql-user "postgres")
      (sql-database "reports_development")
      (sql-server "localhost")
      (sql-port 8432))
     ("reports_staging"
      (sql-product
       (quote postgres))
      (sql-user "reports_staging")
      (sql-database "reports_staging")
      (sql-server "mm2-reports-staging.c7mzhhsy2lsx.us-east-1.rds.amazonaws.com")
      (sql-port 5432))
     ("docker-db"
      (sql-product
       (quote postgres))
      (sql-user "development")
      (sql-database "development")
      (sql-server "localhost")
      (sql-port 65432))
     ("rd.db"
      (sql-product
       (quote postgres))
      (sql-user "reception_desk_development")
      (sql-database "reception_desk_development")
      (sql-server "localhost")
      (sql-port 65432)))))
 '(tags-revert-without-query t)
 '(tags-table-list (quote ("/Users/toby/Code/reception-desk/.TAGS")))
 '(visible-bell t)
 '(visual-line-mode nil t)
 '(warning-minimum-level :error)
 '(web-mode-code-indent-offset 2)
 '(web-mode-enable-whitespace-fontification nil)
 '(web-mode-markup-indent-offset 2)
 '(whitespace-style (quote (trailing tab-mark lines empty indentation)))
 '(winner-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:foreground "red" :height 2.0 :width extra-expanded))))
 '(ediff-current-diff-B ((t (:background "DarkOliveGreen4"))))
 '(ediff-even-diff-A ((t (:background "gray40"))))
 '(ediff-even-diff-B ((t (:background "gray40"))))
 '(ediff-even-diff-C ((t (:inherit ediff-even-diff-A))))
 '(ediff-fine-diff-A ((t (:background "sienna4"))))
 '(ediff-fine-diff-Ancestor ((t (:background "wheat4"))))
 '(ediff-fine-diff-B ((t (:background "dark green"))))
 '(ediff-odd-diff-A ((t (:inherit ediff-odd-diff-B))))
 '(ediff-odd-diff-B ((t (:background "gray55"))))
 '(ediff-odd-diff-C ((t (:inherit ediff-odd-diff-B))))
 '(enh-ruby-op-face ((t (:foreground "gray70"))))
 '(enh-ruby-string-delimiter-face ((t (:foreground "#6b8e23")))))
