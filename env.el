(setq exec-path (append '("/usr/local/opt/rbenv/shims") exec-path))
(setq exec-path (append '("/usr/local/bin") exec-path))
(setq exec-path (append exec-path '("/usr/local/git/bin")))
(setq exec-path (append exec-path (expand-file-name "~/.cabal/bin")))

(add-to-list 'exec-path (concat dotfiles-dir "bin"))

(if (not (getenv "TERM_PROGRAM"))
    (setenv "PATH"
            (shell-command-to-string "source $HOME/.zshrc && printf $PATH")))
