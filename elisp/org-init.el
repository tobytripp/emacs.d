;;(org-babel-do-load-languages
;; 'org-babel-load-languages
;; '((emacs-lisp . t)
;;   (haskell . t)
;;   (ruby . t)
;;   (js . t)))
;;
(setq org-src-fontify-natively t)

(defun toby/tangle-and-run ()
  (cond
   ((eq 'haskell-mode major-mode)
    (message "Loading tangled buffer in haskell mode!")
    (inferior-haskell-load-file)
    (switch-to-haskell))))

(add-hook 'org-babel-post-tangle-hook
          'toby/tangle-and-run)

(add-hook 'org-mode-hook
          (lambda ()
            (load-library "ox-reveal")
            (local-set-key (kbd "s-r") 'org-babel-tangle)))

(defadvice org-html-src-block
  (after toby/wrap-org-html-src-in-code-tag activate)
  (setq ad-return-value (replace-regexp-in-string
                         "\\(<pre[^>]+src-\\([^\"]+\\)\">\\)\\([^<]+\\)</pre>"
                         "\\1<code class=\"\\2\">\\3</code></pre>"
                         ad-return-value)))

(setq reveal-highlight-theme "zenburn")

(defadvice org-reveal-stylesheets
  (after toby/add-highlight-styles (info) activate)
  "Add stylesheet declaration for highlight.js formatting"
  (let* ((root-path (plist-get info :reveal-root))
         (css-path (concat root-path "/plugin/highlight/styles")))
    (setq ad-return-value
          (concat ad-return-value
                  (format "<link rel=\"stylesheet\" href=\"%s\">\n"
                          (concat css-path "/" reveal-highlight-theme ".css"))))))
