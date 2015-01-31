(defun slide/previous-path ()
  (let* ((previous-num
	  (1+ (string-to-number (car (split-string (file-name-nondirectory (buffer-file-name)) "-")))))
	 (host-dir
	  (file-name-directory (buffer-file-name)))
	 (previous-path
	  (concat host-dir (format "%02d" previous-num) "-*")
	  ))
    (car (file-expand-wildcards previous-path))
  ))

;;(slide/previous-path)
;;(find-file (slide/previous-path))
