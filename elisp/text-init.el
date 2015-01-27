(setq abbrev-file-name "~/.emacs.d/abbrev_defs")

(if (file-exists-p abbrev-file-name)
    (quietly-read-abbrev-file))

(browse-kill-ring-default-keybindings)


(if (require 'keyfreq nil 'noerror)
    (progn
      (keyfreq-mode 1)
      (keyfreq-autosave-mode 1)
      ))

(if (require 'real-auto-save nil 'noerror)
    (add-hook 'text-mode-hook 'turn-on-real-auto-save))
