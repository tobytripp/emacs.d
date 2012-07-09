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

(defun swap-modifiers ()
  "Swap meta and super"
  (interactive)
  (cond
   ((equal ns-command-modifier 'super)
    (setq ns-command-modifier   'meta
          ns-alternate-modifier 'super)
    )
   (t
    (setq ns-command-modifier   'super
          ns-alternate-modifier 'meta)
    ))
  )

(equal ns-command-modifier 'super)

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
    ;; Watch out! This can crash an Emacs session with a frame inside
    ;; a terminal.
    ;;    (define-key map (kbd "M-O")        'ns-open-file-using-panel)

    (define-key map (kbd "S-s-<up>")   'move-text-up)
    (define-key map (kbd "S-s-<down>") 'move-text-down)
    (define-key map [(super return)]   'textmate-next-line)
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

(provide 'toby-mode)
