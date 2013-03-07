(add-hook 'eshell-mode-hook
          (lambda ()
            (defalias 'ff 'find-file)
            ))
