(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (emacs-lisp . t)
   (haskell . t)
   (ruby . t)
   (js . t)))

(setq org-src-fontify-natively t)

(defun toby/tangle-and-run ()
  (cond
   ((eq 'haskell-mode major-mode)
    (message "Loading tangled buffer in haskell mode!")
    (inferior-haskell-load-file)
    (switch-to-haskell)
    )
   ))

(add-hook 'org-babel-post-tangle-hook
          'toby/tangle-and-run)

(add-hook 'org-mode-hook
          (lambda ()
            (local-set-key (kbd "s-r") 'org-babel-tangle)))
