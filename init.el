(setq debug-on-error t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defvar dotfiles-dir user-emacs-directory)
(defvar lib-dir (concat dotfiles-dir "elisp/"))
(add-to-list 'load-path lib-dir)

(require 'init-packages)

(unless package-archive-contents    ;; Refresh the packages descriptions
  (package-refresh-contents))

(setq package-load-list '(all))     ;; List of packages to load

(unless (package-installed-p 'org)  ;; Make sure the Org package is
  (package-install 'org))           ;; installed, install it if not

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(require 'org-install)
(require 'ob-tangle)


(org-babel-load-file
 (expand-file-name "index.org"
		   (concat user-emacs-directory "org-init")))
(put 'dired-find-alternate-file 'disabled nil)
