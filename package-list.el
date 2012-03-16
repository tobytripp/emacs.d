(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
    autopair
    browse-kill-ring
    coffee-mode
    color-theme
    feature-mode
    flymake-coffee
    flymake-jshint
    flymake-ruby
    full-ack
    haskell-mode
    idle-highlight
    inf-ruby
    jira
    json
    magit
    markdown-mode
    paredit
    parenface
    peepopen
    ruby-block
    ruby-end
    smex
    starter-kit-eshell
    starter-kit-js
    starter-kit-lisp
    starter-kit-ruby
    switch-window
    textmate
    textmate-to-yas
    yaml-mode
    yas-jit
    yasnippet
    )
  "The list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'package-list)
