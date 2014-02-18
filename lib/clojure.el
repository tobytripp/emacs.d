(add-hook 'cider-interaction-mode-hook
          'cider-turn-on-eldoc-mode)

(toby/defhook cider-mode-hook
  (paredit-mode)
  (define-key cider-mode-map (kbd "C-c C-e") 'cider-eval-print-last-sexp)
  )
