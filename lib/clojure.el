(defun repl/eval-and-print ()
  "Evaluate the last s-expression and print in a comment"
  (interactive)
  (let ((form (cider-expression-at-point)))
    (end-of-visual-line)
    (comment-indent)
    (insert " ")
    (cider-interactive-eval-print form)
    ))

(eval-after-load 'cider
  '(progn
     (define-key cider-mode-map (kbd "C-x M-e") 'repl/eval-and-print)))

(eval-after-load 'clojure-test-mode
  '(progn
     (define-key clojure-test-mode-map (kbd "<f12>") 'clojure-test-run-tests)
     (define-key clojure-test-mode-map (kbd "<f11>") 'clojure-test-run-test)))

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
(add-hook 'cider-interaction-mode-hook
          'cider-turn-on-eldoc-mode)

(toby/defhook cider-mode-hook
  (paredit-mode)
  (define-key cider-mode-map (kbd "C-c C-e") 'cider-eval-print-last-sexp)
  )
