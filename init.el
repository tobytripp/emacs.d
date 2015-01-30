(package-initialize)
(require 'org-install)
(require 'ob-tangle)

(org-babel-load-file (expand-file-name "main.org" user-emacs-directory))

(load-theme 'toby)
