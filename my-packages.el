(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

(setq el-get-sources
      '(el-get gist switch-window vkill nxhtml yasnippet
	       color-theme full-ack browse-kill-ring mode-compile
	       ;; haskell-mode ; needs darcs on the PATH

	(:name enclose
	       :after (lambda () (add-hook 'ruby-mode-hook 'enclose-mode)))

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

	(:name lisppaste      :type elpa)
	(:name textmate	      :type git :url "http://github.com/defunkt/textmate.el.git")
	(:name inf-ruby	      :type elpa)
	(:name css-mode	      :type elpa)
	(:name yaml-mode      :type elpa)
	(:name idle-highlight :type elpa)
	(:name rsense         :type git :url "https://github.com/m2ym/rsense.git"
	       :build ("ant" "ruby etc/config.rb > ~/.rsense"))
	(:name ibuffer-git    :type git :url "https://github.com/jrockway/ibuffer-git.git")
        ))

(el-get)
(provide 'my-packages)