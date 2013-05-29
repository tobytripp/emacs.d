(setenv  "PATH" (concat (getenv "PATH") ":" "/usr/local/bin" ":" "/usr/local/git/bin/"))
(setq exec-path (append exec-path '("/usr/local/bin")))
(setq exec-path (append exec-path '("/usr/local/git/bin")))

(magit-wip-mode 1)
(global-magit-wip-save-mode 1)
