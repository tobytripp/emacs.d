
(defun byte-compile-current-buffer ()
  "`byte-compile' current buffer if it's emacs-lisp-mode and compiled file exists."
  (interactive)
  (when (and (eq major-mode 'emacs-lisp-mode)
             (file-exists-p (concat (file-name-sans-extension (buffer-file-name)) ".elc")))
    (byte-compile-file buffer-file-name)))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (add-hook 'after-save-hook 'byte-compile-current-buffer)))

(defun toby/paredit-init ()
  (progn
    (define-key paredit-mode-map (kbd "C-0") 'paredit-forward-slurp-sexp)
    (define-key paredit-mode-map (kbd "C-0") 'paredit-backward-slurp-sexp)
    ))

(eval-after-load 'paredit-mode 'toby/paredit-init)

(provide 'lisp-hooks)
