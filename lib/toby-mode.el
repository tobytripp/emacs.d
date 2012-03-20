(require 'cl)

(defun define-keys-from-keylist (map keylist)
  (mapc (lambda (keypair)
          (define-key map (kbd (car keypair)) (cdr keypair))
          )
        keylist)
  )

(defvar tobys-keys-alist
  (list
   '("C-x m" . 'eshell)
   '("M-g"   . 'goto-line)
   )
  "An alist of keys and the functions they're bound to")

(defvar *tobys-mode-map*
  (let ((map (make-sparse-keymap)))
    (define-keys-from-keylist map tobys-keys-alist)
    ))

(define-minor-mode toby-mode
  "Customization minor mode for ME"
  :lighter " π" :global t :keymap *tobys-mode-map*)

(provide 'toby)
