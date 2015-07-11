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
 '(cider-auto-select-error-buffer nil)
 '(coffee-args-compile (quote ("-c" "-o js")))
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(compilation-always-kill t)
 '(compilation-ask-about-save nil)
 '(compilation-auto-jump-to-first-error nil)
 '(compilation-scroll-output nil)
 '(css-indent-offset 3)
 '(custom-enabled-themes (quote (smart-mode-line-powerline)))
 '(custom-safe-themes
   (quote
    ("781d343ce450117044d94745f59bd7e73fbfc41a977284aeb2e5a4158db8aeba" "26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" "ee2aa6bcaabf4b9f7446dc56bc6ce1f1292885cfaf578de00e309b520a45cdaa" default)))
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
 '(electric-pair-mode t)
 '(erc-modules
   (quote
    (autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring scrolltobottom smiley stamp spelling track)))
 '(erc-server "irc.freenode.net")
 '(ergoemacs-mode nil)
 '(fci-rule-color "#073642")
 '(feature-cucumber-command
   "bundle exec cucumber -p guard CUCUMBER_OPTS=\"{options}\" {feature}")
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
 '(global-linum-mode t)
 '(global-toby-mode t)
 '(haskell-cabal-list-comma-position (quote after))
 '(haskell-font-lock-symbols (quote unicode))
 '(js-expr-indent-offset 2)
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-cleanup-whitespace t)
 '(js2-mirror-mode t)
 '(js2-mode-show-parse-errors nil)
 '(js2-mode-show-strict-warnings nil)
 '(magit-process-popup-time 20)
 '(menu-bar-mode nil)
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
 '(visual-line-mode nil t)
 '(warning-minimum-level :error)
 '(web-mode-markup-indent-offset 2)
 '(whitespace-style (quote (trailing tab-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(highlight ((t (:background "color-18" :foreground "white"))))
 '(hl-line ((t (:background "#002b36"))))
 '(idle-highlight ((t (:foreground "khaki"))))
 '(magit-item-highlight ((t (:inherit highlight))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "wheat"))))
 '(term-color-blue ((t (:background "blue2" :foreground "deep sky blue")))))
