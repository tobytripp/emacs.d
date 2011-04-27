;; C-x r j <register>

(dolist (r `((?i (file . ,(concat dotfiles-dir "init.el")))
             (?b (file . ,(concat dotfiles-dir "keybindings.el")))
             (?r (file . ,(concat lib-dir "registers.el")))
             (?p (file . ,(concat dotfiles-dir "my-packages.el")))
             ))
  (set-register (car r) (cadr r)))
