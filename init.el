(if (fboundp 'tool-bar-mode)   (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq make-backup-files nil)
(setq auto-save-default nil)

(defvar dotfiles-dir (file-name-directory
		      (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path dotfiles-dir)

(defvar vendor-dir (concat dotfiles-dir "vendor/"))
(add-to-list 'load-path vendor-dir)

(defvar lib-dir (concat dotfiles-dir "lib/"))
(add-to-list 'load-path lib-dir)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

(load "env.el")

(require 'packages)

(require 'ansi-color)
(require 'recentf)
(require 'uniquify)

(global-hl-line-mode 1)
(delete-selection-mode t)

(mapc (lambda (path)
        (add-to-list 'load-path (concat vendor-dir "/" path)))
      (directory-files vendor-dir nil "^[a-z]"))

(require 'defuns) ; pre-load function definitions

(with-demoted-errors
  (mapc #'load
        (mapcar 'file-name-sans-extension
                (directory-files lib-dir nil ".*el$")))
  (message "Lib files loaded!"))


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

(setq debug-on-error       nil)
(setq debug-ignored-errors nil)
(put 'set-goal-column 'disabled nil)
(put 'downcase-region 'disabled nil)
