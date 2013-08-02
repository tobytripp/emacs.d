
(defun fix-parens ()
  "Fix misplaced parens in code buffers."

  (interactive)
  (act-on-region-or-buffer
   (lambda (p1 p2)
     (replace-in "(\\([^[:space:])]\\)" "( \\1" p1 p2)
     (replace-in "\\([^[:space:](]\\))" "\\1 )" p1 p2)
     ))
  )

(defun decompress-hash-rockets ()
  "Fix compressed hash rockets"
  (interactive)
  (act-on-region-or-buffer
   (lambda (p1 p2)
     (replace-in
      "\\([^[:space:]]\\)=>\\([^[:space:]]\\)"
      "\\1 => \\2"
      p1 p2)
     ))
  )

(defun act-on-region-or-buffer (fn)
  "Given a function that operates between to points, pass it the active
region or the entire buffer."
  (let (p1 p2 bounds)
    (if (use-region-p)
        (setq p1 (region-beginning) p2 (region-end))
      (setq p1 (point-min) p2 (point-max))
      )
    (funcall fn p1 p2)
    )
  )

(defun replace-in (exp replace p1 p2)
  (save-restriction
    (narrow-to-region p1 p2)
    (goto-char (point-min))
    (while (re-search-forward exp nil t)
      (replace-match replace))
    ))

(defun add-pride ()
  (interactive)
  (fix-parens)
  (decompress-hash-rockets)
  )

(defun break-ruby-hash ()
  "Break the ruby hash around point into multiple lines at commas"
  (interactive)
  (let ((chars "^{}") p1 p2)
    (save-excursion
      (skip-chars-backward chars)
      (setq p1 (point))
      (skip-chars-forward chars)
      (setq p2 (point))

      (goto-char p1) (insert "\n")
      (goto-char p2) (forward-char 1) (insert "\n")
      (replace-in ", " ",\n" p1 p2)
      (indent-region p1 (+ 2 p2))
      )))
