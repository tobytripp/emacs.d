(setenv  "PATH" (concat (getenv "PATH") ":"
   "/usr/local/bin" ":"
   "/usr/local/git/bin/" ":"
   (expand-file-name "~/.cabal/bin")))

(setq exec-path (append exec-path '("/usr/local/bin")))
(setq exec-path (append exec-path '("/usr/local/git/bin")))
(setq exec-path (append exec-path '((expand-file-name "~/.cabal/bin"))))

(add-to-list 'exec-path (concat dotfiles-dir "bin"))
