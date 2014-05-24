(defun my-update-cursor ()
  (setq cursor-type (if (or god-local-mode buffer-read-only) 'bar 'box)))

(eval-after-load 'god-mode
  '(progn
     (global-unset-key [escape])
     (global-set-key (kbd "<escape>") 'god-local-mode)

     (global-set-key (kbd "C-x C-1") 'delete-other-windows)
     (global-set-key (kbd "C-x C-2") 'split-window-below)
     (global-set-key (kbd "C-x C-3") 'split-window-right)
     (global-set-key (kbd "C-x C-0") 'delete-window)
     (global-set-key (kbd "C-x C-o") 'other-window)

     (define-key god-local-mode-map (kbd "C-<return>") 'god-local-mode)

     (add-hook 'god-mode-enabled-hook 'my-update-cursor)
     (add-hook 'god-mode-disabled-hook 'my-update-cursor)
     )
  )

(provide 'god-init)
;;; god-init ends here
