(require 'yasnippet)
(setq yas/trigger-key (kbd "C-c ."))

(yas/initialize)
(yas/load-directory (concat dotfiles-dir "/vendor/yasnippet-0.6.1c/snippets"))
(yas/load-directory (concat dotfiles-dir "/my-snippets"))
(yas/load-directory (concat dotfiles-dir "/vendor/cucumber/snippets"))
