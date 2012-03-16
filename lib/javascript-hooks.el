(setenv "NODE_PATH" "~/node_modules")

;; (add-to-list 'load-path (concat vendor-dir "/jshint-mode"))
;; (require 'flymake-jshint)

(add-hook 'js-mode-hook
          (lambda ()
            (glasses-mode t)
            (flymake-mode t)
            ))

(defun jslint-thisfile ()
  (interactive)
  (compile (format "jsl -process %s" (buffer-file-name)))
  )

(provide 'javascript-hooks)
