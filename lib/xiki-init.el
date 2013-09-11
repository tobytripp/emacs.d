
(defun xiki ()
  "Attempt to start the xiki shell. https://github.com/trogdoro/xiki"
  (interactive)

  (unless (boundp 'rbenv-version-environment-variable)
    (rbenv-use-global))

  (setq gem-home
        (expand-file-name
         (concat "~/.rbenv/versions/"
                 (getenv rbenv-version-environment-variable)
                 "/lib/ruby/gems/1.9.1/gems"
                 )))

  (add-to-list 'load-path
               (concat gem-home
                       "/trogdoro-el4r-1.0.7/data/emacs/site-lisp/"))

  (require 'el4r)
  (el4r-boot)
  )
