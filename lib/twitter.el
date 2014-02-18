(autoload 'twittering-mode "twittering-mode")
(toby/defhook twittering-mode-hook
  (set-window-dedicated-p (selected-window) 1))
