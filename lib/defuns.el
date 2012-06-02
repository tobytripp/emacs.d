
(defun sudo-edit (&optional arg)
  (interactive "p")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:" (ido-read-file-name "File: ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

(defun lorem ()
  "Insert a lorem ipsum."
  (interactive)
  (insert "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do "
          "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim"
          "ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut "
          "aliquip ex ea commodo consequat. Duis aute irure dolor in "
          "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla "
          "pariatur. Excepteur sint occaecat cupidatat non proident, sunt in "
          "culpa qui officia deserunt mollit anim id est laborum."))

(defun insert-date ()
  "Insert a time-stamp according to locale's date and time format."
  (interactive)
  (insert (format-time-string "%c" (current-time))))

(defun pairing-bot ()
  "If you can't pair program with a human, use this instead."
  (interactive)
  (message (if (y-or-n-p "Do you have a test for that? ") "Good." "Bad!")))

(defun replace-all-in-buffer (exp replace)
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward exp nil t)
      (replace-match replace))
    ))

(defun git-grep (regexp)
  "Run git-grep on ruby files in the current project"
  (interactive "sSearch for (regexp): ")
  (vc-git-grep regexp "'*.rb'" (textmate-project-root))
  )

(defun insert-rocket ()
  "Insert => rocket"
  (interactive)
  (delete-horizontal-space)
  (insert " => ")
  )

(defun insert-arrow ()
  "Insert a single arrow (Haskell syntax)"
  (interactive)
  (delete-horizontal-space)
  (insert " -> ")
  )

(defun insert-larrow ()
  "Insert <- arrow (Haskell monad return)"
  (interactive)
  (delete-horizontal-space)
  (insert " <- ")
  )

(defun insert-ellipses ()
  (interactive)
  (delete-horizontal-space)
  (insert "…"))

(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
                  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))
