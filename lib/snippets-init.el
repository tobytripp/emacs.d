(require 'yasnippet)
(setq yas/trigger-key (kbd "C-c ."))

(yas/initialize)
(yas/load-directory (concat dotfiles-dir "/snippets"))

