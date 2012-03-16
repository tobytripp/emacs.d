(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(add-to-list 'ac-sources 'ac-source-yasnippet)
(ac-config-default)

(global-auto-complete-mode t)
(setq ac-auto-start 2)
(setq ac-ignore-case nil)
