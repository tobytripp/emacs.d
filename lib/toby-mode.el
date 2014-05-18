(eval-when-compile (require 'cl))

(defun sudo-file ()
  (interactive)
  (let ((p (point)))
    (find-alternate-file
     (concat "/sudo::" (buffer-file-name)))
        (goto-char p)))

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
    (message "Command is Meta")
    )
   (t
    (setq ns-command-modifier   'super
          ns-alternate-modifier 'meta)
    (message "Alt is Meta")
    )
   )
  )

(defun toby/open-line ()
  "Insert a newline after the current line and move down"
  (interactive)
  (end-of-visual-line)
  (newline-and-indent)
  )

(defun touch ()
  "update the mtime of the file for the current buffer"
  (interactive)
  (save-some-buffers 't)
  (shell-command (concat "touch " (shell-quote-argument (buffer-file-name))))
  (clear-visited-file-modtime)
  (message "I'm touched")
  )


(defvar *tobys-mode-map*
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-x m")      'eshell)
    (define-key map (kbd "M-g")        'goto-line)
    (define-key map (kbd "s-z")        'undo)
    (define-key map (kbd "M-z")        'zap-to-char)
    (define-key map (kbd "C-x \\")     'align-regexp)
    (define-key map (kbd "M-/")        'hippie-expand)
    (define-key map (kbd "s-/")        'hippie-expand)

    (define-key map (kbd "C-S-d")      'duplicate-line)
    (define-key map (kbd "C-RET")      'toby/open-line)

    (define-key map (kbd "H-t")        'peepopen-goto-file-gui)
    ;; Watch out! This can crash an Emacs session with a frame inside
    ;; a terminal.
    ;;    (define-key map (kbd "M-O")        'ns-open-file-using-panel)

    (define-key map (kbd "S-s-<up>")   'move-text-up)
    (define-key map (kbd "S-s-<down>") 'move-text-down)
    (define-key map [(meta return)]   'textmate-next-line)

    (define-key map [f5] 'touch)
    (define-key map [f6] 'swap-modifiers)
    map)
  "Keymap used for my local customizations."
  )



(defun toby/set-overlay-properties ()
  (put 'toby-open-parenthesis 'evaporate t)
  (put 'toby-open-parenthesis 'after-string " ")

  (put 'toby-close-parenthesis 'evaporate t)
  (put 'toby-close-parenthesis 'before-string " ")

  (put 'toby-rocket 'evaporate t)
  (put 'toby-rocket 'after-string " ")
  (put 'toby-rocket 'before-string " ")
  )

(toby/set-overlay-properties)

(defun toby/make-overlay (beg end &optional category)
  "Create and return an overlay over the given region. Category
defaults to `toby'."
  (let ((overlay (make-overlay beg end)))
    (overlay-put overlay 'category (or category 'toby))
    overlay
    ))

(defun toby/my-overlay-p (overlay)
  "Return whether the given overlay is one of mine."
  (memq (overlay-get overlay 'category)
        '(toby-open-parenthesis toby-close-parenthesis toby-rocket))
  )

(defun toby/make-roomy (beg end)
  "Add spacing within compressed expressions"
  (interactive "r")
  (save-excursion
    (save-match-data
      (goto-char beg)
      (while (re-search-forward
              "[({]\\([^[:space:])]\\)"
              end t)
        (toby/make-overlay (match-beginning 0) (match-beginning 1)
                           'toby-open-parenthesis)
        )

      (goto-char beg)
      (while (re-search-forward
              "\\([^[:space:](]\\)[)}]"
              end t)
        (toby/make-overlay (match-end 1) (match-end 0)
                           'toby-close-parenthesis)
        )

      (goto-char beg)
      (while (re-search-forward
              "[^[:space:]]\\(=>\\)[^[:space:]]"
              end t)
        (toby/make-overlay (match-beginning 1) (match-end 1)
                           'toby-rocket)
        )
      )))

(defun toby/make-sloppy (beg end)
  "Return the region to its unfriendly state."
  (interactive "r")
  (dolist (o (overlays-in beg end))
    (when (toby/my-overlay-p o)
      (delete-overlay o)
      )))

(defun toby/on-change (beg end)
  "After change hook to update overlays"
  (let ((beg-line (save-excursion (goto-char beg) (line-beginning-position)))
        (end-line (save-excursion (goto-char end) (line-end-position))))
    (toby/make-sloppy beg-line end-line)
    (toby/make-roomy beg-line end-line)
    ))


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
  (save-excursion
    (save-restriction
      (widen)
      (toby/make-sloppy (point-min) (point-max))
      (if global-toby-mode
          (jit-lock-register 'toby/on-change)
        (jit-lock-unregister 'toby/on-change)
        ))))

(provide 'toby-mode)
