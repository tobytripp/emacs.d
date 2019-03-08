;; -*- coding: utf-8 -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-auto-save t)
 '(TeX-auto-untabify t)
 '(TeX-parse-self t)
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
 '(bbdb-mua-update-interactive-p (quote (update . query)))
 '(bibtex-BibTeX-field-alist
   (quote
    (("author" "Author1 [and Author2 ...] [and others]")
     ("editor" "Editor1 [and Editor2 ...] [and others]")
     ("journal" "Name of the journal (use string, remove braces)")
     ("year" "Year of publication")
     ("month" "Month of the publication as a string (remove braces)")
     ("note" "Remarks to be put at the end of the \\bibitem")
     ("publisher" "Publishing company")
     ("address" "Address of the publisher")
     ("url" "Internet address"))))
 '(bibtex-align-at-equal-sign t)
 '(cal-tex-24 t)
 '(cal-tex-diary t)
 '(calendar-date-style (quote european))
 '(cider-auto-select-error-buffer nil)
 '(cider-auto-test-mode t)
 '(cider-connection-message-fn (quote cider-random-tip))
 '(cider-font-lock-dynamically (quote (macro var deprecated core)))
 '(cider-known-endpoints (quote (("local default" "localhost" "5888"))))
 '(cider-mode-line-show-connection nil)
 '(cider-preferred-build-tool "lein")
 '(cider-save-file-on-load t)
 '(coffee-args-compile (quote ("-c" "-o js")))
 '(coffee-tab-width 2)
 '(column-number-mode t)
 '(company-backends
   (quote
    (company-tern company-nxml company-css company-semantic company-clang company-xcode company-cmake company-capf
                  (company-dabbrev-code company-gtags company-etags company-keywords)
                  company-oddmuse company-files company-dabbrev company-abbrev)))
 '(compilation-always-kill t)
 '(compilation-ask-about-save nil)
 '(compilation-auto-jump-to-first-error nil)
 '(compilation-scroll-output nil)
 '(counsel-org-headline-display-style (quote headline))
 '(css-indent-offset 3)
 '(custom-enabled-themes (quote (smart-mode-line-respectful)))
 '(custom-safe-themes
   (quote
    ("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "06afa0dc277039a59c18e7f047f800a0b6eee76c5c3bd4efb277b6c4587f5e90" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "ac11b04b18ffa783b6b5cf0e9418b19ab750cbf748da337da224f3d22cd54aab" "bc27fddfc22bb38b1d24354ba788a42439d200fef7bd601abf956b66c3de858e" "b288421199cd6e247ee8ce0c83ba14073114cb29c380ea2cffa70d0889cffc08" "ec1f03964106e0452477258cd7a4d9b1866ec79a7ab750e1f717fb7fd150ead9" default)))
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
 '(default-input-method "ucs")
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
 '(display-time-mode t)
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
 '(flymake-proc-allowed-file-name-masks
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
 '(glasses-face nil)
 '(glasses-original-separator "")
 '(glasses-separate-parentheses-p t)
 '(glasses-separator "⇁")
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
 '(ivy-completing-read-handlers-alist
   (quote
    ((tmm-menubar . completing-read-default)
     (tmm-shortcut . completing-read-default)
     (bbdb-create . ivy-completing-read-with-empty-string-def)
     (auto-insert . ivy-completing-read-with-empty-string-def)
     (Info-on-current-buffer . ivy-completing-read-with-empty-string-def)
     (Info-follow-reference . ivy-completing-read-with-empty-string-def)
     (Info-menu . ivy-completing-read-with-empty-string-def)
     (Info-index . ivy-completing-read-with-empty-string-def)
     (Info-virtual-index . ivy-completing-read-with-empty-string-def)
     (info-display-manual . ivy-completing-read-with-empty-string-def)
     (webjump . ivy-completing-read-with-empty-string-def)
     (org-capture-refile . completing-read-default)
     (org-refile . completing-read-default)
     (save-some-buffers . completing-read-default))))
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
 '(magit-wip-after-apply-mode-lighter "")
 '(magit-wip-after-save-local-mode-lighter " Δ")
 '(magit-wip-after-save-mode t)
 '(magit-wip-before-change-mode t)
 '(magit-wip-before-change-mode-lighter "")
 '(menu-bar-mode t)
 '(mime-display-text/plain-flowed-fill-column 80.0)
 '(mime-pgp-decrypt-when-preview t)
 '(mime-save-directory "~/tmp/")
 '(mime-view-buttons-visible t)
 '(mime-view-text/html-previewer (quote w3m))
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
 '(org-agenda-files
   (quote
    ("~/Documents/org/tasks.open.org" "~/Documents/org/tasks.private.org.gpg" "~/Projects/OpenMarkets/system-test/todo.org")))
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
    (swift-mode color-theme-solarized gnuplot gnuplot-mode coffee-mode eval-sexp-fu docker flycheck sqlup-mode rich-minority cider-hydra markdown-mode+ company-terraform solarized-theme zenburn-theme alect-themes ivy smart-mode-line auctex unicode-fonts cider ivy-hydra hydra counsel helm-company linum-relative linum-ralative linum-ralative-mode helm neotree ob-elixir lentic dired-subtree elixir-yasnippets flycheck-haskell intero shm purescript-mode org-bullets svg-mode-line-themes avy web-beautify js2-mode company-tern smartparens which-key minitest elm-mode company diff-hl god-mode clj-refactor clojure-mode apples-mode mac-pseudo-daemon osx-pseudo-daemon flymake-hlint edit-indirect markdown-mode bbdb wanderlust epa-file log4j-mode org-plus-contrib terraform-mode cl-lib org yasnippet yaml-mode web-mode web-completion-data twittering-mode tt-mode textmate switch-window smex smart-mode-line-powerline-theme sass-mode ruby-tools rspec-mode rhtml-mode rbenv rainbow-delimiters psci projectile perl6-mode paredit ox-reveal ocodo-svg-modelines multi-term mmm-mode magit js-comint isearch+ inf-ruby idle-highlight-mode htmlize highlight-indentation haskell-mode fullframe flx-ido feature-mode enh-ruby-mode emmet-mode elixir-mode dockerfile-mode dired+ dash-at-point company-quickhelp column-marker color-identifiers-mode cider-eval-sexp-fu bug-hunter browse-kill-ring apache-mode alchemist ag ace-window ace-jump-mode)))
 '(perltidy-program "~/perl5/bin/perltidy")
 '(projectile-mode-line (quote (:eval (format " {%s}" (projectile-project-name)))))
 '(revert-without-query (quote ("rspec.*")))
 '(rm-whitelist (quote (" ᴨ")))
 '(rspec-compilation-buffer-name "*specs*")
 '(rspec-docker-command "docker-compose run")
 '(rspec-docker-container "app")
 '(rspec-docker-cwd "/usr/src/app/")
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
    ((default-directory . /usr/src/app/spec/models)
     (rspec-use-bundler-when-possible)
     quote
     (quote
      (quote
       ((encoding . utf-8)
        (whitespace-line-column . 80)
        (lexical-binding . t)))))))
 '(scss-compile-at-save nil)
 '(shm-program-name "/Users/toby/.local/bin/structured-haskell-mode")
 '(show-paren-mode t)
 '(sml/mode-width
   (if
       (eq
        (powerline-current-separator)
        (quote arrow))
       (quote right)
     (quote full)))
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
    (("openmarkets.local"
      (sql-product
       (quote postgres))
      (sql-user "openmarkets_development")
      (sql-server "localhost")
      (sql-database "openmarkets_development")
      (sql-port 5432))
     ("exchange.local"
      (sql-product
       (quote postgres))
      (sql-user "exchange_service")
      (sql-server "localhost")
      (sql-database "openmarkets_development")
      (sql-port 5432))
     ("auth.local"
      (sql-product
       (quote postgres))
      (sql-user "om_auth")
      (sql-server "localhost")
      (sql-database "openmarkets_development")
      (sql-port 5432))
     ("postgres.local"
      (sql-product
       (quote postgres))
      (sql-user "postgres")
      (sql-server "localhost")
      (sql-port 5432))
     ("mysql.local"
      (sql-product
       (quote mysql))
      (sql-user "root")
      (sql-password "aery.boss.process.hassle.willow.shame")
      (sql-server "127.0.0.1")
      (sql-database "mysql")
      (sql-port 3306))
     ("exchange-test"
      (sql-product
       (quote postgres))
      (sql-user "exchange_test")
      (sql-database "exchange_test")
      (sql-server "localhost")
      (sql-port 5432))
     ("exchange.staging"
      (sql-product
       (quote postgres))
      (sql-user "u62g70mofambrc")
      (sql-database "d49e8cgdt9e24l")
      (sql-server "ec2-34-237-203-202.compute-1.amazonaws.com")
      (sql-port 5432))
     ("curved"
      (sql-product
       (quote postgres))
      (sql-user "u5jchjk285jo5d")
      (sql-database "d3lq87ei1pmuag")
      (sql-server "ec2-18-208-75-132.compute-1.amazonaws.com")
      (sql-port 5432))
     ("openmarkets.production"
      (sql-product
       (quote postgres))
      (sql-user "u5jchjk285jo5d")
      (sql-database "d3lq87ei1pmuag")
      (sql-server "ec2-35-153-247-20.compute-1.amazonaws.com")
      (sql-port 5432)))))
 '(sql-database "toby")
 '(sql-mysql-login-params (quote (user password server database port)))
 '(tags-revert-without-query t)
 '(tags-table-list nil)
 '(tool-bar-mode nil)
 '(unicode-fonts-block-font-mapping
   (quote
    (("Ancient Greek Musical Notation"
      ("Cardo" "Aegean" "New Athena Unicode" "Musica" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ancient Greek Numbers"
      ("Apple Symbols" "New Athena Unicode" "Cardo" "Aegean" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Ancient Symbols"
      ("Analecta" "New Athena Unicode" "Cardo" "Aegean" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Arrows"
      ("Apple Symbols" "Cambria Math" "Segoe UI Symbol" "Arial Unicode MS" "BabelStone Modern" "Code2000" "Everson Mono:weight=bold" "FreeMono"))
     ("Block Elements"
      ("FreeMono" "DejaVu Sans:width=condensed" "Apple Symbols" "Segoe UI Symbol" "BabelStone Modern" "Code2000" "Everson Mono:weight=bold"))
     ("Box Drawing"
      ("FreeMono" "Everson Mono" "Code2000" "Segoe UI Symbol"))
     ("CJK Compatibility Ideographs"
      ("SimHei" "FangSong" "SimSun" "Microsoft YaHei" "Microsoft YaHei UI" "WenQuanYi Zen Hei Mono" "BabelStone Han" "UnBatang" "MingLiU" "Microsoft JhengHei" "Microsoft JhengHei UI" "HAN NOM A" "Arial Unicode MS" "Lantinghei SC" "HanaMinA"))
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
     ("Control Pictures"
      ("Apple Symbols" "BabelStone Modern" "Noto Sans Symbols" "Segoe UI Symbol" "Arial Unicode MS" "FreeMono" "Code2000" "Everson Mono:weight=bold"))
     ("Currency Symbols"
      ("Monaco" "Consolas" "Segoe UI" "Apple Symbols" "Everson Mono:weight=bold" "FreeMono"))
     ("Dingbats"
      ("Apple Color Emoji" "Segoe UI Symbol" "Zapf Dingbats" "DejaVu Sans:width=condensed" "Arial Unicode MS" "Code2000" "Everson Mono:weight=bold"))
     ("Domino Tiles"
      ("Segoe UI Symbol" "Code2001" "Everson Mono:weight=bold"))
     ("Emoticons"
      ("Apple Color Emoji" "Segoe UI Symbol"))
     ("Enclosed Alphanumeric Supplement"
      ("Segoe UI Symbol" "BabelStone Han" "BabelStone Modern"))
     ("Enclosed Alphanumerics"
      ("Segoe UI Symbol" "Junicode" "Arial Unicode MS" "Code2000" "BabelStone Han" "WenQuanYi Zen Hei Mono" "BabelStone Modern" "HAN NOM A" "Everson Mono:weight=bold"))
     ("General Punctuation"
      ("Monaco" "Apple Symbols" "Segoe UI Symbol" "Cambria Math" "Charis SIL" "Doulos SIL" "Antinoou" "Code2000" "Everson Mono:weight=bold" "FreeMono" "BabelStone Modern"))
     ("Geometric Shapes"
      ("Segoe UI Symbol" "Arial Unicode MS" "BabelStone Modern" "Everson Mono" "FreeMono" "Code2000"))
     ("Geometric Shapes Extended" nil)
     ("Gothic"
      ("Segoe UI Historic" "Segoe UI Symbol" "Analecta" "Junicode" "Sadagolthina" "MPH 2B Damase" "FreeSerif" "Code2001" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Greek Extended"
      ("Courier New" "Antinoou" "Noto Sans" "DejaVu Sans:width=condensed" "Cardo" "Junicode" "New Athena Unicode" "Microsoft Sans Serif" "Gentium Plus Compact" "Gentium Plus" "Arial Unicode MS" "Arial" "Tahoma" "Aegean" "Code2000" "Quivira" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Greek and Coptic"
      ("Antinoou" "Segoe UI Historic" "Segoe UI Symbol" "New Athena Unicode" "Calibri" "Microsoft Sans Serif" "Gentium Plus Compact" "Gentium Plus" "Lucida Console" "Arial Unicode MS" "Cardo" "Aegean" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode" "Noto Sans Coptic"))
     ("Halfwidth and Fullwidth Forms"
      ("Meiryo" "Arial Unicode MS" "Microsoft JhengHei" "Microsoft JhengHei UI" "Microsoft YaHei" "Microsoft YaHei UI" "BabelStone Han" "Apple Symbols" "Code2000" "HAN NOM A"))
     ("Latin Extended-C"
      ("Cambria Math" "Gentium Plus" "Charis SIL" "Doulos SIL" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Latin Extended-D"
      ("FreeMono" "Charis SIL" "Doulos SIL" "Junicode" "Cardo" "Quivira" "Code2000" "Everson Mono:weight=bold" "ALPHABETUM Unicode"))
     ("Latin Extended-E"
      ("Everson Mono:weight=bold" "HanaMinA"))
     ("Letterlike Symbols"
      ("Monaco" "Segoe UI Symbol" "Apple Symbols" "Cambria Math" "Arial Unicode MS" "Code2000" "HAN NOM A" "Everson Mono:weight=bold"))
     ("Mahjong Tiles"
      ("Segoe UI Symbol" "Everson Mono"))
     ("Mathematical Alphanumeric Symbols"
      ("Monaco" "Apple Symbols"))
     ("Mathematical Operators"
      ("Monaco" "Segoe UI Symbol" "Noto Sans Symbols" "Apple Symbols" "Arial Unicode MS" "Code2000" "Everson Mono:weight=bold" "FreeMono"))
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
     ("Modifier Tone Letters"
      ("Apple Symbols" "Gentium Plus" "Code2000" "Charis SIL" "Doulos SIL"))
     ("Musical Symbols"
      ("Musica" "FreeSerif"))
     ("Number Forms"
      ("Arial Unicode MS" "Junicode" "Charis SIL" "Doulos SIL" "Everson Mono:weight=bold" "FreeMono" "ALPHABETUM Unicode"))
     ("Optical Character Recognition"
      ("Apple Symbols" "Segoe UI Symbol" "Arial Unicode MS" "FreeMono" "BabelStone Modern" "Code2000" "Everson Mono"))
     ("Playing Cards"
      ("Apple Symbols" "Segoe UI Symbol"))
     ("Small Form Variants"
      ("Apple Symbols" "Arial Unicode MS" "WenQuanYi Zen Hei Mono" "Microsoft YaHei" "Microsoft YaHei UI" "Code2000"))
     ("Specials"
      ("BabelStone Modern" "Apple Symbols" "Arial Unicode MS" "FreeMono" "BabelStone Han"))
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
     ("Transport and Map Symbols"
      ("Apple Color Emoji" "Segoe UI Symbol")))))
 '(unicode-fonts-debug-availability t)
 '(unicode-fonts-fallback-font-list (quote ("Apple Symbols" "Apple Color Emoji")))
 '(unicode-fonts-skip-font-groups (quote (chinese-simplified chinese-traditional)))
 '(unicode-fonts-use-prepend t)
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
 '(default ((t (:family "Monaco" :foundry "nil" :slant normal :weight normal :height 100 :width normal))))
 '(aw-leading-char-face ((t (:foreground "red" :height 5.0 :width normal)))))
