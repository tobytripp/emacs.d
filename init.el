(package-initialize)
(require 'org-install)
(require 'ob-tangle)

(load-theme 'toby)
(setq debug-on-error       t)

(org-babel-load-file
 (expand-file-name "index.org"
		   (concat user-emacs-directory "org-init")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("ee2aa6bcaabf4b9f7446dc56bc6ce1f1292885cfaf578de00e309b520a45cdaa" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
