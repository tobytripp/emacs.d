(projectile-global-mode)
(global-set-key (kbd "C-x f") 'projectile-find-file)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

(recentf-mode 1)
(global-unset-key (kbd "<f4>"))
(global-set-key (kbd "<f4>") 'recentf-open-files)

(provide 'find-file)
