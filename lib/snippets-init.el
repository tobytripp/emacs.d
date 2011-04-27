(require 'yasnippet)
(setq yas/trigger-key (kbd "C-c ."))

(yas/initialize)
(yas/load-directory (concat dotfiles-dir "/my-snippets"))
(yas/load-directory (concat el-get-dir   "/yasnippet/snippets"))
(yas/load-directory (concat el-get-dir   "/feature-mode/snippets"))

