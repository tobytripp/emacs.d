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

(require 'js-comint)
(setq inferior-js-program-command "env NODE_NO_READLINE=1 node")

;; (setq inferior-js-mode-hook
;;       (lambda ()
;;         ;; We like nice colors
;;         (ansi-color-for-comint-mode-on)
;;         ;; Deal with some prompt nonsense
;;         (add-to-list 'comint-preoutput-filter-functions
;;                      (lambda (output)
;;                        (replace-regexp-in-string ".*1G\.\.\..*5G" "..."
;;                                                  (replace-regexp-in-string ".*1G.*3G" "&gt;" output))))))

(provide 'javascript-hooks)
