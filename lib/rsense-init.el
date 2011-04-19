(setq rsense-home (concat el-get-dir "rsense"))
(add-to-list 'load-path (concat rsense-home "/etc"))

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/vendor/ac-dict")
(ac-config-default)

(add-hook 'ruby-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c .") 'ac-complete-rsense)
            (add-to-list 'ac-sources 'ac-source-rsense-method)
            (add-to-list 'ac-sources 'ac-source-rsense-constant)
            (add-to-list 'ac-sources 'ac-source-yasnippet)
            )
          )

(provide 'rsense-init)
