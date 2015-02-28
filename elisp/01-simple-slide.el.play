(defun slide/next-path ()
  (let* ((next-num
	  (1+ (string-to-number (car (split-string (file-name-nondirectory (buffer-file-name)) "-")))))
	 (host-dir
	  (file-name-directory (buffer-file-name)))
	 (next-path
	  (concat host-dir (format "%02d" next-num) "-*")
	  ))
    (car (file-expand-wildcards next-path))
  ))

;;(slide/next-path)
;;(find-file (slide/next-path))
