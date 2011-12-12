(add-hook 'server-switch-hook
          (lambda ()
            (when (current-local-map)
              (use-local-map (copy-keymap (current-local-map))))
            (when server-buffer-clients
              (local-set-key (kbd "C-x k") 'server-edit))))
(add-hook 'after-init-hook 'server-start)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
