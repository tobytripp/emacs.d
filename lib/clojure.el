(defun repl/eval-and-print ()
  "Evaluate the last s-expression and print in a comment"
  (interactive)
  (let ((form (cider-expression-at-point)))
    (end-of-visual-line)
    (comment-indent)
    (insert " ")
    (cider-interactive-eval-print form)
    ))

(defun toby/save-and-eval-buffer ()
  (interactive)
  (save-some-buffers 't)
  (cider-eval-buffer))

(defvar clojure--prettify-symbols-alist nil)
(eval-after-load 'cider
  '(progn
     (define-key cider-mode-map (kbd "C-x M-e") 'repl/eval-and-print)
     (define-key cider-mode-map (kbd "<f3>")    'cider-eval-defun-at-point)
     (define-key cider-mode-map (kbd "<f5>")    'toby/save-and-eval-buffer)
     ))

(defun toby/clojure-init ()
  (paredit-mode 1)
  (define-clojure-indent
    (defroutes 'defun)
    (GET 2)
    (POST 2)
    (PUT 2)
    (DELETE 2)
    (HEAD 2)
    (ANY 2)
    (context 2)))

(add-hook 'clojure-mode-hook 'toby/clojure-init)
(add-hook 'cider-interaction-mode-hook
          'cider-turn-on-eldoc-mode)

(toby/defhook cider-mode-hook
  (paredit-mode)
  (define-key cider-mode-map (kbd "C-c C-e") 'cider-eval-print-last-sexp))

(provide 'clojure)
