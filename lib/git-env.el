(setenv  "PATH" (concat (getenv "PATH") ":" "/usr/local/bin" ":" "/usr/local/git/bin/"))
(setq exec-path (append exec-path '("/usr/local/bin")))
(setq exec-path (append exec-path '("/usr/local/git/bin")))

;; https://github.com/nonsequitur/git-gutter-plus
(if (require 'git-gutter+ nil 'noerror)
    (progn
      (global-git-gutter+-mode t)
      (setq git-gutter+-diff-options "-w")
      (global-set-key (kbd "C-x n") 'git-gutter+-next-hunk)
      (global-set-key (kbd "C-x p") 'git-gutter+-previous-hunk)
      ))


(eval-after-load "magit"
  '(progn
     ;; full screen magit-status
     (defadvice magit-status (around magit-fullscreen activate)
       (window-configuration-to-register :magit-fullscreen)
       ad-do-it
       (delete-other-windows))

     (defun magit-quit-session ()
       "Restores the previous window configuration and kills the magit buffer"
       (interactive)
       (kill-buffer)
       (jump-to-register :magit-fullscreen))

     (global-magit-wip-save-mode 1)
     (define-key magit-status-mode-map (kbd "q") 'magit-quit-session)
     ))
