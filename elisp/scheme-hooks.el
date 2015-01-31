(defun toby/scheme-init ()
  (local-set-key (kbd "C-c e") 'scheme-send-region)
  (local-set-key (kbd "C-c s") 'scheme-send-last-sexp)
  ;; MiniKanren
  (put 'fresh 'scheme-indent-function 1)
  (put 'run*  'scheme-indent-function 1)
  )

(add-hook 'scheme-mode-hook 'toby/scheme-init)

(provide 'scheme-hooks)
