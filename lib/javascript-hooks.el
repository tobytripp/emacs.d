(setenv "NODE_PATH" "~/node_modules")

(eval-after-load "js-mode"
  '(progn
     (add-hook 'js-mode-hook
	       (lambda ()
		 (glasses-mode t)
		 (setq mode-name "Js")
		 ))
     (require 'js-comint)
     ))

(defun jslint-thisfile ()
  (interactive)
  (compile (format "jsl -process %s" (buffer-file-name)))
  )

(setq inferior-js-program-command "env NODE_NO_READLINE=1 node")

(provide 'javascript-hooks)
