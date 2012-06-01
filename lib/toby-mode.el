(require 'cl)

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
    (define-key map (kbd "C-x m")      'eshell)
    (define-key map (kbd "M-g")        'goto-line)
    (define-key map (kbd "s-z")        'undo)
    (define-key map (kbd "M-z")        'undo)
    (define-key map (kbd "C-x \\")     'align-regexp)
    (define-key map (kbd "M-/")        'hippie-expand)
    (define-key map (kbd "s-/")        'hippie-expand)

    (define-key map (kbd "C-S-d")      'duplicate-line)

    (define-key map (kbd "M-o")        'peepopen-goto-file-gui)
    ;;    (define-key map (kbd "M-O")        'ns-open-file-using-panel)

    (define-key map (kbd "S-s-<up>")   'move-text-up)
    (define-key map (kbd "S-s-<down>") 'move-text-down)
    map)
  "Keymap used for my local customizations."
  )

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
