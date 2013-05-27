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
    find-file-in-repository
    flymake-coffee
    flymake-jshint
    flymake-ruby
    full-ack
    git-gutter
    haskell-mode
    highlight-indentation
    idle-highlight
    inf-ruby
    jira
    json
    js-comint
    magit
    markdown-mode
    mmm-mode
    multi-term
    nrepl
    org
    paredit
    parenface
    peepopen
    rainbow-delimiters
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

(defun toby/assert-installed-packages ()
  "Run through the packages listed in .emacs.d and make sure they're all installed."
  (interactive)
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(toby/assert-installed-packages)
(provide 'package-list)
