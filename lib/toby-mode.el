(require 'cl)

(defun define-keys-from-key-alist (map keylist)
  (dolist (keypair tobys-keys-alist)
    (let (
          (key (car keypair))
          (sym (cdr keypair)))
      (define-key map (read-kbd-macro key) sym)
      ))
  )

(defconst tobys-keys-alist
  (list
   '("C-x m"  . 'eshell)
   '("M-g"    . 'goto-line)
   '("s-z"    . 'undo)
   '("M-z"    . 'undo)
   '("C-x \\" . 'align-regexp)
   '("M-/"    . 'hippie-expand)
   '("s-/"    . 'hippie-expand)

   '("C-S-d"  . 'duplicate-line)

   '("M-o"    . 'peepopen-goto-file-gui)
   '("M-O"    . 'ns-open-file-using-panel)

   '("S-s-<up>"   . 'move-text-up)
   '("S-s-<down>" . 'move-text-down)
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

(defvar *tobys-mode-map* (make-sparse-keymap)
  (let ((map (make-sparse-keymap)))
    (define-keys-from-key-alist map tobys-keys-alist)
    )
 )

;; (define-keys-from-key-alist *tobys-mode-map* tobys-keys-alist)

(define-minor-mode toby-mode
  "Customization minor mode for ME"
  :lighter " π"
  :global t
  :keymap *tobys-mode-map*)

(define-minor-mode global-toby-mode
  "Toggle Toby Mode globally"
  :lighter " π"
  :global t
  :keymap *tobys-mode-map*
  )

(provide 'toby)
