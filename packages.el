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
      '((:name company :type elpa)
        (:name git-gutter+ :type elpa)
        (:name keyfreq :type elpa)
        (:name peepopen :type elpa)
        (:name real-auto-save :type elpa)
        (:name starter-kit-eshell :type elpa)
        (:name starter-kit-js :type elpa)
        (:name starter-kit-lisp :type elpa)
        (:name starter-kit-ruby :type elpa)
        ))

(setq my-packages
  (append
   '(ace-jump-mode                           magit
     autopair                                markdown-mode
     browse-kill-ring                        mmm-mode
     centered-cursor-mode                    multi-term
     cider                                   org
     coffee-mode                             org-reveal
     column-marker                           outline-magic
     company                                 paredit
     dired+                                  parenface
     el-autoyas                              rainbow-delimiters
     epresent                                rbenv
     expand-region                           rhtml-mode
                                             rspec-mode
     fill-column-indicator                   ruby-end
                                             ruby-mode
                                             smart-mode-line
     full-ack                                smex
     git-gutter+                             solarized-theme
     haskell-mode                            switch-window
     highlight-indentation                   textmate
     idle-highlight-mode                     textmate-to-yas
     inf-ruby                                twittering-mode
     jira                                    vline
     json                                    yaml-mode
     js-comint                               yas-jit
                                             yasnippet
     )
   (mapcar 'el-get-as-symbol (mapcar 'el-get-source-name el-get-sources))))

(with-demoted-errors
  (el-get 'sync my-packages)
  (message "el-get packages synced"))

(provide 'packages)
