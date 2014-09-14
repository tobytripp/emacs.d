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
 '(coffee-args-compile (quote ("-c" "-o js")))
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(compilation-ask-about-save nil)
 '(compilation-auto-jump-to-first-error nil)
 '(compilation-scroll-output (quote first-error))
 '(css-indent-offset 3)
 '(custom-enabled-themes (quote (tsdh-light)))
 '(custom-safe-themes
   (quote
    ("6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" "526e738d6d89317f821becd58d3165b5ecf5afe336ff1c96e331fdfca5e8fe03" default)))
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
 '(electric-pair-mode t)
 '(erc-modules
   (quote
    (autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring scrolltobottom smiley stamp spelling track)))
 '(erc-server "irc.freenode.net")
 '(ergoemacs-mode nil)
 '(fci-rule-color "#073642")
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
 '(org-agenda-files
   (quote
    ("~/Dropbox/org/ib-tasks.org" "~/Dropbox/org/my-tasks.org")))
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
 '(ruby-use-encoding-map t)
 '(safe-local-variable-values
   (quote
    ((encoding . utf-8)
     (whitespace-line-column . 80)
     (lexical-binding . t))))
 '(scss-compile-at-save nil)
 '(visual-line-mode nil t)
 '(warning-minimum-level :error)
 '(whitespace-style (quote (trailing tab-mark)) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face :foreground "#586e75"))))
 '(highlight ((t (:background "color-18" :foreground "white"))))
 '(hl-line ((t (:background "#002b36"))))
 '(magit-item-highlight ((t (:inherit highlight))) t)
 '(rainbow-delimiters-depth-1-face ((t (:foreground "wheat")))))
