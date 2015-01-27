(package-initialize)
(require 'org-install)
(require 'ob-tangle)

(org-babel-load-file (expand-file-name "toby.org" user-emacs-directory))
