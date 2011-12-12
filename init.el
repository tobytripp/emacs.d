(setq debug-on-error t)
(setq debug-ignored-errors nil)

(if (fboundp 'tool-bar-mode)   (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

;; For Peepopen, really
(setq vendor-dir (concat dotfiles-dir "/vendor"))
(add-to-list 'load-path vendor-dir)

(setq lib-dir (concat dotfiles-dir "/lib"))
(add-to-list 'load-path lib-dir)

(setq autoload-file (concat dotfiles-dir "loaddefs.el"))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(load "env.el")
(load "package.el")

(require 'my-packages)
(require 'ansi-color)
(require 'recentf)
(require 'uniquify)

(require 'package)
(setq package-archives
      (cons '("tromey" . "http://tromey.com/elpa/") package-archives))
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(mapc #'load (directory-files lib-dir nil ".*el$"))

(require 'keybindings)

(global-hl-line-mode 1)
(put 'downcase-region 'disabled nil)
