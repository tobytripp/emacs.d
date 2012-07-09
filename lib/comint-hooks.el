(defun clear-shell ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer))
  )

; Kill buffer, really?
(global-unset-key (kbd "s-k"))

(defun set-my-shell-bindings ()
  (interactive)
  (local-set-key (kbd "<up>")   'comint-previous-input)
  (local-set-key (kbd "<down>") 'comint-next-input)
  (local-set-key (kbd "s-k")    'clear-shell)
  )
(add-hook 'shell-mode-hook 'set-my-shell-bindings)
(add-hook 'eshell-mode-hook 'set-my-shell-bindings)
