(add-hook 'scheme-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c e") 'scheme-send-region)
            (local-set-key (kbd "C-c s") 'scheme-send-last-sexp)
            ))
