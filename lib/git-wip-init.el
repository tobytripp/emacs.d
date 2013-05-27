(let ((git-wip-dir (concat vendor-dir "git-wip/")))
  (if (file-exists-p git-wip-dir)
      (progn
        (if (not (string-match git-wip-dir (getenv "PATH")))
            (setenv "PATH" (concat (getenv "PATH") ":" git-wip-dir)))

        (autoload 'git-wip-mode (concat git-wip-dir "emacs/git-wip-mode") "Git WIP mode")
        )))
