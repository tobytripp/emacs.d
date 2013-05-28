(require 'abbrev)
(setq abbrev-file-name "~/.emacs.d/abbrev_defs")
(add-hook 'text-mode-hook (lambda () (abbrev-mode 1)))

(if (file-exists-p abbrev-file-name)
    (quietly-read-abbrev-file))

(browse-kill-ring-default-keybindings)
