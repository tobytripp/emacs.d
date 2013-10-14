(setq abbrev-file-name "~/.emacs.d/abbrev_defs")

(if (file-exists-p abbrev-file-name)
    (quietly-read-abbrev-file))

(browse-kill-ring-default-keybindings)

(require 'keyfreq)
(keyfreq-mode 1)
(keyfreq-autosave-mode 1)

(global-unset-key (kbd "<f3>"))
(global-set-key (kbd "<f3>") 'occur)

(require 'real-auto-save)
(add-hook 'text-mode-hook 'turn-on-real-auto-save)
