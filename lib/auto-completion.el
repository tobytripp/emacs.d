(require 'yasnippet)

(add-hook 'after-init-hook 'global-company-mode)
(setq company-begin-commands '(self-insert-command))
