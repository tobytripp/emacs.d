(package-initialize)
(require 'org-install)
(require 'ob-tangle)

(setq debug-on-error       t)

(org-babel-load-file
 (expand-file-name "index.org"
		   (concat user-emacs-directory "org-init")))
