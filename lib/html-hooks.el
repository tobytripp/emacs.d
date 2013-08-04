(autoload 'zencoding-mode "zencoding-mode")
(add-hook 'sgml-mode-hook 'zencoding-mode)
(add-hook 'zencoding-mode-hook
          '(lambda ()
             (define-key sgml-mode-map    (kbd "C-j") 'zencoding-expand-line)
             ))

(add-to-list 'auto-mode-alist '("\.scss$" . sass-mode))
