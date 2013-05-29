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
        (:name find-file-in-repository :type elpa)
        (:name flymake-coffee :type elpa)
        (:name flymake-jshint :type elpa)
        (:name git-gutter :type elpa)
        (:name haskell-mode :type elpa)
        (:name idle-highlight :type elpa)
        (:name inflections :type elpa)
        (:name magit :type elpa)
        (:name peepopen :type elpa)
        (:name rbenv :type elpa)
        (:name ruby-block :type elpa)
        (:name ruby-end :type elpa)
        (:name solarized-theme :type elpa)
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
    coffee-mode
    column-marker
    diminish
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
    multi-term
    nrepl
    org
    paredit
    parenface
    peepopen
    rainbow-delimiters
    rbenv
    rhtml-mode
    rspec-mode
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

(defun toby/require-package (package-name)
  "Ensure that the given ELPA package has been installed."
  (unless (package-installed-p package-name)
    (package-install package-name)))

(el-get 'sync my-packages)

(provide 'packages)
