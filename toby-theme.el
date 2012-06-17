(deftheme toby
  "Created 2012-06-17.")

(custom-theme-set-variables
 'toby
 '(ansi-color-names-vector [solarized-bg red green yellow blue magenta cyan solarized-fg])
 '(fci-rule-color "#073642"))

(custom-theme-set-faces
 'toby
 '(cursor ((((class color) (min-colors 89)) (:foreground "#002b36" :background "#839496" :inverse-video t))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((t (:family "Sans Serif"))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:background "#211E1E" :foreground "#93a1a1" :box nil))))
 '(highlight ((t (:background "#073642"))))
 '(region ((((class color) (min-colors 89)) (:foreground "#002b36" :background "#93a1a1"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((((class color) (min-colors 89)) (:background "#002b36"))))
 '(trailing-whitespace ((((class color) (min-colors 89)) (:background "#dc322f"))))
 '(font-lock-builtin-face ((((class color) (min-colors 89)) (:foreground "#268bd2" :slant italic))))
 '(font-lock-comment-delimiter-face ((((class color) (min-colors 89)) (:foreground "#586e75"))))
 '(font-lock-comment-face ((((class color) (min-colors 89)) (:foreground "#586e75"))))
 '(font-lock-constant-face ((((class color) (min-colors 89)) (:foreground "#268bd2" :weight bold))))
 '(font-lock-doc-face ((((class color) (min-colors 89)) (:foreground "#2aa198" :slant italic))))
 '(font-lock-function-name-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(font-lock-keyword-face ((((class color) (min-colors 89)) (:foreground "#859900" :weight bold))))
 '(font-lock-negation-char-face ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(font-lock-preprocessor-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:inherit (bold)))))
 '(font-lock-string-face ((((class color) (min-colors 89)) (:foreground "#2aa198"))))
 '(font-lock-type-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(font-lock-warning-face ((((class color) (min-colors 89)) (:foreground "#dc322f" :weight bold :underline t))))
 '(button ((t (:underline t))))
 '(link ((((class color) (min-colors 89)) (:foreground "#b58900" :underline t :weight bold))))
 '(link-visited ((((class color) (min-colors 89)) (:foreground "#b58900" :underline t :weight normal))))
 '(fringe ((((class color) (min-colors 89)) (:foreground "#839496" :background "#073642"))))
 '(header-line ((((class color) (min-colors 89)) (:foreground "#b58900" :background "#073642" :box (:line-width -1 :style released-button)))))
 '(tooltip ((((class color) (min-colors 89)) (:background "#7B6000" :foreground "#DEB542" :inherit variable-pitch))))
 '(mode-line ((((class color) (min-colors 89)) (:foreground "#839496" :background "#073642" :box (:line-width -1 :style released-button)))))
 '(mode-line-buffer-id ((((class color) (min-colors 89)) (:foreground "#93a1a1" :weight bold))))
 '(mode-line-emphasis ((t (:weight bold))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((((class color) (min-colors 89)) (:box (:line-width -1 :style released-button) :background "#1c1c1c" :foreground "#839496"))))
 '(isearch ((((class color) (min-colors 89)) (:foreground "#b58900" :background "#073642"))))
 '(isearch-fail ((((class color) (min-colors 89)) (:foreground "#839496" :background "#dc322f"))))
 '(lazy-highlight ((((class color) (min-colors 89)) (:foreground "#b58900" :background "#073642"))))
 '(match ((((class color) (min-colors 89)) (:background "#073642" :foreground "#93a1a1" :weight bold))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(escape-glyph-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(compilation-column-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(compilation-enter-directory-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(compilation-error-face ((((class color) (min-colors 89)) (:foreground "#dc322f" :weight bold :underline t))))
 '(compilation-face ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(compilation-info-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(compilation-info ((((class color) (min-colors 89)) (:foreground "#859900" :underline t))))
 '(compilation-leave-directory-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(compilation-line-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(compilation-line-number ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(compilation-message-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(compilation-warning-face ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold :underline t))))
 '(grep-context-face ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(grep-error-face ((((class color) (min-colors 89)) (:foreground "#dc322f" :weight bold :underline t))))
 '(grep-hit-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(grep-match-face ((((class color) (min-colors 89)) (:foreground "#cb4b16" :weight bold))))
 '(menu ((((class color) (min-colors 89)) (:foreground "#839496" :background "#002b36"))))
 '(vertical-border ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(font-lock-doc-string-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(c-annotation-face ((((class color) (min-colors 89)) (:inherit font-lock-constant-face))))
 '(ace-jump-face-background ((((class color) (min-colors 89)) (:foreground "#586e75" :background "#002b36" :inverse-video nil))))
 '(ace-jump-face-foreground ((((class color) (min-colors 89)) (:foreground "#dc322f" :background "#002b36" :inverse-video nil))))
 '(ahs-definition-face ((((class color) (min-colors 89)) (:foreground "#002b36" :background "#268bd2" :underline t))))
 '(ahs-edit-mode-face ((((class color) (min-colors 89)) (:foreground "#002b36" :background "#b58900"))))
 '(ahs-face ((((class color) (min-colors 89)) (:foreground "#002b36" :background "#268bd2"))))
 '(ahs-plugin-bod-face ((((class color) (min-colors 89)) (:foreground "#002b36" :background "#268bd2"))))
 '(ahs-plugin-defalt-face ((((class color) (min-colors 89)) (:foreground "#002b36" :background "#2aa198"))))
 '(ahs-plugin-whole-buffer-face ((((class color) (min-colors 89)) (:foreground "#002b36" :background "#859900"))))
 '(ahs-warning-face ((((class color) (min-colors 89)) (:foreground "#dc322f" :bold t))))
 '(custom-variable-tag ((((class color) (min-colors 89)) (:foreground "#2aa198"))))
 '(custom-comment-tag ((((class color) (min-colors 89)) (:foreground "#586e75"))))
 '(custom-group-tag ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(custom-state ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(diff-added ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(diff-changed ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(diff-removed ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(diff-header ((((class color) (min-colors 89)) (:background "#002b36"))))
 '(diff-file-header ((((class color) (min-colors 89)) (:background "#002b36" :foreground "#839496" :bold t))))
 '(eshell-prompt ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold))))
 '(eshell-ls-archive ((((class color) (min-colors 89)) (:foreground "#dc322f" :weight bold))))
 '(eshell-ls-backup ((((class color) (min-colors 89)) (:inherit font-lock-comment))))
 '(eshell-ls-clutter ((((class color) (min-colors 89)) (:inherit font-lock-comment))))
 '(eshell-ls-directory ((((class color) (min-colors 89)) (:foreground "#268bd2" :weight bold))))
 '(eshell-ls-executable ((((class color) (min-colors 89)) (:foreground "#dc322f" :weight bold))))
 '(eshell-ls-unreadable ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(eshell-ls-missing ((((class color) (min-colors 89)) (:inherit font-lock-warning))))
 '(eshell-ls-product ((((class color) (min-colors 89)) (:inherit font-lock-doc))))
 '(eshell-ls-special ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold))))
 '(eshell-ls-symlink ((((class color) (min-colors 89)) (:foreground "#2aa198" :weight bold))))
 '(flymake-errline ((((class color) (min-colors 89)) (:foreground "#FF6E64" :background "#990A1B" :weight bold :underline t))))
 '(flymake-infoline ((((class color) (min-colors 89)) (:foreground "#B4C342" :background "#546E00"))))
 '(flymake-warnline ((((class color) (min-colors 89)) (:foreground "#DEB542" :background "#7B6000" :weight bold :underline t))))
 '(flyspell-duplicate ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold :underline t))))
 '(flyspell-incorrect ((((class color) (min-colors 89)) (:foreground "#dc322f" :weight bold :underline t))))
 '(erc-action-face ((((class color) (min-colors 89)) (:inherit erc-default-face))))
 '(erc-bold-face ((((class color) (min-colors 89)) (:weight bold))))
 '(erc-current-nick-face ((((class color) (min-colors 89)) (:foreground "#268bd2" :weight bold))))
 '(erc-dangerous-host-face ((((class color) (min-colors 89)) (:inherit font-lock-warning))))
 '(erc-default-face ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(erc-direct-msg-face ((((class color) (min-colors 89)) (:inherit erc-default))))
 '(erc-error-face ((((class color) (min-colors 89)) (:inherit font-lock-warning))))
 '(erc-fool-face ((((class color) (min-colors 89)) (:inherit erc-default))))
 '(erc-highlight-face ((((class color) (min-colors 89)) (:inherit hover-highlight))))
 '(erc-input-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(erc-keyword-face ((((class color) (min-colors 89)) (:foreground "#268bd2" :weight bold))))
 '(erc-nick-default-face ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold))))
 '(erc-my-nick-face ((((class color) (min-colors 89)) (:foreground "#dc322f" :weigth bold))))
 '(erc-nick-msg-face ((((class color) (min-colors 89)) (:inherit erc-default))))
 '(erc-notice-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(erc-pal-face ((((class color) (min-colors 89)) (:foreground "#cb4b16" :weight bold))))
 '(erc-prompt-face ((((class color) (min-colors 89)) (:foreground "#cb4b16" :background "#002b36" :weight bold))))
 '(erc-timestamp-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(erc-underline-face ((t (:underline t))))
 '(gnus-group-mail-1 ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-mail-1-empty))))
 '(gnus-group-mail-1-empty ((((class color) (min-colors 89)) (:inherit gnus-group-news-1-empty))))
 '(gnus-group-mail-2 ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-mail-2-empty))))
 '(gnus-group-mail-2-empty ((((class color) (min-colors 89)) (:inherit gnus-group-news-2-empty))))
 '(gnus-group-mail-3 ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-mail-3-empty))))
 '(gnus-group-mail-3-empty ((((class color) (min-colors 89)) (:inherit gnus-group-news-3-empty))))
 '(gnus-group-mail-4-face ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-mail-4-empty))))
 '(gnus-group-mail-4-empty-face ((((class color) (min-colors 89)) (:inherit gnus-group-news-4-empty))))
 '(gnus-group-mail-5-face ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-mail-5-empty))))
 '(gnus-group-mail-5-empty-face ((((class color) (min-colors 89)) (:inherit gnus-group-news-5-empty))))
 '(gnus-group-mail-6-face ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-mail-6-empty))))
 '(gnus-group-mail-6-empty-face ((((class color) (min-colors 89)) (:inherit gnus-group-news-6-empty))))
 '(gnus-group-mail-low ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-mail-low-empty))))
 '(gnus-group-mail-low-empty ((((class color) (min-colors 89)) (:inherit gnus-group-news-low-empty))))
 '(gnus-group-news-1 ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-news-1-empty))))
 '(gnus-group-news-2 ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-news-2-empty))))
 '(gnus-group-news-3 ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-news-3-empty))))
 '(gnus-group-news-4 ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-news-4-empty))))
 '(gnus-group-news-5 ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-news-5-empty))))
 '(gnus-group-news-6 ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-news-6-empty))))
 '(gnus-group-news-low ((((class color) (min-colors 89)) (:bold t :inherit gnus-group-news-low-empty))))
 '(gnus-header-content-face ((((class color) (min-colors 89)) (:inherit message-header-other))))
 '(gnus-header-from-face ((((class color) (min-colors 89)) (:inherit message-header-from))))
 '(gnus-header-name-face ((((class color) (min-colors 89)) (:inherit message-header-name))))
 '(gnus-header-newsgroups-face ((((class color) (min-colors 89)) (:inherit message-header-other))))
 '(gnus-header-subject-face ((((class color) (min-colors 89)) (:inherit message-header-subject))))
 '(gnus-summary-cancelled ((((class color) (min-colors 89)) (:foreground "#cb4b16"))))
 '(gnus-summary-high-ancient ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(gnus-summary-high-read ((((class color) (min-colors 89)) (:foreground "#859900" :weight bold))))
 '(gnus-summary-high-ticked ((((class color) (min-colors 89)) (:foreground "#cb4b16" :weight bold))))
 '(gnus-summary-high-unread ((((class color) (min-colors 89)) (:foreground "#839496" :weight bold))))
 '(gnus-summary-low-ancient ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(gnus-summary-low-read ((t (:foreground "#859900"))))
 '(gnus-summary-low-ticked ((((class color) (min-colors 89)) (:foreground "#cb4b16" :weight bold))))
 '(gnus-summary-low-unread ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(gnus-summary-normal-ancient ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(gnus-summary-normal-read ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(gnus-summary-normal-ticked ((((class color) (min-colors 89)) (:foreground "#cb4b16" :weight bold))))
 '(gnus-summary-normal-unread ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(gnus-summary-selected ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold))))
 '(gnus-cite-1-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(gnus-cite-10-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(gnus-cite-11-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(gnus-cite-2-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(gnus-cite-3-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(gnus-cite-4-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(gnus-cite-5-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(gnus-cite-6-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(gnus-cite-7-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(gnus-cite-8-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(gnus-cite-9-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(gnus-group-news-1-empty ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(gnus-group-news-2-empty ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(gnus-group-news-3-empty ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(gnus-group-news-4-empty ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(gnus-group-news-5-empty ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(gnus-group-news-6-empty ((((class color) (min-colors 89)) (:foreground "#002b36"))))
 '(gnus-group-news-low-empty ((((class color) (min-colors 89)) (:foreground "#002b36"))))
 '(gnus-signature-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(gnus-x-face ((((class color) (min-colors 89)) (:background "#839496" :foreground "#002b36"))))
 '(hi-yellow ((((class color) (min-colors 89)) (:foreground "#7B6000" :background "#DEB542"))))
 '(hi-pink ((((class color) (min-colors 89)) (:foreground "#93115C" :background "#F771AC"))))
 '(hi-green ((((class color) (min-colors 89)) (:foreground "#546E00" :background "#B4C342"))))
 '(hi-blue ((((class color) (min-colors 89)) (:foreground "#00629D" :background "#69B7F0"))))
 '(hi-black-b ((((class color) (min-colors 89)) (:foreground "#93a1a1" :background "#002b36" :weight bold))))
 '(hi-blue-b ((((class color) (min-colors 89)) (:foreground "#00629D" :weight bold))))
 '(hi-green-b ((((class color) (min-colors 89)) (:foreground "#546E00" :weight bold))))
 '(hi-red-b ((((class color) (min-colors 89)) (:foreground "#dc322f" :weight bold))))
 '(hi-black-hb ((((class color) (min-colors 89)) (:foreground "#93a1a1" :background "#002b36" :weight bold))))
 '(hl-line-face ((t (:background "#002b36"))))
 '(ido-first-match ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold))))
 '(ido-only-match ((((class color) (min-colors 89)) (:foreground "#cb4b16" :weight bold))))
 '(ido-subdir ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(linum ((((class color) (min-colors 89)) (:foreground "#839496" :background "#002b36"))))
 '(magit-section-title ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold))))
 '(magit-branch ((((class color) (min-colors 89)) (:foreground "#cb4b16" :weight bold))))
 '(message-cited-text-face ((((class color) (min-colors 89)) (:inherit font-lock-comment))))
 '(message-header-name-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(message-header-other-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(message-header-to-face ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold))))
 '(message-header-from-face ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold))))
 '(message-header-cc-face ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold))))
 '(message-header-newsgroups-face ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold))))
 '(message-header-subject-face ((((class color) (min-colors 89)) (:foreground "#cb4b16" :weight bold))))
 '(message-header-xheader-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(message-mml-face ((((class color) (min-colors 89)) (:foreground "#b58900" :weight bold))))
 '(message-separator-face ((((class color) (min-colors 89)) (:inherit font-lock-comment))))
 '(mew-face-header-subject ((((class color) (min-colors 89)) (:foreground "#cb4b16"))))
 '(mew-face-header-from ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(mew-face-header-date ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(mew-face-header-to ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(mew-face-header-key ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(mew-face-header-private ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(mew-face-header-important ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(mew-face-header-marginal ((((class color) (min-colors 89)) (:foreground "#839496" :weight bold))))
 '(mew-face-header-warning ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(mew-face-header-xmew ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(mew-face-header-xmew-bad ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(mew-face-body-url ((((class color) (min-colors 89)) (:foreground "#cb4b16"))))
 '(mew-face-body-comment ((((class color) (min-colors 89)) (:foreground "#839496" :slant italic))))
 '(mew-face-body-cite1 ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(mew-face-body-cite2 ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(mew-face-body-cite3 ((((class color) (min-colors 89)) (:foreground "#cb4b16"))))
 '(mew-face-body-cite4 ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(mew-face-body-cite5 ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(mew-face-mark-review ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(mew-face-mark-escape ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(mew-face-mark-delete ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(mew-face-mark-unlink ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(mew-face-mark-refile ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(mew-face-mark-unread ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(mew-face-eof-message ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(mew-face-eof-part ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(nav-face-heading ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(nav-face-button-num ((((class color) (min-colors 89)) (:foreground "#2aa198"))))
 '(nav-face-dir ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(nav-face-hdir ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(nav-face-file ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(nav-face-hfile ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(org-agenda-structure ((((class color) (min-colors 89)) (:inherit font-lock-comment-face :foreground "#d33682" :inverse-video t))))
 '(org-agenda-date ((((class color) (min-colors 89)) (:foreground "#839496" :background "#073642" :weight bold :box (:line-width 4 :color "#073642")))))
 '(org-agenda-date-weekend ((((class color) (min-colors 89)) (:inherit org-agenda-date :slant italic))))
 '(org-agenda-date-today ((((class color) (min-colors 89)) (:inherit org-agenda-date :slant italic underline: t))))
 '(org-agenda-done ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(org-archived ((((class color) (min-colors 89)) (:foreground "#586e75" :weight normal))))
 '(org-block ((((class color) (min-colors 89)) (:foreground "#586e75"))))
 '(org-block-begin-line ((t (:foreground "#586e75" :slant italic))))
 '(org-checkbox ((((class color) (min-colors 89)) (:background "#002b36" :foreground "#839496" :box (:line-width 1 :style released-button)))))
 '(org-code ((((class color) (min-colors 89)) (:foreground "#586e75"))))
 '(org-date ((((class color) (min-colors 89)) (:foreground "#268bd2" :underline t))))
 '(org-done ((((class color) (min-colors 89)) (:bold t :weight bold :foreground "#859900"))))
 '(org-ellipsis ((((class color) (min-colors 89)) (:foreground "#586e75"))))
 '(org-formula ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(org-headline-done ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(org-hide ((((class color) (min-colors 89)) (:foreground "#002b36"))))
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
 '(org-habit-clear-face ((((class color) (min-colors 89)) (:background "#00629D" :foreground "#69B7F0"))))
 '(org-habit-clear-future-face ((((class color) (min-colors 89)) (:background "#00629D"))))
 '(org-habit-ready-face ((((class color) (min-colors 89)) (:background "#546E00" :foreground "#859900"))))
 '(org-habit-ready-future-face ((((class color) (min-colors 89)) (:background "#546E00"))))
 '(org-habit-alert-face ((((class color) (min-colors 89)) (:background "#b58900" :foreground "#7B6000"))))
 '(org-habit-alert-future-face ((((class color) (min-colors 89)) (:background "#7B6000"))))
 '(org-habit-overdue-face ((((class color) (min-colors 89)) (:background "#dc322f" :foreground "#990A1B"))))
 '(org-habit-overdue-future-face ((((class color) (min-colors 89)) (:background "#990A1B"))))
 '(outline-8 ((((class color) (min-colors 89)) (:inherit default))))
 '(outline-7 ((((class color) (min-colors 89)) (:inherit outline-8 :height 1.0))))
 '(outline-6 ((((class color) (min-colors 89)) (:inherit outline-7 :height 1.0))))
 '(outline-5 ((((class color) (min-colors 89)) (:inherit outline-6 :height 1.0))))
 '(outline-4 ((((class color) (min-colors 89)) (:inherit outline-5 :height 1.0))))
 '(outline-3 ((((class color) (min-colors 89)) (:inherit outline-4 :height 1.0))))
 '(outline-2 ((((class color) (min-colors 89)) (:inherit outline-3 :height 1.0))))
 '(outline-1 ((((class color) (min-colors 89)) (:inherit outline-2 :height 1.0))))
 '(rainbow-delimiters-depth-1-face ((((class color) (min-colors 89)) (:foreground "#2aa198"))))
 '(rainbow-delimiters-depth-2-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(rainbow-delimiters-depth-3-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(rainbow-delimiters-depth-4-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(rainbow-delimiters-depth-5-face ((((class color) (min-colors 89)) (:foreground "#cb4b16"))))
 '(rainbow-delimiters-depth-6-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(rainbow-delimiters-depth-7-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(rainbow-delimiters-depth-8-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(rainbow-delimiters-depth-9-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(rainbow-delimiters-depth-10-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(rainbow-delimiters-depth-11-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(rainbow-delimiters-depth-12-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(rainbow-delimiters-unmatched-face ((((class color) (min-colors 89)) (:foreground "#839496" :background "#002b36" :inverse-video t))))
 '(rpm-spec-dir-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(rpm-spec-doc-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(rpm-spec-ghost-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(rpm-spec-macro-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(rpm-spec-obsolete-tag-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(rpm-spec-package-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(rpm-spec-section-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(rpm-spec-tag-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(rpm-spec-var-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(sh-quoted-exec ((((class color) (min-colors 89)) (:foreground "#6c71c4" :weigth bold :bold t))))
 '(sh-escaped-newline ((((class color) (min-colors 89)) (:foreground "#b58900" :weigth bold :bold t))))
 '(sh-heredoc ((((class color) (min-colors 89)) (:foreground "#b58900" :weigth bold :bold t))))
 '(show-paren-match ((((class color) (min-colors 89)) (:foreground "#2aa198" :background "#002b36" :weight normal :inverse-video t))))
 '(show-paren-mismatch ((((class color) (min-colors 89)) (:foreground "#dc322f" :background "#002b36" :weight normal :inverse-video t))))
 '(slime-repl-inputed-output-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(undo-tree-visualizer-default-face ((((class color) (min-colors 89)) (:foreground "#586e75" :background "#002b36"))))
 '(undo-tree-visualizer-current-face ((((class color) (min-colors 89)) (:foreground "#2aa198" :inverse-video t))))
 '(undo-tree-visualizer-active-branch-face ((((class color) (min-colors 89)) (:foreground "#93a1a1" :background "#002b36" :weigth bold))))
 '(undo-tree-visualizer-register-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(table-cell ((((class color) (min-colors 89)) (:foreground "#839496" :background "#073642"))))
 '(vhl/default-face ((((class color) (min-colors 89)) (:background "#546E00" :foreground "#B4C342"))))
 '(whitespace-space ((((class color) (min-colors 89)) (:background "#002b36" :foreground "#7B6000" :inverse-video t))))
 '(whitespace-hspace ((((class color) (min-colors 89)) (:background "#002b36" :foreground "#990A1B" :inverse-video t))))
 '(whitespace-tab ((((class color) (min-colors 89)) (:background "#002b36" :foreground "#8B2C02" :inverse-video t))))
 '(whitespace-newline ((((class color) (min-colors 89)) (:foreground "#586e75"))))
 '(whitespace-trailing ((((class color) (min-colors 89)) (:foreground "#00629D" :background "#002b36" :inverse-video t))))
 '(whitespace-line ((((class color) (min-colors 89)) (:background "#002b36" :foreground "#d33682" :inverse-video nil))))
 '(whitespace-space-before-tab ((((class color) (min-colors 89)) (:background "#002b36" :foreground "#546E00" :inverse-video t))))
 '(whitespace-indentation ((((class color) (min-colors 89)) (:background "#002b36" :foreground "#93115C" :inverse-video t))))
 '(whitespace-empty ((((class color) (min-colors 89)) (:background "#839496" :foreground "#990A1B" :inverse-video t))))
 '(whitespace-space-after-tab ((((class color) (min-colors 89)) (:background "#002b36" :foreground "#3F4D91" :inverse-video t))))
 '(wl-highlight-folder-few-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(wl-highlight-folder-many-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(wl-highlight-folder-path-face ((((class color) (min-colors 89)) (:foreground "#cb4b16"))))
 '(wl-highlight-folder-unread-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(wl-highlight-folder-zero-face ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(wl-highlight-folder-unknown-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(wl-highlight-message-citation-header ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(wl-highlight-message-cited-text-1 ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(wl-highlight-message-cited-text-2 ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(wl-highlight-message-cited-text-3 ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(wl-highlight-message-cited-text-4 ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(wl-highlight-message-header-contents-face ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(wl-highlight-message-headers-face ((((class color) (min-colors 89)) (:foreground "#dc322f"))))
 '(wl-highlight-message-important-header-contents ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(wl-highlight-message-header-contents ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(wl-highlight-message-important-header-contents2 ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(wl-highlight-message-signature ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(wl-highlight-message-unimportant-header-contents ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(wl-highlight-summary-answered-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(wl-highlight-summary-disposed-face ((((class color) (min-colors 89)) (:foreground "#839496" :slant italic))))
 '(wl-highlight-summary-new-face ((((class color) (min-colors 89)) (:foreground "#268bd2"))))
 '(wl-highlight-summary-normal-face ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(wl-highlight-summary-thread-top-face ((((class color) (min-colors 89)) (:foreground "#b58900"))))
 '(wl-highlight-thread-indent-face ((((class color) (min-colors 89)) (:foreground "#d33682"))))
 '(wl-highlight-summary-refiled-face ((((class color) (min-colors 89)) (:foreground "#839496"))))
 '(wl-highlight-summary-displaying-face ((((class color) (min-colors 89)) (:underline t :weight bold))))
 '(which-func ((((class color) (min-colors 89)) (:foreground "#859900"))))
 '(yascroll:thumb-text-area ((((class color) (min-colors 89)) (:foreground "#586e75" :background "#586e75"))))
 '(yascroll:thumb-fringe ((((class color) (min-colors 89)) (:foreground "#586e75" :background "#586e75"))))
 '(idle-highlight ((t (:inherit region :foreground "black"))))
 '(yas/field-highlight-face ((t (:background "#073642" :foreground "#DADADA"))))
 '(org-block-background ((t nil)))
 '(org-block-end-line ((t (:inherit (org-meta-line)))))
 '(default ((t (:background "#211E1E" :foreground "#DADADA"))))
 '(comint-highlight-prompt ((t (:inherit minibuffer-prompt)))))

(provide-theme 'toby)
