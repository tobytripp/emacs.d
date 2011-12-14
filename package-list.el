(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
    autopair
    browse-kill-ring
    coffee-mode
    color-theme
    full-ack
    haskell-mode
    inf-ruby
    json
    js2-mode
    magit
    paredit
    parenface
    peepopen
    smex
    starter-kit-eshell
    starter-kit-ruby
    starter-kit-js
    starter-kit-lisp
    textmate
    textmate-to-yas
    yaml-mode
    yasnippet
    yas-jit
    )
  "The list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'package-list)
