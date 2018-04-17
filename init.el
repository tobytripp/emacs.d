;; (package-initialize)

(defvar dotfiles-dir user-emacs-directory)
(defvar lib-dir (concat dotfiles-dir "elisp/"))
(add-to-list 'load-path lib-dir)
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")

(require 'init-packages)

(unless package-archive-contents    ;; Refresh the packages descriptions
  (package-refresh-contents))

(do-install-package 'org-plus-contrib (version-to-list "9.1.9"))
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

;; (setq debug-on-error t)
;; (setq debug-on-error nil)
;; (load-file "aggregate-init.el")

(put 'dired-find-alternate-file 'disabled nil)
