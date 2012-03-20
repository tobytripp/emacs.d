(require 'cl)

(defun define-keys-from-key-alist (map keylist)
  (dolist (keypair tobys-keys-alist)
    (let ((key (car keypair)) (sym (cdr keypair)))
      (define-key map (read-kbd-macro key) sym)
      ))
  )

(defconst tobys-keys-alist
  (list
   (cons "C-x m"   'eshell)
   (cons "M-g"     'goto-line)
   (cons "s-z"     'undo)
   (cons "M-z"     'undo)
   (cons "C-x \\"  'align-regexp)
   (cons "M-/"     'hippie-expand)
   (cons "s-/"     'hippie-expand)

   (cons "C-S-d"   'duplicate-line)
   )
  "An alist of keys and the functions they're bound to")

(defun duplicate-line ()
  "Duplicate the current line"
  (interactive)
  (save-excursion
    (move-beginning-of-line 1)
    (kill-line)
    (yank)
    (open-line 1)
    (next-line 1)
    (yank)
    ))

(defvar *tobys-mode-map*
  (let ((map (make-sparse-keymap)))
    (define-keys-from-key-alist map tobys-keys-alist)
    ))

(define-minor-mode toby-mode
  "Customization minor mode for ME"
  :lighter " π" :global t :keymap *tobys-mode-map*)

(provide 'toby)
