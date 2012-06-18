(load "nxhtml/autostart.el")

(setq
 nxhtml-global-minor-mode t
 mumamo-chunk-coloring 'submode-colored
 rng-nxml-auto-validate-flag nil
 indent-region-mode t
 nxml-degraded t
 )

(autoload 'zencoding-mode "zencoding-mode")
(add-hook 'sgml-mode-hook 'zencoding-mode)
(add-hook 'zencoding-mode-hook
          '(lambda ()
             (define-key sgml-mode-map    (kbd "C-j") 'zencoding-expand-line)
             (define-key nxhtml-mode-map  (kbd "C-j") 'zencoding-expand-yas)
             ))
