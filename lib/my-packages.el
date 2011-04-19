(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

(setq el-get-sources
      '(el-get gist switch-window vkill nxhtml yasnippet
	       color-theme

        (:name magit
               :after (lambda () (global-set-key (kbd "C-x C-z") 'magit-status)))

        (:name asciidoc
               :type elpa
               :after (lambda ()
                        (autoload 'doc-mode "doc-mode" nil t)
                        (add-to-list 'auto-mode-alist '("\\.adoc$" . doc-mode))
                        (add-hook 'doc-mode-hook '(lambda ()
                                                    (turn-on-auto-fill)
                                                    (require 'asciidoc)))))

        (:name lisppaste        :type elpa)
	(:name textmate         :type git :url "http://github.com/defunkt/textmate.el.git")
        ))

(el-get)
(provide 'my-packages)
