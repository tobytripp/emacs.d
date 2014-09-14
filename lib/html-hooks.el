(autoload 'emmet-mode "emmet-mode")
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'sass-mode-hook 'emmet-mode)

(add-to-list 'auto-mode-alist '("\.scss$" . sass-mode))
