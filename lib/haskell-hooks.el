;; (load "haskell-site-file")
;;(autoload 'haskell-mode "haskell-mode" "Haskell Mode." t)

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(setq haskell-program-name "/usr/bin/ghci")
(add-hook 'haskell-mode-hook 'turn-on-haskell-ghci)

(defun my-haskell-keys ()
  (local-unset-key (kbd "M-r"))
  (global-unset-key (kbd "M-r"))

  (local-set-key (kbd "M-r") 'inferior-haskell-load-and-run)
  )

(add-hook 'haskell-mode-hook 'my-haskell-keys)
(setq haskell-font-lock-symbols nil)

(add-hook
 'haskell-mode-hook
 '(lambda ()
    (define-key haskell-mode-map (kbd "s-r") 'inferior-haskell-load-and-run)
    (define-key haskell-mode-map (kbd "C-;") 'insert-arrow)
    (define-key haskell-mode-map (kbd "C-:") 'insert-rocket)
    (define-key haskell-mode-map (kbd "C-=") 'insert-larrow)

    (define-key haskell-mode-map (kbd "C-h h") 'hoogle)

    (paredit-mode 1)
    ))

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

(provide 'haskell-hooks)
