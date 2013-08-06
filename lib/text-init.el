(setq abbrev-file-name "~/.emacs.d/abbrev_defs")

(if (file-exists-p abbrev-file-name)
    (quietly-read-abbrev-file))

(browse-kill-ring-default-keybindings)

(require 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)
