(package-initialize)
(require 'org-install)
(require 'ob-tangle)

(load-theme 'toby)

(org-babel-load-file
 (expand-file-name "index.org"
		   (concat user-emacs-directory "org-init")))
