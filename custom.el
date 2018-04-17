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
 ("044e1cc73f15fead373efd1a88eb72b8e413e248b14dc063d3dd68fb50f28b6f" "a1f136a8bfea21e1186e4e1f6b5ef16cf109a1d94d468fb6a477fefa020d0770" "1821500602cc71cadca507a7e2b3bf97b75ff5ec4ce6195502f4523c762ec752" "c70264971032a41bf240390cb7ed631ce805e212abe0b36abc4c4498aa34eeb8" "8521db87899b46612cab278ed0dd73ac226c0172266ccec19329718a78d4c3aa" "10c01ff7d2c4c3538c556b452c55dcd2d4b361c36fce90d255336abd9f2054ec" "5521a75edb4cf8c883eb739a7644baa38ee356689248f89b309984995fdc8250" "6889aacaf31b2e9c6e983883dbfce9be918689210d08194aef9584c8a9639eee" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "7086923ce78db059a71e6f428b32a3894c18a3fa586dd182bfade998e66bbc72" "5d01a86960de1eb33cf786e7e4618deff5620796612d3e931549ef4b11301c5b" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "81d4cc8374c164a5ef3d03d2ce95bbc63b63ec9501eb95efcda618ef2be912c7" "288543c0482be3721231ac464e03dea0216f06231ba67b87b19bf8d7c9de8fb9" "bb017d8fde573b632afcc6e6a9bfa97be34b1cedd5302eb25c495e90b91215d4" "25e6c96f73abc907d629bac26145677d283e9d54975f0515adb3c7790b9ed0cd" "633166cd22dfd9661a13b79fa6c93de958fc383546f3d38e2945e064efd89b5d" "01bbac544c1358e1219e453c4f9d46ba7c397292a655977225d17af9f4fe0eaf" "f3b20fa3cb4656c3d683c14e40bdc01a2a65bada81ed7832c39e8875f23a8290" "5ebf86527cdd9a9b5d2e4cfea1da01315a337cf3fecc519b64aada44a4f329d0" "462b3c5f9056d5cddf9b66d96ca5ee5f1f154f155a594fc2fe20d95f6715b627" "58fa5099e00d5ba113a33a2c51e45d5f9b9fe7d1469ed20f947c590a71d0b10a" "46b9c7059d63d2de5f122fc90d5ee303a433ab5d25f482f6dcdebd47de23d2c2" "d2e2792bf4c9e6338663f64165b0948e84a4165465272b7cf814ba7e1b5e6cb2" "137705bce54ded838e45224f0aaa92db6ba6a2128ef7f8d45d5486dfead8e933" "730c625dbb2390df143f0ae74f27ddff6f18c00d15185c35f5c14aedbcf3dc37" "64b6d6eec0935f6150b0748b91dd52e7d47cd7d733352176443651f8e60f67f7" "25dab113b04c1d1152bb1cac0027c47c2cb9c3b860516781feffaf7f3ef95610" "9330df8772bfe8025d061f7d108780f1e10bec8ab63b69f65688fef4b732b641" "26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" default)))
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
 (capitalized-words-mode flyspell-prog-mode highlight-uses-mode interactive-haskell-mode toby/haskell-init toby/add-prettified-symbols)))
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
 '(org-babel-clojure-backend (quote cider))
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
 (unicode-fonts cider ivy-hydra hydra counsel helm-company linum-relative linum-ralative linum-ralative-mode helm neotree ob-elixir lentic dired-subtree elixir-yasnippets flycheck-haskell intero shm purescript-mode org-bullets svg-mode-line-themes avy web-beautify js2-mode company-tern smartparens which-key minitest elm-mode company diff-hl god-mode clj-refactor clojure-mode apples-mode mac-pseudo-daemon osx-pseudo-daemon flymake-hlint edit-indirect markdown-mode bbdb wanderlust epa-file log4j-mode org-plus-contrib terraform-mode cl-lib org yasnippet yaml-mode web-mode web-completion-data twittering-mode tt-mode textmate switch-window smex smart-mode-line-powerline-theme sass-mode ruby-tools rspec-mode rhtml-mode rbenv rainbow-delimiters psci projectile perl6-mode paredit ox-reveal ocodo-svg-modelines multi-term mmm-mode magit js-comint isearch+ inf-ruby idle-highlight-mode htmlize highlight-indentation haskell-mode fullframe flx-ido feature-mode enh-ruby-mode emmet-mode elixir-mode dockerfile-mode dired+ dash-at-point company-quickhelp column-marker color-identifiers-mode cider-eval-sexp-fu bug-hunter browse-kill-ring apache-mode alchemist ag ace-window ace-jump-mode)))
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
 '(tags-table-list nil)
'(unicode-fonts-block-font-mapping
(quote
 (("Aegean Numbers"
   ("Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Ahom"
   ("AhomUnicode"))
  ("Alchemical Symbols"
   ("Everson Mono:weight=bold"))
  ("Alphabetic Presentation Forms"
   ("Arial Unicode MS" "Code2000" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
  ("Anatolian Hieroglyphs"
   ("Anatolian"))
  ("Ancient Greek Musical Notation"
   ("Cardo" "Aegean" "New Athena Unicode" "Musica" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Ancient Greek Numbers"
   ("Apple Symbols" "New Athena Unicode" "Cardo" "Aegean" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Ancient Symbols"
   ("Analecta" "New Athena Unicode" "Cardo" "Aegean" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Arabic"
   ("Courier New" "Simplified Arabic Fixed" "Simplified Arabic" "Amiri" "Aldhabi" "Adobe Arabic" "Urdu Typesetting" "Geeza Pro" "Baghdad" "Damascus" "Al Bayan" "Andalus" "Arabic Typesetting" "Traditional Arabic" "Scheherazade" "Arial Unicode MS" "Nadeem" "Microsoft Uighur" "Tahoma" "Microsoft Sans Serif" "MPH 2B Damase" "KufiStandardGK" "DecoType Naskh" "Koodak" "FreeMono" "Code2000"))
  ("Arabic Extended-A"
   ("Scheherazade" "Amiri"))
  ("Arabic Mathematical Alphabetic Symbols"
   ("Amiri"))
  ("Arabic Presentation Forms-A"
   ("Geeza Pro" "Amiri" "Arial Unicode MS" "Microsoft Sans Serif" "Tahoma" "KufiStandardGK" "Andalus" "Arabic Typesetting" "Urdu Typesetting" "Adobe Arabic" "DecoType Naskh" "Al Bayan" "MPH 2B Damase" "Code2000"))
  ("Arabic Presentation Forms-B"
   ("Geeza Pro" "Amiri" "Adobe Arabic" "Traditional Arabic" "Urdu Typesetting" "Arial Unicode MS" "Microsoft Sans Serif" "KufiStandardGK" "FreeMono" "DecoType Naskh" "Code2000"))
  ("Arabic Supplement"
   ("Courier New" "Simplified Arabic Fixed" "Amiri" "Simplified Arabic" "Geeza Pro" "Damascus" "Andalus" "Arabic Typesetting" "Traditional Arabic" "Scheherazade" "Adobe Arabic" "Microsoft Uighur" "Tahoma" "Microsoft Sans Serif" "MPH 2B Damase"))
  ("Armenian"
   ("Mshtakan" "Sylfaen" "DejaVu Sans:width=condensed" "Quivira" "MPH 2B Damase" "Code2000" "Arial Unicode MS" "Everson Mono:weight=bold" "FreeMono"))
  ("Arrows"
   ("Apple Symbols" "Cambria Math" "Segoe UI Symbol" "Arial Unicode MS" "BabelStone Modern" "Code2000" "Everson Mono:weight=bold" "FreeMono"))
  ("Avestan"
   ("Ahuramzda:weight=bold" "ALPHABETUM Unicode"))
  ("Balinese"
   ("Aksara Bali"))
  ("Bamum"
   ("Noto Sans Bamum"))
  ("Bamum Supplement"
   ("Noto Sans Bamum"))
  ("Batak"
   ("Batak-Unicode"))
  ("Bengali"
   ("Bangla Sangam MN" "Nirmala UI" "Vrinda" "Mukti Narrow" "Akaash" "Arial Unicode MS" "Code2000" "ALPHABETUM Unicode"))
  ("Block Elements"
   ("FreeMono" "DejaVu Sans:width=condensed" "Apple Symbols" "Segoe UI Symbol" "BabelStone Modern" "Code2000" "Everson Mono:weight=bold"))
  ("Bopomofo"
   ("Lantinghei TC" "MingLiU" "SimHei" "LiSong Pro" "FangSong" "SimSun" "DFKai-SB" "WenQuanYi Zen Hei Mono" "Microsoft JhengHei" "Microsoft JhengHei UI" "Microsoft YaHei" "Microsoft YaHei UI" "Lantinghei SC" "HAN NOM A" "Arial Unicode MS" "BabelStone Han" "Code2000" "ALPHABETUM Unicode"))
  ("Bopomofo Extended"
   ("MingLiU" "SimHei" "FangSong" "SimSun" "DFKai-SB" "Microsoft JhengHei" "Microsoft JhengHei UI" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "Code2000"))
  ("Box Drawing"
   ("FreeMono" "Everson Mono" "Code2000" "Segoe UI Symbol"))
  ("Brahmi"
   ("Segoe UI Historic" "Adinatha Tamil Brahmi" "ALPHABETUM Unicode"))
  ("Braille Patterns"
   ("Apple Braille" "DejaVu Sans:width=condensed" "Apple Symbols" "Segoe UI Symbol" "FreeMono" "Code2000" "Everson Mono:weight=bold"))
  ("Buginese"
   ("MPH 2B Damase" "Monlam Uni Sans Serif" "Code2000"))
  ("Buhid"
   ("Code2000"))
  ("Byzantine Musical Symbols"
   ("Musica" "FreeSerif"))
  ("Carian"
   ("Segoe UI Historic" "Aegean" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Chakma"
   ("Ribeng"))
  ("Cham"
   ("Cham OI_Tangin" "Cham OI_Kulbleng" "Cham OI_Kul" "Code2000"))
  ("Cherokee"
   ("Aboriginal Sans" "Aboriginal Serif" "Plantagenet Cherokee" "Noto Sans Cherokee" "Gadugi" "MPH 2B Damase" "Everson Mono:weight=bold" "FreeMono" "Code2000"))
  ("Cherokee Supplement"
   ("Everson Mono:weight=bold"))
  ("CJK Compatibility"
   ("SimHei" "FangSong" "SimSun" "MingLiU" "Meiryo" "Microsoft JhengHei" "Microsoft JhengHei UI" "Lantinghei SC" "Lantinghei TC" "HAN NOM A" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han" "Code2000"))
  ("CJK Compatibility Forms"
   ("WenQuanYi Zen Hei Mono" "Lantinghei SC" "SimHei" "FangSong" "SimSun" "LiSong Pro" "Baoli SC" "Microsoft YaHei" "Microsoft YaHei UI" "Lantinghei TC" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "Xingkai SC" "DFKai-SB" "Code2000"))
  ("CJK Compatibility Ideographs"
   ("SimHei" "FangSong" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "WenQuanYi Zen Hei Mono" "BabelStone Han" "UnBatang" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "Arial Unicode MS" "Lantinghei SC" "HanaMinA"))
  ("CJK Compatibility Ideographs Supplement"
   ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "SimSun" "MingLiU" "HanaMinA" "Hiragino Kaku Gothic Pro" "Hiragino Maru Gothic Pro" "Hiragino Mincho Pro" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM B" "LiSong Pro"))
  ("CJK Radicals Supplement"
   ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "HanaMinA" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "DFKai-SB" "Apple Symbols" "Code2000"))
  ("CJK Strokes"
   ("WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han" "Code2000"))
  ("CJK Symbols and Punctuation"
   ("Lantinghei SC" "SimHei" "FangSong" "SimSun" "HanaMinA" "WenQuanYi Zen Hei Mono" "LiSong Pro" "STFangsong" "Microsoft YaHei" "Microsoft YaHei UI" "Lantinghei TC" "MingLiU" "HAN NOM A" "Arial Unicode MS" "PCMyungjo" "BabelStone Han" "Osaka:spacing=m" "Code2000"))
  ("CJK Unified Ideographs"
   ("WenQuanYi Zen Hei Mono" "Lantinghei SC" "Songti SC" "SimHei" "FangSong" "STFangsong" "SimSun" "LiSong Pro" "Baoli SC" "HanaMinA" "BabelStone Han" "Apple LiGothic" "Lantinghei TC" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "DFKai-SB" "Arial Unicode MS" "Xingkai SC" "GB18030 Bitmap" "UnBatang"))
  ("CJK Unified Ideographs Extension A"
   ("SimHei" "FangSong" "STFangsong" "SimSun" "Songti SC" "Microsoft YaHei" "Microsoft YaHei UI" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HanaMinA" "HAN NOM A" "Code2000" "DFKai-SB" "BabelStone Han" "GB18030 Bitmap"))
  ("CJK Unified Ideographs Extension B"
   ("SimHei" "FangSong" "SimSun" "LiSong Pro" "Microsoft YaHei" "Microsoft YaHei UI" "HanaMinB" "HAN NOM B" "Code2002" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "BabelStone Han" "DFKai-SB"))
  ("CJK Unified Ideographs Extension C"
   ("HanaMinB" "BabelStone Han" "HAN NOM B"))
  ("CJK Unified Ideographs Extension D"
   ("HanaMinB" "BabelStone Han"))
  ("CJK Unified Ideographs Extension E"
   ("HanaMinB" "BabelStone Han"))
  ("Combining Diacritical Marks"
   ("Monaco" "Consolas" "Noto Sans" "Cambria Math" "Charis SIL" "Doulos SIL" "Courier New" "Cardo" "Code2000" "Gentium Plus" "Junicode" "Tahoma" "Microsoft Sans Serif" "Arial" "Quivira" "Everson Mono" "FreeMono" "Arial Unicode MS" "ALPHABETUM Unicode"))
  ("Combining Diacritical Marks Extended"
   ("Monlam Uni Sans Serif"))
  ("Combining Diacritical Marks Supplement"
   ("Cardo" "FreeSerif" "Junicode" "Doulos SIL" "Segoe UI" "Code2000" "Everson Mono" "ALPHABETUM Unicode"))
  ("Combining Diacritical Marks for Symbols"
   ("Cambria Math" "Segoe UI Symbol" "Noto Sans Symbols" "Code2000" "Everson Mono" "Arial Unicode MS"))
  ("Combining Half Marks"
   ("Consolas" "Everson Mono:weight=bold"))
  ("Common Indic Number Forms"
   ("Noto Sans Kaithi" "Nirmala UI" "Siddhanta"))
  ("Control Pictures"
   ("Apple Symbols" "BabelStone Modern" "Noto Sans Symbols" "Segoe UI Symbol" "Arial Unicode MS" "FreeMono" "Code2000" "Everson Mono:weight=bold"))
  ("Coptic"
   ("Antinoou" "New Athena Unicode" "Segoe UI Historic" "Segoe UI Symbol" "Analecta" "Nilus" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Coptic Epact Numbers"
   ("Nilus"))
  ("Counting Rod Numerals"
   ("WenQuanYi Zen Hei Mono" "BabelStone Modern" "Quivira" "Apple Symbols" "Code2001"))
  ("Cuneiform"
   ("Segoe UI Historic" "Noto Sans Cuneiform" "Noto Sans Sumero-Akkadian Cuneiform" "Akkadian"))
  ("Cuneiform Numbers and Punctuation"
   ("Akkadian" "Segoe UI Historic"))
  ("Currency Symbols"
   ("Monaco" "Consolas" "Segoe UI" "Apple Symbols" "Everson Mono:weight=bold" "FreeMono"))
  ("Cypriot Syllabary"
   ("Segoe UI Historic" "Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Cyrillic"
   ("Monaco" "Courier New" "Calibri" "Microsoft Sans Serif" "Code2000" "Arial Unicode MS" "Charis SIL" "Doulos SIL" "Everson Mono:weight=bold" "FreeMono" "Charcoal CY" "Geneva CY" "ALPHABETUM Unicode"))
  ("Cyrillic Extended-A"
   ("Everson Mono:weight=bold" "FreeSerif" "ALPHABETUM Unicode"))
  ("Cyrillic Extended-B"
   ("Code2000" "Everson Mono:weight=bold"))
  ("Cyrillic Supplement"
   ("Courier New" "Calibri" "Charis SIL" "Doulos SIL" "Quivira" "Code2000" "Everson Mono:weight=bold"))
  ("Deseret"
   ("Apple Symbols" "Segoe UI Symbol" "Analecta" "Code2001" "Everson Mono:weight=bold"))
  ("Devanagari"
   ("Annapurna SIL" "Devanagari Sangam MN" "Devanagari MT" "Nirmala UI" "Mangal" "Samyak Devanagari" "Samyak" "Siddhanta" "Aparajita" "Code2000" "Arial Unicode MS" "ALPHABETUM Unicode"))
  ("Devanagari Extended"
   ("Annapurna SIL" "Siddhanta" "FreeSerif"))
  ("Dingbats"
   ("Apple Color Emoji" "Segoe UI Symbol" "Zapf Dingbats" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Everson Mono:weight=bold"))
  ("Domino Tiles"
   ("Segoe UI Symbol" "Code2001" "Everson Mono:weight=bold"))
  ("Early Dynastic Cuneiform"
   ("Akkadian"))
  ("Egyptian Hieroglyphs"
   ("Segoe UI Historic:weight=bold" "Aegyptus:weight=bold" "Gardiner"))
  ("Elbasan"
   ("Albanian" "Everson Mono:weight=bold"))
  ("Emoticons"
   ("Apple Color Emoji" "Segoe UI Symbol"))
  ("Enclosed Alphanumeric Supplement"
   ("Segoe UI Symbol" "BabelStone Han" "BabelStone Modern"))
  ("Enclosed Alphanumerics"
   ("Segoe UI Symbol" "Junicode" "Arial Unicode MS" "Code2000" "BabelStone Han" "WenQuanYi Zen Hei Mono" "BabelStone Modern" "HAN NOM A" "Everson Mono:weight=bold"))
  ("Enclosed CJK Letters and Months"
   ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "MingLiU" "Arial Unicode MS" "HanaMinA" "Meiryo" "BabelStone Han" "Code2000" "UnBatang" "HAN NOM A"))
  ("Enclosed Ideographic Supplement"
   ("Segoe UI Symbol" "HanaMinA" "BabelStone Han"))
  ("Ethiopic"
   ("Kefa" "Noto Sans Ethiopic" "Nyala" "Abyssinica SIL" "Ethiopia Jiret" "Ethiopic WashRa SemiBold" "Ethiopic Yebse" "Code2000"))
  ("Ethiopic Extended"
   ("Kefa" "Noto Sans Ethiopic" "Nyala" "Abyssinica SIL" "Code2000"))
  ("Ethiopic Extended-A"
   ("Kefa" "Noto Sans Ethiopic" "Abyssinica SIL"))
  ("Ethiopic Supplement"
   ("Kefa" "Noto Sans Ethiopic" "Nyala" "Abyssinica SIL" "Code2000"))
  ("General Punctuation"
   ("Monaco" "Apple Symbols" "Segoe UI Symbol" "Cambria Math" "Charis SIL" "Doulos SIL" "Antinoou" "Code2000" "Everson Mono:weight=bold" "FreeMono" "BabelStone Modern"))
  ("Geometric Shapes"
   ("Segoe UI Symbol" "Arial Unicode MS" "BabelStone Modern" "Everson Mono" "FreeMono" "Code2000"))
  ("Geometric Shapes Extended" nil)
  ("Georgian"
   ("Arial Unicode MS" "Code2000" "Quivira" "Sylfaen" "MPH 2B Damase" "Everson Mono:weight=bold"))
  ("Georgian Supplement"
   ("MPH 2B Damase" "Everson Mono:weight=bold"))
  ("Glagolitic"
   ("Segoe UI Historic" "Segoe UI Symbol" "MPH 2B Damase" "FreeSerif" "ALPHABETUM Unicode"))
  ("Gothic"
   ("Segoe UI Historic" "Segoe UI Symbol" "Analecta" "Junicode" "Sadagolthina" "MPH 2B Damase" "FreeSerif" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Greek Extended"
   ("Courier New" "Antinoou" "Noto Sans" "DejaVu Sans:width=condensed" "Cardo" "Junicode" "New Athena Unicode" "Microsoft Sans Serif" "Gentium Plus Compact" "Gentium Plus" "Arial Unicode MS" "Arial" "Tahoma" "Aegean" "Code2000" "Quivira" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
  ("Greek and Coptic"
   ("Antinoou" "Segoe UI Historic" "Segoe UI Symbol" "New Athena Unicode" "Calibri" "Microsoft Sans Serif" "Gentium Plus Compact" "Gentium Plus" "Lucida Console" "Arial Unicode MS" "Cardo" "Aegean" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "Noto Sans Coptic"))
  ("Gujarati"
   ("Nirmala UI" "Gujarati MT" "Shruti" "Samyak Gujarati" "Samyak" "Gujarati Sangam MN" "Code2000" "Arial Unicode MS"))
  ("Gurmukhi"
   ("Gurmukhi Sangam MN" "Gurmukhi MN" "Nirmala UI" "Raavi" "Code2000" "Arial Unicode MS" "AnmolUni"))
  ("Halfwidth and Fullwidth Forms"
   ("Meiryo" "Arial Unicode MS" "Microsoft JhengHei" "Microsoft JhengHei UI" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "Apple Symbols" "Code2000" "HAN NOM A"))
  ("Hangul Compatibility Jamo"
   ("PCMyungjo" "Malgun Gothic" "Gulim" "Dotum" "Batang" "Gungsuh" "AppleMyungjo" "UnBatang" "WenQuanYi Zen Hei Mono" "HAN NOM A" "Arial Unicode MS" "Code2000" "HeadLineA"))
  ("Hangul Jamo"
   ("UnBatang" "WenQuanYi Zen Hei Mono" "PCMyungjo" "Malgun Gothic" "Gulim" "Dotum" "Batang" "Gungsuh" "Arial Unicode MS" "Code2000"))
  ("Hangul Jamo Extended-A"
   ("Malgun Gothic" "HanaMinA" "UnBatang"))
  ("Hangul Jamo Extended-B"
   ("Malgun Gothic" "HanaMinA" "UnBatang"))
  ("Hangul Syllables"
   ("AppleGothic" "Malgun Gothic" "Gulim" "Dotum" "Batang" "Gungsuh" "UnBatang" "WenQuanYi Zen Hei Mono" "Arial Unicode MS" "Code2000"))
  ("Hanunoo"
   ("Noto Sans Hanunoo" "MPH 2B Damase" "FreeSerif"))
  ("Hebrew"
   ("Miriam Fixed" "Ezra SIL" "Ezra SIL SR" "Arial Hebrew" "Raanana" "New Peninim MT" "Aharoni" "David" "FrankRuehl" "Gisha" "Levenim MT" "Narkisim" "Rod" "Cardo" "Courier New" "Adobe Hebrew" "Code2000" "Aramaic Imperial Yeb" "Microsoft Sans Serif" "Tahoma" "Lucida Sans Unicode" "Arial Unicode MS" "Arial" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Hiragana"
   ("Osaka:spacing=m" "MS Gothic" "MS Mincho" "MingLiU" "Hiragino Kaku Gothic Pro" "Meiryo" "Arial Unicode MS" "HanaMinA" "BabelStone Han" "Microsoft JhengHei" "Microsoft YaHei" "Microsoft YaHei UI" "HAN NOM A" "Code2000" "ALPHABETUM Unicode"))
  ("Ideographic Description Characters"
   ("SimHei" "FangSong" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "AppleMyungjo" "HanaMinA" "HAN NOM A" "Quivira" "DFKai-SB" "Code2000"))
  ("Imperial Aramaic"
   ("Aramaic Imperial Yeb" "Segoe UI Historic" "Noto Sans Imperial Aramaic" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Inscriptional Pahlavi"
   ("ZH Mono" "Segoe UI Historic" "Noto Sans Inscriptional Pahlavi" "ALPHABETUM Unicode" "Ahuramzda:weight=bold"))
  ("Inscriptional Parthian"
   ("ZH Mono" "Segoe UI Historic" "Noto Sans Inscriptional Parthian" "ALPHABETUM Unicode"))
  ("IPA Extensions"
   ("Monaco" "Courier New" "Noto Sans" "Arial Unicode MS" "Arial" "Tahoma" "Microsoft Sans Serif" "Aboriginal Sans" "Cardo" "Everson Mono:weight=bold" "FreeMono" "Code2000" "ALPHABETUM Unicode"))
  ("Javanese"
   ("Tuladha Jejeg"))
  ("Kaithi" nil)
  ("Kana Supplement"
   ("Meiryo UI" "HanaMinA" "BabelStone Han"))
  ("Kanbun"
   ("SimHei" "FangSong" "SimSun" "Meiryo" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "HanaMinA" "BabelStone Han" "MingLiU" "Microsoft JhengHei" "Microsoft YaHei" "Microsoft YaHei UI" "HAN NOM A" "Code2000"))
  ("Kangxi Radicals"
   ("WenQuanYi Zen Hei Mono" "SimHei" "FangSong" "Meiryo" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "HanaMinA" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "DFKai-SB" "AppleMyungjo" "Apple Symbols" "Code2000"))
  ("Kannada"
   ("Kannada Sangam MN" "Tunga" "Akshar Unicode" "Kedage" "Nirmala UI" "Kannada MN" "Arial Unicode MS" "Code2000"))
  ("Katakana"
   ("Osaka:spacing=m" "MS Gothic" "MingLiU" "Meiryo" "HanaMinA" "Arial Unicode MS" "BabelStone Han" "Microsoft JhengHei" "Microsoft YaHei" "Microsoft YaHei UI" "HAN NOM A" "Code2000" "ALPHABETUM Unicode"))
  ("Katakana Phonetic Extensions"
   ("MS Gothic" "MingLiU" "Meiryo" "HanaMinA" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "HAN NOM A" "Code2000"))
  ("Kayah Li"
   ("Code2000" "FreeMono"))
  ("Kharoshthi"
   ("Segoe UI Historic" "MPH 2B Damase" "ALPHABETUM Unicode"))
  ("Khmer"
   ("Khmer Sangam MN" "DaunPenh" "Code2000" "MoolBoran" "Khmer Mondulkiri" "Khmer Busra"))
  ("Khmer Symbols"
   ("Khmer Sangam MN" "MoolBoran" "Khmer Mondulkiri" "Khmer Busra" "Code2000"))
  ("Khojki"
   ("KhojkiUnicodeOT"))
  ("Khudawadi"
   ("OldSindhi"))
  ("Lao"
   ("Lao Sangam MN" "DokChampa" "Arial Unicode MS" "Saysettha MX" "Code2000"))
  ("Latin Extended-C"
   ("Cambria Math" "Gentium Plus" "Charis SIL" "Doulos SIL" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Latin Extended-D"
   ("FreeMono" "Charis SIL" "Doulos SIL" "Junicode" "Cardo" "Quivira" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Latin Extended-E"
   ("Everson Mono:weight=bold" "HanaMinA"))
  ("Lepcha"
   ("Mingzat"))
  ("Letterlike Symbols"
   ("Monaco" "Segoe UI Symbol" "Apple Symbols" "Cambria Math" "Arial Unicode MS" "Code2000" "HAN NOM A" "Everson Mono:weight=bold"))
  ("Limbu"
   ("Namdhinggo SIL" "MPH 2B Damase" "Code2000"))
  ("Linear A"
   ("Aegean"))
  ("Linear B Ideograms"
   ("Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "MPH 2B Damase"))
  ("Linear B Syllabary"
   ("Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "MPH 2B Damase" "Penuturesu"))
  ("Lisu"
   ("Lisu Unicode" "Miao Unicode" "Noto Sans Lisu" "Lisu Tzimu" "Everson Mono:weight=bold"))
  ("Lycian"
   ("Segoe UI Historic" "Noto Sans Lycian" "Aegean" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Lydian"
   ("Segoe UI Historic" "Aegean" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Mahjong Tiles"
   ("Segoe UI Symbol" "Everson Mono"))
  ("Malayalam"
   ("Malayalam Sangam MN" "Nirmala UI" "Kartika" "Code2000" "Akshar Unicode" "Samyak Malayalam" "Samyak" "Arial Unicode MS"))
  ("Mandaic" nil)
  ("Mathematical Alphanumeric Symbols"
   ("Monaco" "Apple Symbols"))
  ("Mathematical Operators"
   ("Monaco" "Segoe UI Symbol" "Noto Sans Symbols" "Apple Symbols" "Arial Unicode MS" "Code2000" "Everson Mono:weight=bold" "FreeMono"))
  ("Meetei Mayek"
   ("Eeyek Unicode" "Meetei Mayek"))
  ("Meetei Mayek Extensions" nil)
  ("Meroitic Cursive"
   ("Nilus" "Segoe UI Historic" "Segoe UI Symbol"))
  ("Meroitic Hieroglyphs"
   ("Nilus"))
  ("Miao"
   ("Miao Unicode" "Albanian"))
  ("Miscellaneous Mathematical Symbols-A"
   ("Apple Symbols" "Segoe UI Symbol" "Code2000" "Cambria Math" "Everson Mono:weight=bold"))
  ("Miscellaneous Mathematical Symbols-B"
   ("Apple Symbols" "Cambria Math" "Code2000"))
  ("Miscellaneous Symbols"
   ("Apple Symbols" "Arial Unicode MS" "MS Reference Sans Serif" "Cardo" "Code2000" "Everson Mono:weight=bold"))
  ("Miscellaneous Symbols and Arrows"
   ("Apple Color Emoji" "Code2000" "Segoe UI Symbol"))
  ("Miscellaneous Symbols and Pictographs"
   ("Apple Color Emoji"))
  ("Miscellaneous Technical"
   ("Apple Symbols" "Code2000" "Symbola" "Quivira" "Everson Mono:weight=bold"))
  ("Modi"
   ("MarathiCursiveG"))
  ("Modifier Tone Letters"
   ("Apple Symbols" "Gentium Plus" "Code2000" "Charis SIL" "Doulos SIL"))
  ("Mongolian"
   ("STFangsong" "STHeiti" "STKaiti" "STSong" "Mongolian Baiti" "Daicing Xiaokai" "Code2000"))
  ("Mro"
   ("Mro Unicode"))
  ("Musical Symbols"
   ("Musica" "FreeSerif"))
  ("Myanmar"
   ("Myanmar Text" "Myanmar Sangam MN" "Myanmar MN" "TharLon" "Yunghkio" "Myanmar3" "Masterpiece Uni Sans" "Padauk" "Code2000" "Tai Le Valentinium"))
  ("Myanmar Extended-A"
   ("Myanmar Text" "Padauk" "TharLon" "Yunghkio"))
  ("Myanmar Extended-B"
   ("TharLon" "Yunghkio"))
  ("Nabataean"
   ("Everson Mono:weight=bold"))
  ("New Tai Lue"
   ("Microsoft New Tai Lue" "Dai Banna SIL Book" "Dai Banna SIL Book:style=Regular"))
  ("NKo"
   ("Ebrima" "Conakry" "Noto Sans NKo" "Code2000"))
  ("Number Forms"
   ("Arial Unicode MS" "Junicode" "Charis SIL" "Doulos SIL" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
  ("Ogham"
   ("Segoe UI Historic" "Segoe UI Symbol" "Noto Sans Ogham" "BabelStone Modern" "Aboriginal Serif" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Ol Chiki"
   ("Nirmala UI"))
  ("Old Hungarian"
   ("OldHungarian"))
  ("Old Italic"
   ("Segoe UI Historic" "Segoe UI Symbol" "DejaVu Sans:width=condensed" "Cardo" "New Athena Unicode" "Aegean" "Noto Sans Old Italic" "Albanian" "Code2001" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
  ("Old North Arabian"
   ("Marib"))
  ("Old Permic"
   ("Everson Mono:weight=bold"))
  ("Old Persian"
   ("Segoe UI Historic" "MPH 2B Damase" "Aegean" "Code2001" "FreeSans" "ALPHABETUM Unicode"))
  ("Old South Arabian"
   ("Segoe UI Historic" "Noto Sans Old South Arabian" "Qataban" "Everson Mono:weight=bold"))
  ("Old Turkic"
   ("Noto Sans Old Turkic" "Segoe UI Historic" "Segoe UI Symbol" "Everson Mono:weight=bold"))
  ("Optical Character Recognition"
   ("Apple Symbols" "Segoe UI Symbol" "Arial Unicode MS" "FreeMono" "BabelStone Modern" "Code2000" "Everson Mono"))
  ("Oriya"
   ("Oriya Sangam MN" "Nirmala UI" "Kalinga" "Samyak Oriya" "Samyak" "Code2000" "Arial Unicode MS"))
  ("Ornamental Dingbats" nil)
  ("Osmanya"
   ("Ebrima" "Andagii" "MPH 2B Damase" "Code2001" "Everson Mono:weight=bold"))
  ("Phags-pa"
   ("BabelStone Phags-pa Book" "BabelStone Phags-pa Book:style=Regular" "Microsoft PhagsPa" "Code2000"))
  ("Phaistos Disc"
   ("Aegean" "Everson Mono:weight=bold" "Code2001" "ALPHABETUM Unicode"))
  ("Phoenician"
   ("Segoe UI Historic" "Aegean" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Phonetic Extensions"
   ("Monaco" "Inconsolata" "Calibri" "Noto Sans" "Aboriginal Sans" "Charis SIL" "Doulos SIL" "Quivira" "Courier New" "DejaVu Sans:width=condensed" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Phonetic Extensions Supplement"
   ("Inconsolata" "Consolas" "Calibri" "Courier New" "Noto Sans" "Aboriginal Sans" "Charis SIL" "Doulos SIL" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Playing Cards"
   ("Apple Symbols" "Segoe UI Symbol"))
  ("Rejang"
   ("Code2000" "Everson Mono:weight=bold"))
  ("Rumi Numeral Symbols"
   ("HanaMinA"))
  ("Runic"
   ("Segoe UI Historic" "Segoe UI Symbol" "Aboriginal Serif" "Junicode" "FreeMono" "Quivira" "Code2000" "Cardo" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
  ("Samaritan"
   ("Noto Sans Samaritan" "Everson Mono:weight=bold"))
  ("Saurashtra"
   ("Code2000" "Sourashtra"))
  ("Sharada"
   ("Albanian"))
  ("Shavian"
   ("Apple Symbols" "Everson Mono:weight=bold"))
  ("Siddham" nil)
  ("Sinhala"
   ("Nirmala UI" "Iskoola Pota" "Akshar Unicode" "Sinhala Sangam MN"))
  ("Small Form Variants"
   ("Apple Symbols" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "Microsoft YaHei" "Microsoft YaHei UI" "Code2000"))
  ("Sora Sompeng"
   ("Nirmala UI"))
  ("Specials"
   ("BabelStone Modern" "Apple Symbols" "Arial Unicode MS" "FreeMono" "BabelStone Han"))
  ("Sundanese"
   ("Sundanese Unicode"))
  ("Sundanese Supplement" nil)
  ("Superscripts and Subscripts"
   ("Inconsolata" "Monaco" "Apple Symbols" "Segoe UI Symbol" "Charis SIL" "Doulos SIL" "Everson Mono:weight=bold" "FreeMono"))
  ("Supplemental Arrows-A"
   ("Apple Symbols" "Code2000" "Everson Mono:weight=bold" "FreeMono" "BabelStone Modern"))
  ("Supplemental Arrows-B"
   ("Apple Symbols" "Everson Mono:weight=bold"))
  ("Supplemental Arrows-C" nil)
  ("Supplemental Mathematical Operators"
   ("Segoe UI Symbol" "Apple Symbols" "Everson Mono:weight=bold"))
  ("Supplemental Punctuation"
   ("Segoe UI Symbol" "Antinoou" "New Athena Unicode" "Cardo" "Aegean" "Everson Mono:weight=bold" "Code2000" "ALPHABETUM Unicode"))
  ("Supplemental Symbols and Pictographs" nil)
  ("Syloti Nagri"
   ("MPH 2B Damase"))
  ("Syriac"
   ("Segoe UI Historic" "Estrangelo Edessa" "Estrangelo Nisibin" "Code2000"))
  ("Tagalog" nil)
  ("Tagbanwa" nil)
  ("Tags"
   ("BabelStone Modern" "BabelStone Han"))
  ("Tai Le"
   ("Microsoft Tai Le" "TharLon" "Noto Sans Tai Le" "Yunghkio" "Tai Le Valentinium" "MPH 2B Damase" "FreeSerif"))
  ("Tai Tham"
   ("Lanna Alif" "Chiangsaen Alif" "Lanna Unicode UI" "Monlam Uni Sans Serif"))
  ("Tai Viet"
   ("Tai Heritage Pro" "Noto Sans Tai Viet"))
  ("Tai Xuan Jing Symbols"
   ("WenQuanYi Zen Hei Mono" "Apple Symbols" "Noto Sans Symbols" "Segoe UI Symbol" "BabelStone Han" "DejaVu Sans:width=condensed" "Symbola" "Quivira" "BabelStone Modern" "Code2001" "Everson Mono:weight=bold"))
  ("Takri"
   ("Albanian"))
  ("Tamil"
   ("Latha" "Nirmala UI" "Tamil MN" "Tamil Sangam MN" "InaiMathi" "Vijaya" "Maduram" "Akshar Unicode" "Samyak Tamil" "Samyak" "Code2000" "Arial Unicode MS"))
  ("Telugu"
   ("Telugu Sangam MN" "Vani" "Nirmala UI" "Gautami" "Akshar Unicode" "Code2000" "Arial Unicode MS"))
  ("Thaana"
   ("MV Boli" "Noto Sans Thaana" "MPH 2B Damase" "Code2000" "Everson Mono:weight=bold"))
  ("Thai"
   ("Thonburi" "DokChampa" "Ayuthaya" "Silom" "Krungthep" "Sathu" "Angsana New" "AngsanaUPC" "Code2000" "Tahoma" "Arial Unicode MS" "Everson Mono:weight=bold"))
  ("Tibetan"
   ("Kailasa" "Kokonor" "Tibetan Machine Uni" "Microsoft Himalaya" "Jomolhari" "Monlam Uni Sans Serif" "Arial Unicode MS"))
  ("Tifinagh"
   ("Ebrima" "Code2000" "Everson Mono:weight=bold"))
  ("Transport and Map Symbols"
   ("Apple Color Emoji" "Segoe UI Symbol"))
  ("Ugaritic"
   ("Segoe UI Historic" "Aegean" "Andagii" "Everson Mono:weight=bold" "FreeSans" "ALPHABETUM Unicode"))
  ("Unified Canadian Aboriginal Syllabics"
   ("Aboriginal Sans" "Aboriginal Serif" "Noto Sans Canadian Aboriginal" "Gadugi" "Euphemia UCAS" "Euphemia" "Everson Mono:weight=bold"))
  ("Unified Canadian Aboriginal Syllabics Extended"
   ("Aboriginal Sans" "Aboriginal Serif" "Noto Sans Canadian Aboriginal" "Gadugi" "Euphemia UCAS" "Euphemia" "Everson Mono:weight=bold"))
  ("Vai"
   ("Ebrima" "Noto Sans Vai" "Dukor" "Wakor"))
  ("Variation Selectors"
   ("BabelStone Modern" "BabelStone Han"))
  ("Variation Selectors Supplement"
   ("BabelStone Modern" "BabelStone Han"))
  ("Vedic Extensions"
   ("Siddhanta"))
  ("Vertical Forms"
   ("Microsoft YaHei" "Microsoft YaHei UI"))
  ("Yi Radicals"
   ("Noto Sans Yi" "Nuosu SIL" "Microsoft Yi Baiti" "STFangsong"))
  ("Yi Syllables"
   ("Noto Sans Yi" "Nuosu SIL" "Microsoft Yi Baiti" "STFangsong"))
  ("Yijing Hexagram Symbols"
   ("WenQuanYi Zen Hei Mono" "Segoe UI Symbol" "Apple Symbols" "DejaVu Sans:width=condensed" "BabelStone Han" "BabelStone Modern" "Everson Mono:weight=bold")))))
 '(unicode-fonts-fallback-font-list (quote ("Apple Symbols" "Apple Color Emoji")))
 '(visible-bell t)
 '(visual-line-mode nil t)
 '(warning-minimum-level :error)
 '(wdired-allow-to-change-permissions nil)
 '(web-mode-code-indent-offset 2)
 '(web-mode-enable-whitespace-fontification nil)
 '(web-mode-markup-indent-offset 2)
 '(whitespace-style (quote (trailing tab-mark lines empty indentation)))
 '(winner-mode t)
 '(wl-default-spec "")
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
  ("[Ss]ent$"
   (number 250)
   wl-expire-archive-number1 t)
  ("[Aa]rchive$"
   (number 1000)
   wl-expire-archive-date t)
  ("[Rr]eceipts"
   (date 365)
   wl-expire-archive-date t))))
'(wl-folder-desktop-name
#("Mail" 0 4
  (wl-folder-is-group is-group wl-folder-entity-id 0)))
'(wl-folder-hierarchy-access-folders
(quote
 ("^-[^.]*\\(:\\|@\\|$\\)" "^@$" "^'$" "^\\.[^.]*\\.$")))
 '(wl-forward-subject-prefix "Fwd: ")
 '(wl-quicksearch-folder "[]")
 '(wl-smtp-authenticate-type "plain")
 '(wl-smtp-connection-type (quote starttls))
 '(wl-smtp-posting-port 587)
 '(wl-smtp-posting-server "smtp.mail.me.com")
 '(wl-smtp-posting-user "tobytripp@icloud.com")
 '(wl-summary-width 120)
 '(wl-trash-folder ".trash")
 '(wl-use-folder-petname (quote (modeline read-folder))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
