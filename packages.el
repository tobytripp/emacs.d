(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
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
   '(cl-lib                                  s
     ace-jump-mode                           magit
     autopair                                markdown-mode
     browse-kill-ring                        mmm-mode
     centered-cursor-mode                    multi-term
     change-inner                            org-mode
     clojure-mode
     cider                                   org-reveal
     coffee-mode                             outline-magic
     column-marker                           paredit
     company-mode                            parenface
     dired+                                  peepopen
     el-autoyas                              projectile
     emmet-mode                              rainbow-delimiters
     epresent                                rbenv
     expand-region                           rhtml-mode
                                             rspec-mode
     fill-column-indicator                   ruby-end
     flx                                     ruby-mode
     flycheck                                smart-mode-line
     full-ack                                smex
                                             solarized-theme
     god-mode
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
