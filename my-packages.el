(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(require 'el-get)

(setq el-get-sources
      '(el-get
        browse-kill-ring
        coffee-mode
        color-theme
        full-ack
        gist
        json
        mode-compile
        nxhtml
        paredit
        ruby-block
        ruby-end
        rvm
        switch-window
        twittering-mode
        vkill
        yasnippet
        yaml-mode
        zencoding-mode
        
        (:name align :type emacswiki)
        (:name easymenu :type emacswiki)
        
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

        (:name findr          :type elpa
               :after (lambda ()
                        (autoload 'findr "findr" "Find file name." t)
                        (define-key global-map [(meta control S)] 'findr)
                        (autoload 'findr-search "findr" "Find text in files." t)
                        (define-key global-map [(meta control s)] 'findr-search)
                        (autoload 'findr-query-replace "findr" "Replace text in files." t)
                        (define-key global-map [(meta control r)] 'findr-query-replace)
                        ))
        (:name lisppaste      :type elpa)
        (:name textmate-mode  :type git :url "http://github.com/defunkt/textmate.el.git")
        (:name ruby-mode      :type elpa)
        (:name inf-ruby       :type elpa)
        (:name css-mode       :type elpa)
        (:name idle-highlight :type elpa)
        (:name auto-complete  :type git :url "https://github.com/m2ym/auto-complete.git")
        (:name rsense         :type git :url "https://github.com/m2ym/rsense.git"
               :build ("ant" "ruby etc/config.rb > ~/.rsense"))
        (:name ibuffer-git    :type git :url "https://github.com/jrockway/ibuffer-git.git")
        (:name rspec-mode     :type git :url "https://github.com/pezra/rspec-mode.git")
        (:name feature-mode   :type git :url "https://github.com/michaelklishin/cucumber.el.git")

        ))

(el-get)
(provide 'my-packages)
