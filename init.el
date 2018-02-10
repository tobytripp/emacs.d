;; (package-initialize)

(defvar dotfiles-dir user-emacs-directory)
(defvar lib-dir (concat dotfiles-dir "elisp/"))
(add-to-list 'load-path lib-dir)
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
;; (setq debug-on-error t)

(require 'init-packages)

(unless package-archive-contents    ;; Refresh the packages descriptions
  (package-refresh-contents))

(unless (package-installed-p 'org-plus-contrib)  ;; Make sure the Org package is
  (package-install 'org-plus-contrib))           ;; installed, install it if not

(require 'org-install)
(require 'ob-tangle)

;; (require 'bug-hunter)
;; (if (fboundp 'bug-hunter-init-file) (bug-hunter-init-file)
;;  (message "*** No bug-hunter here ***"))

;; My ongoing experiment to separate source from compilation.
;; (require 'org-init)

(org-babel-load-file
 (expand-file-name "index.org"
		   (concat user-emacs-directory "org-init")))

(setq debug-on-error t)
;; (load-file "aggregate-init.el")

(put 'dired-find-alternate-file 'disabled nil)
