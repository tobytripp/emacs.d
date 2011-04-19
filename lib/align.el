(add-hook 'align-load-hook
          (lambda ()
            (add-to-list 'align-rules-list
                         '(text-column-whitespace
                           (regexp  . "\\(^\\|\\S-\\)\\([ \t]+\\)")
                           (group   . 2)
                           (modes   . align-text-modes)
                           (repeat  . t)))))
