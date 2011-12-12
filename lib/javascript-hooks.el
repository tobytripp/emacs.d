(setenv "NODE_PATH" "~/node_modules")

(add-to-list 'load-path (concat vendor-dir "/jshint-mode"))
(require 'flymake-jshint)

;(require 'jquery-doc)
;(add-hook 'js-mode-hook 'jquery-doc-setup)

(add-hook 'js-mode-hook
          (lambda ()
            (glasses-mode t)
            (flymake-mode t)
            ))

(add-hook 'js2-mode-hook
          '(lambda ()
             ;; (js-beautify)
             ;; (define-key js-mode-map (kbd "M-t")
             ;;   (lambda()(interactive)(js-beautify)))
             (define-key js-mode-map [(shift f10)]
               (lambda()(interactive)(jslint-thisfile)))))

(defun jslint-thisfile ()
  (interactive)
  (compile (format "jsl -process %s" (buffer-file-name)))
  )
