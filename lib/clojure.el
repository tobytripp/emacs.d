(add-hook 'nrepl-interaction-mode-hook
          'nrepl-turn-on-eldoc-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'nrepl-toggle-pretty-printing)

(defun repl/eval-and-print ()
  "Evaluate the last s-expression and print in a comment"
  (interactive)
  (let ((form (nrepl-expression-at-point)))
    (end-of-visual-line)
    (comment-indent)
    (insert " ")
    (nrepl-interactive-eval-print form)
    ))

(eval-after-load 'cider
  '(progn
     (define-key cider-mode-map (kbd "C-x M-e") 'repl/eval-and-print)))

(defun toby/compojure-init ()
  (define-clojure-indent
    (defroutes 'defun)
    (GET 2)
    (POST 2)
    (PUT 2)
    (DELETE 2)
    (HEAD 2)
    (ANY 2)
    (context 2)))

(add-hook 'clojure-mode-hook 'toby/compojure-init)
