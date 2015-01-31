(autoload 'pianobar "pianobar" "Thin wrapper around the pianobar utitlity")
(global-set-key [f8] 'pianobar)

(add-hook 'pianobar-mode-hook
          (lambda ()
            (global-set-key [f7] 'pianobar-love-current-song)
            (global-set-key [f8] 'pianobar-play-or-pause)
            (global-set-key [f9] 'pianobar-next-song)
            ))

(provide 'pianobar-init)
