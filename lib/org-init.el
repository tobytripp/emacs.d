(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (emacs-lisp . t)
   (haskell . t)
   (ruby . t)
   (js . t)))

(setq org-src-fontify-natively t)

(add-hook 'org-babel-post-tangle-hook
          (lambda ()
            (cond
             ((eq 'haskell-mode major-mode)
              (message "Loading tangled buffer in haskell mode!")
              (inferior-haskell-load-file)
              )
             ))
          )

(add-hook 'org-mode-hook
          (lambda ()
            (local-set-key (kbd "s-r") 'org-babel-tangle)))
