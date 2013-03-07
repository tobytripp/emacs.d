(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages
  '(
    ace-jump-mode
    autopair
    browse-kill-ring
    coffee-mode
    column-marker
    el-autoyas
    ess
    expand-region
    feature-mode
    fill-column-indicator
    flymake-coffee
    flymake-jshint
    flymake-ruby
    full-ack
    haskell-mode
    highlight-indentation
    idle-highlight
    inf-ruby
    jira
    json
    js-comint
    magit
    markdown-mode
    org
    paredit
    parenface
    peepopen
    rbenv
    rspec-mode
    ruby-block
    ruby-end
    ruby-mode
    smex
    solarized-theme
    starter-kit-eshell
    starter-kit-js
    starter-kit-lisp
    starter-kit-ruby
    switch-window
    textmate
    textmate-to-yas
    vline
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
