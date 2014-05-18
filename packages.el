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

(defvar my-packages
  (append
   '(ace-jump-mode                           magit
     autopair                                markdown-mode
     browse-kill-ring                        mmm-mode
     centered-cursor-mode                    multi-term
     cider                                   org-mode
     coffee-mode                             org-reveal
     column-marker                           outline-magic
     company-mode                            paredit
     dired+                                  parenface
                                             peepopen
                                             projectile
     el-autoyas                              rainbow-delimiters
     epresent                                rbenv
     expand-region                           rhtml-mode
                                             rspec-mode
     fill-column-indicator                   ruby-end
                                             ruby-mode
     flycheck                                smart-mode-line
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
   (mapcar 'el-get-source-name el-get-sources)))

(with-demoted-errors "Error loading packages: %S"
  (el-get-cleanup my-packages)
  (el-get 'sync my-packages)
  (message "el-get packages synced"))

(provide 'packages)
;;; packages.el ends here
