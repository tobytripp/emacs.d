;; (load "haskell-site-file")
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

(require 'flymake)
(defun flymake-Haskell-init ()
  (flymake-simple-make-init-impl
   'flymake-create-temp-with-folder-structure nil nil
   (file-name-nondirectory buffer-file-name)
   'flymake-get-Haskell-cmdline))
(defun flymake-get-Haskell-cmdline (source base-dir)
  (list "flycheck_haskell.pl"
        (list source base-dir)))

(push '(".+\\.hs$" flymake-Haskell-init flymake-simple-java-cleanup)
      flymake-allowed-file-name-masks)
(push '(".+\\.lhs$" flymake-Haskell-init flymake-simple-java-cleanup)
      flymake-allowed-file-name-masks)
(push
 '("^\\(\.+\.hs\\|\.lhs\\):\\([0-9]+\\):\\([0-9]+\\):\\(.+\\)"
   1 2 3 4) flymake-err-line-patterns)

(add-hook
 'haskell-mode-hook
 '(lambda ()
    (define-key haskell-mode-map "\C-cd"
      'credmp/flymake-display-err-minibuf)))

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
