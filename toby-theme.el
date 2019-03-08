(deftheme toby
  "Created 2018-11-13.")

(custom-theme-set-variables
 'toby
 '(ansi-color-names-vector [solarized-bg red green yellow blue magenta cyan solarized-fg])
 '(company-backends (quote (company-tern company-nxml company-css company-semantic company-clang company-xcode company-cmake company-capf (company-dabbrev-code company-gtags company-etags company-keywords) company-oddmuse company-files company-dabbrev company-abbrev)))
 '(compilation-always-kill t)
 '(compilation-ask-about-save nil)
 '(compilation-auto-jump-to-first-error nil)
 '(compilation-scroll-output nil)
 '(debug-on-error t)
 '(dired-auto-revert-buffer (quote dired-directory-changed-p))
 '(erc-away-nickname "(toby)")
 '(erc-interpret-mirc-color t)
 '(erc-modules (quote (autojoin button completion fill)))
 '(erc-nick "toby")
 '(erc-reuse-frames nil)
 '(erc-server "localhost")
 '(erc-server-reconnect-attempts 3)
 '(erc-show-my-nick nil)
 '(erc-user-full-name "Toby Tripp")
 '(fill-column 78)
 '(org-babel-clojure-backend (quote cider))
 '(org-src-window-setup (quote other-window))
 '(package-selected-packages (quote (flycheck-pos-tip flycheck-clojure flymd markdown-mode docker-tramp sqlup-mode cider-eval-sexp-fu cider command-log-mode minitest-mode minitest log4j-mode org-plus-contrib terraform-mode cl-lib org yasnippet yaml-mode web-mode web-completion-data twittering-mode tt-mode textmate switch-window smex smart-mode-line-powerline-theme sass-mode ruby-tools ruby-end rspec-mode rhtml-mode rbenv rainbow-delimiters psci projectile perl6-mode paredit ox-reveal ocodo-svg-modelines multi-term mmm-mode magit js-comint isearch+ inf-ruby idle-highlight-mode htmlize highlight-indentation haskell-mode fullframe flx-ido feature-mode enh-ruby-mode emmet-mode elixir-mode dockerfile-mode dired+ dash-at-point company-quickhelp column-marker color-identifiers-mode bug-hunter browse-kill-ring apache-mode alchemist ag ace-window ace-jump-mode)))
 '(perltidy-program "~/perl5/bin/perltidy")
 '(revert-without-query (quote ("rspec.*")))
 '(safe-local-variable-values (quote (quote (quote (quote ((encoding . utf-8) (whitespace-line-column . 80) (lexical-binding . t)))))))
 '(sp-base-key-bindings (quote paredit))
 '(tags-revert-without-query t)
 '(visible-bell t)
 '(visual-line-mode nil)
 '(custom-safe-themes (quote ("6612c76c8d7d0dd9a301db4d708b91ec9f347add9b84e8654decabecaedf73ac" "063603bcff1b5e531484fa373e67d7b355152d3878d0f0a40bfee109949711bb" "f55754815a5ede14da497c34258454c2886a5ccdc4c5dbcd6de2b10948ef66b5" "5521a75edb4cf8c883eb739a7644baa38ee356689248f89b309984995fdc8250" "6889aacaf31b2e9c6e983883dbfce9be918689210d08194aef9584c8a9639eee" "84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "7086923ce78db059a71e6f428b32a3894c18a3fa586dd182bfade998e66bbc72" "5d01a86960de1eb33cf786e7e4618deff5620796612d3e931549ef4b11301c5b" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "81d4cc8374c164a5ef3d03d2ce95bbc63b63ec9501eb95efcda618ef2be912c7" "288543c0482be3721231ac464e03dea0216f06231ba67b87b19bf8d7c9de8fb9" "bb017d8fde573b632afcc6e6a9bfa97be34b1cedd5302eb25c495e90b91215d4" "25e6c96f73abc907d629bac26145677d283e9d54975f0515adb3c7790b9ed0cd" "633166cd22dfd9661a13b79fa6c93de958fc383546f3d38e2945e064efd89b5d" "01bbac544c1358e1219e453c4f9d46ba7c397292a655977225d17af9f4fe0eaf" "f3b20fa3cb4656c3d683c14e40bdc01a2a65bada81ed7832c39e8875f23a8290" "5ebf86527cdd9a9b5d2e4cfea1da01315a337cf3fecc519b64aada44a4f329d0" "462b3c5f9056d5cddf9b66d96ca5ee5f1f154f155a594fc2fe20d95f6715b627" "58fa5099e00d5ba113a33a2c51e45d5f9b9fe7d1469ed20f947c590a71d0b10a" "46b9c7059d63d2de5f122fc90d5ee303a433ab5d25f482f6dcdebd47de23d2c2" "d2e2792bf4c9e6338663f64165b0948e84a4165465272b7cf814ba7e1b5e6cb2" "137705bce54ded838e45224f0aaa92db6ba6a2128ef7f8d45d5486dfead8e933" "730c625dbb2390df143f0ae74f27ddff6f18c00d15185c35f5c14aedbcf3dc37" "64b6d6eec0935f6150b0748b91dd52e7d47cd7d733352176443651f8e60f67f7" "25dab113b04c1d1152bb1cac0027c47c2cb9c3b860516781feffaf7f3ef95610" "9330df8772bfe8025d061f7d108780f1e10bec8ab63b69f65688fef4b732b641" "26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" default)))
 '(electric-pair-mode nil)
 '(global-linum-mode nil)
 '(menu-bar-mode t)
 '(winner-mode t)
 '(show-paren-mode t))

(custom-theme-set-faces
 'toby
 '(cursor ((((class color) (min-colors 89)) (:foreground "#002b36" :background "#839496" :inverse-video t))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(escape-glyph ((t (:foreground "goldenrod4"))))
 '(minibuffer-prompt ((t (:box nil :inherit default))))
 '(highlight ((t (:background "#073642"))))
 '(region ((((class color) (min-colors 89)) (:foreground "#002b36" :background "#93a1a1"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((((class color) (min-colors 89)) (:background "#002b36"))))
 '(trailing-whitespace ((((class color) (min-colors 89)) (:background "#dc322f"))))
 '(font-lock-builtin-face ((t (:foreground "#268bd2" :slant italic))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#586e75"))))
 '(font-lock-comment-face ((t (:foreground "#586e75"))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#268bd2" :weight bold))))
 '(font-lock-doc-face ((t (:background "#1a1a1a" :foreground "gray65" :slant italic))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:foreground "#859900" :weight bold))))
 '(font-lock-negation-char-face ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(font-lock-preprocessor-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#2aa198"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(font-lock-warning-face ((((class color) (min-colors 89)) (:foreground "#dc322f" :weight bold :underline t))))
 '(button ((t (:underline t))))
 '(link ((((class color) (min-colors 89)) (:foreground "#b58900" :underline t :weight bold))))
 '(link-visited ((((class color) (min-colors 89)) (:foreground "#b58900" :underline t :weight normal))))
 '(fringe ((t (:background "gray9" :foreground "#839496"))))
 '(header-line ((((class color) (min-colors 89)) (:foreground "#b58900" :background "#073642" :box (:line-width -1 :style released-button)))))
 '(tooltip ((((class color) (min-colors 89)) (:background "#7B6000" :foreground "#DEB542" :inherit variable-pitch))))
 '(mode-line ((((class color) (min-colors 89)) (:foreground "#fefef0" :background "DarkOliveGreen" :box (:line-width -1 :style released-button)))))
 '(mode-line-buffer-id ((t (:foreground "wheat1" :weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:foreground "#839496" :background "gray27" :box (:line-width -1 :style released-button)))))
 '(isearch ((((class color) (min-colors 89)) (:foreground "#b58900" :background "#073642"))))
 '(isearch-fail ((((class color) (min-colors 89)) (:foreground "#839496" :background "#dc322f"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:foreground "#b58900" :background "#073642"))))
 '(match ((((class color) (min-colors 89)) (:background "#073642" :foreground "#93a1a1" :weight bold))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit isearch))))
 '(idle-highlight ((t (:foreground "khaki"))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#2aa198"))))
 '(compilation-line-number ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(menu ((((class color) (min-colors 89)) (:foreground "#839496" :background "#002b36"))))
 '(vertical-border ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(custom-variable-tag ((((class color) (min-colors 89)) (:foreground "#2aa198"))))
 '(custom-comment-tag ((((class color) (min-colors 89)) (:foreground "#586e75"))))
 '(custom-group-tag ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(custom-state ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(linum ((((class color) (min-colors 89)) (:foreground "#839496" :background "black"))))
 '(org-agenda-date ((((class color) (min-colors 89)) (:foreground "#839496" :background "#073642" :weight bold :box (:line-width 4 :color "#073642")))))
 '(org-agenda-date-weekend ((((class color) (min-colors 89)) (:inherit org-agenda-date :slant italic))))
 '(org-agenda-date-today ((((class color) (min-colors 89)) (:inherit org-agenda-date :slant italic underline: t))))
 '(org-agenda-done ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(org-archived ((((class color) (min-colors 89)) (:foreground "#586e75" :weight normal))))
 '(org-block ((((class color) (min-colors 89)) (:foreground "#586e75"))))
 '(org-block-begin-line ((t (:foreground "#586e75" :slant italic))))
 '(org-checkbox ((((class color) (min-colors 89)) (:box (:line-width 1 :style released-button) :inherit default))))
 '(org-code ((t (:foreground "#586e75"))))
 '(org-date ((((class color) (min-colors 89)) (:foreground "#268bd2" :underline t))))
 '(org-done ((((class color) (min-colors 89)) (:bold t :weight bold :foreground "#859900"))))
 '(org-ellipsis ((((class color) (min-colors 89)) (:foreground "#586e75"))))
 '(org-formula ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(org-headline-done ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(org-hide ((t (:inverse-video t))))
 '(org-level-1 ((((class color) (min-colors 89)) (:foreground "#cb4b16"))))
 '(org-level-2 ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(org-level-3 ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(org-level-4 ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(org-level-5 ((((class color) (min-colors 89)) (:foreground "#2aa198"))))
 '(org-level-6 ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(org-level-7 ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(org-level-8 ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(org-link ((((class color) (min-colors 89)) (:foreground "#b58900" :underline t))))
 '(org-sexp-date ((((class color) (min-colors 89)) (:foreground "#6c71c4"))))
 '(org-scheduled ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(org-scheduled-previously ((((class color) (min-colors 89)) (:foreground "#cb4b16"))))
 '(org-scheduled-today ((((class color) (min-colors 89)) (:bold t :foreground "#268bd2" :weight bold))))
 '(org-special-keyword ((((class color) (min-colors 89)) (:foreground "#586e75" :weigth bold :bold t))))
 '(org-table ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(org-tag ((((class color) (min-colors 89)) (:bold t :weight bold))))
 '(org-time-grid ((((class color) (min-colors 89)) (:foreground "#2aa198"))))
 '(org-todo ((((class color) (min-colors 89)) (:bold t :foreground "#dc322f" :weight bold))))
 '(org-upcoming-deadline ((((class color) (min-colors 89)) (:bold t :foreground "#b58900"))))
 '(org-warning ((((class color) (min-colors 89)) (:bold t :foreground "#cb4b16" :weight bold :underline t))))
 '(outline-8 ((((class color) (min-colors 89)) (:inherit default))))
 '(outline-7 ((((class color) (min-colors 89)) (:inherit outline-8 :height 1.0))))
 '(outline-6 ((((class color) (min-colors 89)) (:inherit outline-7 :height 1.0))))
 '(outline-5 ((((class color) (min-colors 89)) (:inherit outline-6 :height 1.0))))
 '(outline-4 ((((class color) (min-colors 89)) (:inherit outline-5 :height 1.0))))
 '(outline-3 ((((class color) (min-colors 89)) (:inherit outline-4 :height 1.0))))
 '(outline-2 ((((class color) (min-colors 89)) (:inherit outline-3 :height 1.0))))
 '(outline-1 ((((class color) (min-colors 89)) (:inherit outline-2 :height 1.0))))
 '(rainbow-delimiters-depth-2-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(rainbow-delimiters-depth-3-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(rainbow-delimiters-depth-4-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(rainbow-delimiters-depth-5-face ((((class color) (min-colors 89)) (:foreground "#cb4b16"))))
 '(rainbow-delimiters-depth-6-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(rainbow-delimiters-depth-7-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(rainbow-delimiters-depth-8-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(rainbow-delimiters-depth-9-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(rainbow-delimiters-unmatched-face ((((class color) (min-colors 89)) (:foreground "#839496" :background "#002b36" :inverse-video t))))
 '(show-paren-match ((((class color) (min-colors 89)) (:foreground "#2aa198" :background "#002b36" :weight normal :inverse-video t))))
 '(show-paren-mismatch ((((class color) (min-colors 89)) (:foreground "#dc322f" :background "#002b36" :weight normal :inverse-video t))))
 '(org-block-end-line ((t (:inherit (org-meta-line)))))
 '(comint-highlight-prompt ((t (:inherit minibuffer-prompt))))
 '(vc-locked-state ((default (:inherit (vc-state-base)))))
 '(web-mode-symbol-face ((t (:foreground "goldenrod2" :inherit (font-lock-constant-face)))))
 '(hl-line ((t (:background "#073642"))))
 '(widget-field ((t (:background "gray21" :box (:line-width -1 :color "dark gray" :style pressed-button)))))
 '(hi-green ((((min-colors 88) (background dark)) (:foreground "black" :background "light green")) (((background dark)) (:foreground "black" :background "green")) (((min-colors 88)) (:background "light green")) (t (:background "green"))))
 '(enh-ruby-op-face ((t (:foreground "powder blue"))))
 '(default ((t (:background "#211E1E" :foreground "#DADADA")))))

(provide-theme 'toby)
