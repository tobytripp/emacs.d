(add-hook 'twittering-mode-hook
          (lambda ()
            (interactive)
            (set-window-dedicated-p (selected-window) 1)))
