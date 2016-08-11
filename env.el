(setenv "PATH"
	(concat
	 "/usr/local/bin" ":"
   "/usr/local/opt/rbenv/shims" ":"
	 (getenv "PATH") ":"
	 "/usr/local/git/bin/" ":"
	 (expand-file-name "~/.cabal/bin")))

(setq exec-path (append '("/usr/local/bin") exec-path))
(setq exec-path (append exec-path '("/usr/local/git/bin")))
(setq exec-path (append exec-path (expand-file-name "~/.cabal/bin")))

(add-to-list 'exec-path (concat dotfiles-dir "bin"))
