;; -*- coding: utf-8 -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(alchemist-hooks-test-on-save t)
 '(alchemist-iex-program-name "iex -S mix")
 '(alchemist-mix-test-default-options (quote ("--color" "--stale")))
 '(alchemist-test-truncate-lines nil)
 '(align-rules-list
   (quote
    ((lisp-second-arg
      (regexp . "\\(^\\s-+[^(
]\\|(\\(\\S-+\\)\\s-+\\)\\S-+\\(\\s-+\\)")
      (group . 3)
      (modes . align-lisp-modes)
      (run-if .
              #[0 "\207"
                  [current-prefix-arg]
                  1]))
     (lisp-alist-dot
      (regexp . "\\(\\s-*\\)\\.\\(\\s-*\\)")
      (group 1 2)
      (modes . align-lisp-modes))
     (open-comment
      (regexp .
              #[514 "\211\203 \301\202	 \302\303\304!\305Q\306#\207"
                    [comment-start re-search-backward re-search-forward "[^
\\\\]" regexp-quote "\\(.+\\)$" t]
                    6 "

(fn END REVERSE)"])
      (modes . align-open-comment-modes))
     (c-macro-definition
      (regexp . "^\\s-*#\\s-*define\\s-+\\S-+\\(\\s-+\\)")
      (modes . align-c++-modes))
     (c-variable-declaration
      (regexp . "[*&0-9A-Za-z_]>?[&*]*\\(\\s-+[*&]*\\)[A-Za-z_][0-9A-Za-z:_]*\\s-*\\(\\()\\|=[^=
].*\\|(.*)\\|\\(\\[.*\\]\\)*\\)?\\s-*[;,]\\|)\\s-*$\\)")
      (group . 1)
      (modes . align-c++-modes)
      (justify . t)
      (valid .
             #[0 "\212\301\224b\210\302v\210\303\304!)\206( \305\300!\203\" \203\" \306`\307\"\310=\202( \311 @@\312=?\207"
                 [font-lock-mode 1 -1 looking-at "\\(goto\\|return\\|new\\|delete\\|throw\\)" boundp get-text-property face font-lock-comment-face c-guess-basic-syntax c]
                 3]))
     (c-assignment
      (regexp . "[^-=!^&*+<>/|
]\\(\\s-*[-=!^&*+<>/|]*\\)=\\(\\s-*\\)\\([^=
]\\|$\\)")
      (group 1 2)
      (modes . align-c++-modes)
      (justify . t)
      (tab-stop))
     (perl-assignment
      (regexp . "[^=!^&*-+<>/|
]\\(\\s-*\\)=[~>]?\\(\\s-*\\)\\([^>=
]\\|$\\)")
      (group 1 2)
      (modes . align-perl-modes)
      (tab-stop))
     (python-assignment
      (regexp . "[^=!<>
]\\(\\s-*\\)=\\(\\s-*\\)\\([^>=
]\\|$\\)")
      (group 1 2)
      (modes quote
             (python-mode))
      (tab-stop))
     (make-assignment
      (regexp . "^\\s-*\\w+\\(\\s-*\\):?=\\(\\s-*\\)\\([^
 \\\\]\\|$\\)")
      (group 1 2)
      (modes quote
             (makefile-mode))
      (tab-stop))
     (c-comma-delimiter
      (regexp . ",\\(\\s-*\\)[^/
]")
      (repeat . t)
      (modes . align-c++-modes)
      (run-if .
              #[0 "\207"
                  [current-prefix-arg]
                  1]))
     (basic-comma-delimiter
      (regexp . ",\\(\\s-*\\)[^#
]")
      (repeat . t)
      (modes append align-perl-modes
             (quote
              (python-mode)))
      (run-if .
              #[0 "\207"
                  [current-prefix-arg]
                  1]))
     (c++-comment
      (regexp . "\\(\\s-*\\)\\(//.*\\|/\\*.*\\*/\\s-*\\)$")
      (modes . align-c++-modes)
      (column . comment-column)
      (valid .
             #[0 "\212\300\224b\210n)?\207"
                 [1]
                 1]))
     (c-chain-logic
      (regexp . "\\(\\s-*\\)\\(&&\\|||\\|\\<and\\>\\|\\<or\\>\\)")
      (modes . align-c++-modes)
      (valid .
             #[0 "\212\300\225b\210\301\302!)\207"
                 [2 looking-at "\\s-*\\(/[*/]\\|$\\)"]
                 2]))
     (perl-chain-logic
      (regexp . "\\(\\s-*\\)\\(&&\\|||\\|\\<and\\>\\|\\<or\\>\\)")
      (modes . align-perl-modes)
      (valid .
             #[0 "\212\300\225b\210\301\302!)\207"
                 [2 looking-at "\\s-*\\(#\\|$\\)"]
                 2]))
     (python-chain-logic
      (regexp . "\\(\\s-*\\)\\(\\<and\\>\\|\\<or\\>\\)")
      (modes quote
             (python-mode))
      (valid .
             #[0 "\212\300\225b\210\301\302!)\207"
                 [2 looking-at "\\s-*\\(#\\|$\\|\\\\\\)"]
                 2]))
     (c-macro-line-continuation
      (regexp . "\\(\\s-*\\)\\\\$")
      (modes . align-c++-modes)
      (column . c-backslash-column))
     (basic-line-continuation
      (regexp . "\\(\\s-*\\)\\\\$")
      (modes quote
             (python-mode makefile-mode)))
     (tex-record-separator
      (regexp .
              #[514 "\300\301#\207"
                    [align-match-tex-pattern "&"]
                    6 "

(fn END REVERSE)"])
      (group 1 2)
      (modes . align-tex-modes)
      (repeat . t))
     (tex-tabbing-separator
      (regexp .
              #[514 "\300\301#\207"
                    [align-match-tex-pattern "\\\\[=>]"]
                    6 "

(fn END REVERSE)"])
      (group 1 2)
      (modes . align-tex-modes)
      (repeat . t)
      (run-if .
              #[0 "\301=\207"
                  [major-mode latex-mode]
                  2]))
     (tex-record-break
      (regexp . "\\(\\s-*\\)\\\\\\\\")
      (modes . align-tex-modes))
     (text-column
      (regexp . "\\(^\\|\\S-\\)\\([ 	]+\\)\\(\\S-\\|$\\)")
      (group . 2)
      (modes . align-text-modes)
      (repeat . t)
      (run-if .
              #[0 "\205 \301=?\207"
                  [current-prefix-arg -]
                  2]))
     (text-dollar-figure
      (regexp . "\\$?\\(\\s-+[0-9]+\\)\\.")
      (modes . align-text-modes)
      (justify . t)
      (run-if .
              #[0 "\301=\207"
                  [current-prefix-arg -]
                  2]))
     (css-declaration
      (regexp . "^\\s-*\\(?:\\sw\\|\\s_\\)+:\\(\\s-*\\).*;")
      (group 1)
      (modes quote
             (css-mode html-mode web-mode))))))
'(ansi-color-names-vector
[solarized-bg red green yellow blue magenta cyan solarized-fg])
 '(appt-audible nil)
 '(aquamacs-additional-fontsets nil t)
 '(aquamacs-customization-version-id 211 t)
 '(aquamacs-tool-bar-user-customization nil t)
 '(auth-source-gpg-encrypt-to (quote ("toby@tripp.net")))
'(auth-sources
(quote
 ("~/.emacs.d/secrets/.authinfo.gpg" macos-keychain-internet)))
 '(aw-ignore-current t)
'(bbdb-auto-notes-ignore-messages
(quote
 (("From" . "\"no.?reply\\\\|DAEMON\\\\|daemon\\\\|facebookmail\\\\|twitter\""))))
 '(bbdb-file "~/Documents/org/bbdb")
'(bbdb-ignore-message-alist
(quote
 (("From" . "\"no.?reply\\\\|DAEMON\\\\|daemon\\\\|facebookmail\\\\|twitter\""))))
 '(cal-tex-24 t)
 '(cal-tex-diary t)
 '(calendar-date-style (quote european))
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
 ("1821500602cc71cadca507a7e2b3bf97b75ff5ec4ce6195502f4523c762ec752" "c70264971032a41bf240390cb7ed631ce805e212abe0b36abc4c4498aa34eeb8" "8521db87899b46612cab278ed0dd73ac226c0172266ccec19329718a78d4c3aa" "10c01ff7d2c4c3538c556b452c55dcd2d4b361c36fce90d255336abd9f2054ec" "5521a75edb4cf8c883eb739a7644baa38ee356689248f89b309984995fdc8250" "6889aacaf31b2e9c6e983883dbfce9be918689210d08194aef9584c8a9639eee" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "7086923ce78db059a71e6f428b32a3894c18a3fa586dd182bfade998e66bbc72" "5d01a86960de1eb33cf786e7e4618deff5620796612d3e931549ef4b11301c5b" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "81d4cc8374c164a5ef3d03d2ce95bbc63b63ec9501eb95efcda618ef2be912c7" "288543c0482be3721231ac464e03dea0216f06231ba67b87b19bf8d7c9de8fb9" "bb017d8fde573b632afcc6e6a9bfa97be34b1cedd5302eb25c495e90b91215d4" "25e6c96f73abc907d629bac26145677d283e9d54975f0515adb3c7790b9ed0cd" "633166cd22dfd9661a13b79fa6c93de958fc383546f3d38e2945e064efd89b5d" "01bbac544c1358e1219e453c4f9d46ba7c397292a655977225d17af9f4fe0eaf" "f3b20fa3cb4656c3d683c14e40bdc01a2a65bada81ed7832c39e8875f23a8290" "5ebf86527cdd9a9b5d2e4cfea1da01315a337cf3fecc519b64aada44a4f329d0" "462b3c5f9056d5cddf9b66d96ca5ee5f1f154f155a594fc2fe20d95f6715b627" "58fa5099e00d5ba113a33a2c51e45d5f9b9fe7d1469ed20f947c590a71d0b10a" "46b9c7059d63d2de5f122fc90d5ee303a433ab5d25f482f6dcdebd47de23d2c2" "d2e2792bf4c9e6338663f64165b0948e84a4165465272b7cf814ba7e1b5e6cb2" "137705bce54ded838e45224f0aaa92db6ba6a2128ef7f8d45d5486dfead8e933" "730c625dbb2390df143f0ae74f27ddff6f18c00d15185c35f5c14aedbcf3dc37" "64b6d6eec0935f6150b0748b91dd52e7d47cd7d733352176443651f8e60f67f7" "25dab113b04c1d1152bb1cac0027c47c2cb9c3b860516781feffaf7f3ef95610" "9330df8772bfe8025d061f7d108780f1e10bec8ab63b69f65688fef4b732b641" "26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" default)))
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
 '(desktop-auto-save-timeout 20)
 '(desktop-files-not-to-save "\\(^/[^/:]*:\\|(ftp)\\|gpg$\\)")
 '(desktop-path (quote ("~/.emacs.d/desktop" "~/.emacs.d/")))
 '(desktop-save-mode t)
'(diary-date-forms
(quote
 ((day "/" month "[^/0-9]")
  (day "/" month "/" year "[^0-9]")
  (backup day " *" monthname "\\W+\\<\\([^*0-9]\\|\\([0-9]+[:aApP]\\)\\)")
  (day " *" month " *" year "[^0-9]")
  (dayname "\\W"))))
 '(diary-file "~/Documents/Emacs/diary.gpg")
 '(diary-mail-addr "toby@tripp.net")
 '(dired-auto-revert-buffer (quote dired-directory-changed-p))
 '(dired-listing-switches "-alh")
 '(dired-use-ls-dired (quote unspecified))
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
 '(frame-resize-pixelwise t)
 '(glasses-face (quote bold))
 '(glasses-original-separator "\302\240")
 '(glasses-separate-parentheses-p nil)
 '(glasses-separator "\302\240")
 '(glasses-uncapitalize-p nil)
 '(global-color-identifiers-mode t)
 '(global-linum-mode nil)
 '(haskell-cabal-list-comma-position (quote after))
 '(haskell-font-lock-symbols (quote unicode))
 '(haskell-literate-default (quote tex))
'(haskell-mode-hook
(quote
 (capitalized-words-mode flyspell-prog-mode highlight-uses-mode interactive-haskell-mode toby/haskell-init toby/add-prettified-symbols)) t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote stack-ghci))
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
 '(magit-wip-after-apply-mode-lighter " ε")
 '(magit-wip-after-save-local-mode-lighter " Δ")
 '(magit-wip-after-save-mode t)
 '(magit-wip-before-change-mode t)
 '(magit-wip-before-change-mode-lighter " δ")
 '(menu-bar-mode t)
 '(mime-pgp-decrypt-when-preview t)
 '(mime-view-buttons-visible t)
'(mime-view-type-subtype-score-alist
(quote
 (((text . plain)
   . 4)
  ((text . enriched)
   . 3)
  ((text . html)
   . 2)
  ((text . richtext)
   . 1))))
 '(minitest-default-command (quote ("ruby" "-Ilib:test:spec:src/ruby:test/ruby")))
'(org-agenda-custom-commands
(quote
 (("c" "Upcoming events" agenda ""
   ((org-agenda-remove-tags t)
    (org-agenda-overriding-header "Upcoming Events")
    (org-agenda-include-diary t)
    (org-agenda-span
     (quote 14))
    (org-agenda-start-on-weekday nil)
    (org-agenda-start-day "-1d")
    (org-agenda-tag-filter-preset
     (quote
      ("-howto"))))
   ("~/Documents/agenda.ics" "~/Documents/agenda.txt"))
  ("n" "Agenda and all TODOs"
   ((agenda ""
            ((org-agenda-overriding-header "Agenda")
             (org-agenda-tag-filter-preset
              (quote
               ("-howto")))))
    (alltodo "" nil))
   nil
   ("share-agenda.txt")))))
 '(org-agenda-deadline-leaders (quote ("      Due: " "In %3d d.: " "%2d d. ago: ")))
 '(org-agenda-file-regexp "\\`[^.].*\\.org\\(\\.gpg\\)?\\'")
 '(org-agenda-files (quote ("~/Documents/org/")))
 '(org-agenda-include-diary t)
'(org-agenda-prefix-format
(quote
 ((agenda . " %i %?-12t% s")
  (todo . " %i %-12:c")
  (tags . " %i %-12:c")
  (search . " %i %-12:c"))))
'(org-capture-templates
(quote
 (("e" "Email Communication" entry
   (file+headline "~/Documents/org/capture.org" "Communication")
   (file "~/.emacs.d/agenda/templates/communication.org"))
  ("n" "Emacs Note with Reference" entry
   (file "~/Documents/org/notes.org")
   (file "~/.emacs.d/agenda/templates/emacs-note.org")
   :jump-to-captured t)
  ("r" "Todo/ToRead" entry
   (file "~/Documents/org/notes.org")
   (file "~/.emacs.d/agenda/templates/to-read.org")
   :jump-to-captured t))))
 '(org-default-notes-file "~/.emacs.d/agenda/notes.org")
 '(org-directory "~/.emacs.d/agenda")
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-enforce-todo-dependencies t)
 '(org-fast-tag-selection-single-key t)
 '(org-goto-interface (quote outline-path-completion))
 '(org-icalendar-combined-agenda-file "~/Documents/org/org.ics")
 '(org-mobile-directory "~/Dropbox/Apps/MobileOrg")
 '(org-mobile-inbox-for-pull "~/Documents/org/from-mobile.org")
 '(org-refile-targets (quote ((org-agenda-files :maxlevel . 3))))
 '(org-refile-use-outline-path (quote buffer-name))
 '(org-src-window-setup (quote other-window))
'(package-selected-packages
(quote
 (helm-company linum-relative linum-ralative linum-ralative-mode helm neotree ob-elixir lentic dired-subtree elixir-yasnippets flycheck-haskell intero shm purescript-mode org-bullets svg-mode-line-themes avy web-beautify js2-mode company-tern smartparens which-key minitest elm-mode company diff-hl god-mode clj-refactor clojure-mode apples-mode mac-pseudo-daemon osx-pseudo-daemon flymake-hlint edit-indirect markdown-mode bbdb wanderlust epa-file log4j-mode org-plus-contrib terraform-mode cl-lib org yasnippet yaml-mode web-mode web-completion-data twittering-mode tt-mode textmate switch-window smex smart-mode-line-powerline-theme sass-mode ruby-tools rspec-mode rhtml-mode rbenv rainbow-delimiters psci projectile perl6-mode paredit ox-reveal ocodo-svg-modelines multi-term mmm-mode magit js-comint isearch+ inf-ruby idle-highlight-mode htmlize highlight-indentation haskell-mode fullframe flx-ido feature-mode enh-ruby-mode emmet-mode elixir-mode dockerfile-mode dired+ dash-at-point company-quickhelp column-marker color-identifiers-mode cider-eval-sexp-fu bug-hunter browse-kill-ring apache-mode alchemist ag ace-window ace-jump-mode)))
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
 ((eval setq alchemist-mix-command
        (projectile-expand-root "bin/run mix")
        alchemist-iex-program-name
        (projectile-expand-root "bin/run iex")
        alchemist-execute-program-name
        (projectile-expand-root "bin/run elixir")
        alchemist-compile-command
        (projectile-expand-root "bin/run elixirc"))
  (intero-targets "emacs-diary-convert:lib" "emacs-diary-convert:test:emacs-diary-convert-test")
  (alchemist-execute-program-name . "docker-compose run elixir elixir")
  (alchemist-iex-program-name . "docker-compose run elixir iex")
  (eval org-columns t)
  (eval org-columns)
  (org-confirm-babel-evaluate)
  (encoding . utf-8)
  (whitespace-line-column . 80)
  (lexical-binding . t))))
 '(scss-compile-at-save nil)
 '(shm-program-name "/Users/toby/.local/bin/structured-haskell-mode")
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
 '(tags-table-list nil)
 '(visible-bell t)
 '(visual-line-mode nil t)
 '(warning-minimum-level :error)
 '(wdired-allow-to-change-permissions nil)
 '(web-mode-code-indent-offset 2)
 '(web-mode-enable-whitespace-fontification nil)
 '(web-mode-markup-indent-offset 2)
 '(whitespace-style (quote (trailing tab-mark lines empty indentation)))
 '(wl-default-spec "[")
'(wl-dispose-folder-alist
(quote
 (("^-" . remove)
  ("^@" . remove)
  ("^.gmail" . ".gmail/archive")
  ("^.icloud" . ".icloud/Archive"))))
 '(wl-draft-folder ".drafts")
'(wl-expire-alist
(quote
 (("[Gg]roups?$"
   (number 500)
   wl-expire-archive-date t)
  ("[Aa]rchive$"
   (number 1000)
   wl-expire-archive-date t)
  ("[Rr]eceipts"
   (date 365)
   wl-expire-archive-date t))))
'(wl-folder-desktop-name
#("Mail" 0 4
  (wl-folder-entity-id 0 wl-folder-is-group is-group)))
'(wl-folder-hierarchy-access-folders
(quote
 ("^-[^.]*\\(:\\|@\\|$\\)" "^@$" "^'$" "^\\.[^.]*\\.$")))
 '(wl-forward-subject-prefix "Fwd: ")
 '(wl-quicksearch-folder "[]")
 '(wl-smtp-authenticate-type "plain" t)
 '(wl-smtp-connection-type (quote starttls) t)
 '(wl-smtp-posting-port 587 t)
 '(wl-smtp-posting-server "smtp.mail.me.com" t)
 '(wl-smtp-posting-user "tobytripp@icloud.com" t)
 '(wl-summary-width 120)
 '(wl-trash-folder ".trash")
 '(wl-use-folder-petname (quote (modeline read-folder))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
