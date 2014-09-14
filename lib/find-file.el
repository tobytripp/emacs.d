(defun toby/project-files ()
  (split-string (shell-command-to-string "git ls-tree --full-tree -r --name-only HEAD | awk '!/(vendor|images)/'"))
  )

;; (global-set-key (kbd "C-x f") 'find-file-in-repository)
;; (global-set-key (kbd "C-x f") 'toby/ido-project-files)

(defun toby/goto-file ()
  "Use peepopen to find a file in the current repository."
  (interactive)
  (defun string-join (separator strings)
    "Join all STRINGS using SEPARATOR."
    (mapconcat 'identity strings separator))
  (let ((root (textmate-project-root)))
    (when (null root)
      (error
       (concat
        "Can't find a suitable project root ("
        (string-join " " *textmate-project-roots* )
        ")")))
    (shell-command-to-string
     (format "open 'peepopen://%s?editor=%s'"
             (expand-file-name root)
             "EmacsClient")))
  )

; (global-set-key (kbd "C-x f") 'peepopen-goto-file-gui)
; (autoload 'projectile-find-file "projectile-mode" "Project navigation")
(projectile-global-mode)
(global-set-key (kbd "C-x f") 'projectile-find-file)
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

(global-unset-key (kbd "<f4>"))
(global-set-key (kbd "<f4>") 'projectile-find-file)

(recentf-mode 1)
(global-set-key (kbd "C-c f") 'recentf-open-files)

(provide 'find-file)
