(defun toby/ido-project-files ()
  "Use ido to select a file from the git project"
  (interactive)

  (let (project-files tbl)
    (setq project-files (toby/project-files))
    (setq tbl (make-hash-table :test 'equal))

    ;; (let (ido-list)
    ;;   (mapc (lambda (path)
    ;;           ;; format path for display in ido list
    ;;           (setq key (replace-regexp-in-string "\\(.*?\\)\\([^/]+?\\)$" "\\2|\\1" path))
    ;;           ;; remove trailing | or /
    ;;           (setq key (replace-regexp-in-string "\\(|\\|/\\)$" "" key))
    ;;           (puthash key path tbl)
    ;;           (push key ido-list))
    ;;         project-files)
    ;;   (find-file (gethash (ido-completing-read "project-files: " ido-list) tbl))
    ;;   )
    (find-file (concat (textmate-project-root)
                       (ido-completing-read "project-files: " (toby/project-files))))
    ))


(defun toby/project-files ()
  (split-string (shell-command-to-string "git ls-tree --full-tree -r --name-only HEAD | awk '!/(vendor|images)/'"))
  )

;; (global-set-key (kbd "C-x f") 'find-file-in-repository)
;; (global-set-key (kbd "C-x f") 'toby/ido-project-files)

(recentf-mode 1)
(global-unset-key (kbd "<f4>"))
(global-set-key (kbd "<f4>") 'recentf-open-files)
