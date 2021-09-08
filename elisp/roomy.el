;;; roomy.el --- Pad parenthesis to make things roomier

(defun roomy-set-overlay-properties ()
  (put 'glasses-parenthesis 'evaporate t)
  (put 'glasses-parenthesis 'after-string " "))

(defun roomy-glasses-overlay-p (overlay)
  (memq (overlay-get overlay 'category)
        '(roomy roomy-parenthesis)))

(defun roomy-make-overlay (beg end &optional category)
  (let ((overlay (make-overlay beg end)))
    (overlay-put overlay 'category (or category 'roomy))
    overlay))

(defun roomy-make-readable (beg end)
  (let ((case-fold-search nil))
    (save-excursion
      (save-match-data
        (goto-char beg)
        (while (re-search-forward "[a-zA-Z]_*\\((\\)" end t)
          (roomy-make-overlay (match-beginning 1) (match-end 1)
                              'roomy-parenthesis))))))

(defun roomy-make-unreadable (beg end)
  (dolist (o (overlays-in beg end))
    (when (roomy-overlay-p o)
      (delete-overlay o))))

(defun roomy-change (beg end &optional _old-len)
  "After-change function updating roomy overlays"
  (let ((beg-line (save-excursion (goto-char beg) (line-beginning-position)))
        (end-line (save-excursion (goto-char end) (line-end-position))))
    (roomy-make-unreadable beg-line end-line)
    (roomy-make-readable beg-line end-line)))

;;;###autoload
(define-minor-mode roomy-mode
  "Minor mode for padding out parenthesis for readability"
  :group 'roomy
  :lighter " (_)"
  (save-excursion
    (save-restriction
      (widen)
      (if roomy-mode
          (jit-lock-register 'roomy-change)
        (jit-lock-unregister 'roomy-change)))))

(provide 'roomy)
