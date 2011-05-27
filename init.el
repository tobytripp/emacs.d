(setq debug-on-error t)
(setq debug-ignored-errors nil)

(if (fboundp 'tool-bar-mode)   (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

(setq vendor-dir (concat dotfiles-dir "/vendor"))
(add-to-list 'load-path vendor-dir)

(setq lib-dir (concat dotfiles-dir "/lib"))
(add-to-list 'load-path lib-dir)

(require 'package)
(setq package-user-dir  (concat dotfiles-dir "elpa"))
(setq package-archives ())
(dolist (source '(("technomancy" . "http://repo.technomancy.us/emacs/")
                  ("elpa" . "http://tromey.com/elpa/")))
  (add-to-list 'package-archives source t))
(package-initialize)

(setq autoload-file (concat dotfiles-dir "loaddefs.el"))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(load "env.el")
(require 'my-packages)
(require 'ansi-color)
(require 'recentf)
(require 'uniquify)

(mapc #'load (directory-files lib-dir nil ".*el$"))

(require 'keybindings)

(global-hl-line-mode 1)
(put 'downcase-region 'disabled nil)
