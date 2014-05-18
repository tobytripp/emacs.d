(require 'yasnippet nil 'noerror)

(if (require 'company nil 'noerror)
    (progn
      (add-hook 'after-init-hook 'global-company-mode)
      (setq company-begin-commands '(self-insert-command)) 
      ))
