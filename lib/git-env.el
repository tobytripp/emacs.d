(setenv  "PATH" (concat (getenv "PATH") ":" "/usr/local/bin" ":" "/usr/local/git/bin/"))
(setq exec-path (append exec-path '("/usr/local/bin")))
(setq exec-path (append exec-path '("/usr/local/git/bin")))

(magit-wip-mode 1)
(global-magit-wip-save-mode 1)

;; https://github.com/nonsequitur/git-gutter-plus
(require 'git-gutter+)
(global-git-gutter+-mode t)

(global-set-key (kbd "C-x n") 'git-gutter+-next-hunk)
(global-set-key (kbd "C-x p") 'git-gutter+-previous-hunk)
