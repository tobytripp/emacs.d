(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(when (not package-archive-contents)
  (package-refresh-contents))

;; A number of these have el-get recipes, but they appear to be broken
(setq el-get-sources
      '(
        (:name browse-kill-ring :type elpa)
        (:name centered-cursor-mode :type elpa)
        (:name company :type elpa)
        (:name find-file-in-repository :type elpa)
        (:name flymake-coffee :type elpa)
        (:name flymake-jshint :type elpa)
        (:name git-gutter :type elpa)
        (:name git-gutter+ :type elpa)
        (:name haskell-mode :type elpa)
        (:name idle-highlight :type elpa)
        (:name inflections :type elpa)
        (:name keyfreq :type elpa)
        (:name magit :type elpa)
        (:name org :type elpa)
        (:name org-reveal :type github
               :pkgname "yjwen/org-reveal")
        (:name peepopen :type elpa)
        (:name rbenv :type elpa)
        (:name rhtml-mode :type github
               :pkgname "eschulte/rhtml")
        (:name robe :type elpa)
        (:name ruby-block :type elpa)
        (:name ruby-end :type elpa)
        (:name solarized-theme :type elpa)
        (:name smart-mode-line :type github
               :pkgname "Bruce-Connor/smart-mode-line")
        (:name starter-kit-eshell :type elpa)
        (:name starter-kit-js :type elpa)
        (:name starter-kit-lisp :type elpa)
        (:name starter-kit-ruby :type elpa)
        ))

(defvar my-packages
  '(
    ace-jump-mode
    autopair
    browse-kill-ring
    centered-cursor-mode
    coffee-mode
    column-marker
    company
    dired+
    el-autoyas
    epresent
    expand-region
    feature-mode
    fill-column-indicator
    find-file-in-repository
    flymake-coffee
    flymake-jshint
    flymake-ruby
    full-ack
    git-gutter+
    haskell-mode
    highlight-indentation
    idle-highlight
    inf-ruby
    jira
    json
    js-comint
    keyfreq
    magit
    markdown-mode
    multi-term
;;    nrepl
    org
    org-reveal
    paredit
    parenface
    peepopen
    rainbow-delimiters
    rbenv
    rhtml-mode
    robe
    rspec-mode
    ruby-end
    ruby-mode
    smart-mode-line
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

(el-get 'sync my-packages)

(provide 'packages)
