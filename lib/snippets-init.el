(require 'yasnippet)

(yas-global-mode 1)
(yas/load-directory (concat dotfiles-dir "/snippets"))
(yas/load-directory (concat vendor-dir   "/snippets"))
(setq yas/trigger-key (kbd "C-c ."))
