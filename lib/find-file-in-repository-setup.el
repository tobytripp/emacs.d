(global-set-key (kbd "C-x f") 'find-file-in-repository)

(recentf-mode 1)
(global-unset-key (kbd "<f4>"))
(global-set-key (kbd "<f4>") 'recentf-open-files)
