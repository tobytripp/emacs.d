;; (load "haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(defun my-haskell-keys ()
  (local-unset-key (kbd "M-r"))
  (global-unset-key (kbd "M-r"))

  (local-set-key (kbd "M-r") 'inferior-haskell-load-and-run)
  )

(add-hook 'haskell-mode-hook 'my-haskell-keys)
(setq haskell-font-lock-symbols nil)

; (add-hook 'haskell-mode-hook 'my-haskell-mmm-mode)

;(mmm-add-classes
; '(literate-haskell-markdown
;   :submode markdown-mode
;   :front "^[^>]"
;   :include-front true
;   :back "^>\\|$"
;   )
; )

;(defun my-haskell-mmm-mode ()
;  ;; go into mmm minor mode when class is given
;  (make-local-variable 'mmm-global-mode)
;  (setq mmm-global-mode 'true))

(setq mmm-submode-decoration-level 0)

;; other haskell indent modes
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)



(provide 'haskell-hooks)
