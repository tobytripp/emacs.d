(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
    autopair
    browse-kill-ring
    coffee-mode
    el-autoyas
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
    js-comint
    magit
    markdown-mode
    paredit
    parenface
    peepopen
    ruby-block
    ruby-end
    rvm
    smex
    solarized-theme
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
    zencoding-mode
    )
  "The list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'package-list)
