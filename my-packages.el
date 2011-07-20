(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil t)
  (url-retrieve
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

(setq el-get-sources
      '((:name align    :type emacswiki)
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
        (:name dictionary-el :type elpa) ;; Dependency of some other package in here...
        (:name findr
               :type elpa
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

(setq my-packages
      (append
       '(el-get
        autopair
        browse-kill-ring
        coffee-mode
        color-theme
        full-ack
        gist
        git-emacs
        haskell-mode
        json
        js2-mode
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
        )
       (mapcar 'el-get-source-name el-get-sources)))

(el-get 'sync my-packages)
(provide 'my-packages)
