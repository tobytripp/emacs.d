(if (fboundp 'tool-bar-mode)   (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq make-backup-files nil)
(setq auto-save-default nil)

;; Initial window layout
(setq default-frame-alist
      '((top . 0) (left . 750)
        (width . 80) (height . 53)
        ))
(setq initial-frame-alist
      '((width . 80) (height . 53)
        (top . 0) (left . 750)
        ))

(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

(setq vendor-dir (concat dotfiles-dir "vendor/"))
(add-to-list 'load-path vendor-dir)

(setq lib-dir (concat dotfiles-dir "lib/"))
(add-to-list 'load-path lib-dir)

(setq autoload-file (concat dotfiles-dir "loaddefs.el"))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(load "env.el")

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(require 'packages)
(require 'ansi-color)
(require 'recentf)
(require 'uniquify)
(require 'switch-window)

(global-hl-line-mode 1)
(delete-selection-mode t)

(mapc (lambda (path)
        (add-to-list 'load-path (concat vendor-dir "/" path)))
      (directory-files vendor-dir nil "^[a-z]"))

(mapc #'load
      (mapcar 'file-name-sans-extension
              (directory-files lib-dir nil ".*el$")))

(message "Lib files loaded!")

(require 'keybindings)
(require 'toby-mode)
(global-toby-mode)


(put 'ido-exit-minibuffer 'disabled nil)
(put 'upcase-region       'disabled nil)
(put 'narrow-to-region    'disabled nil)
(put 'scroll-left         'disabled nil)

(setq inhibit-splash-screen t)

(require 'bookmark)
(bookmark-bmenu-list)
(switch-to-buffer "*Bookmark List*")

;; (add-to-list 'load-path "/Users/ttripp/.rvm/rubies/ruby-1.9.2-p180/share/emacs/site-lisp")
;;(require 'el4r)
;;(el4r-boot)

(setq debug-on-error       nil)
(setq debug-ignored-errors nil)
(put 'set-goal-column 'disabled nil)
(put 'downcase-region 'disabled nil)
