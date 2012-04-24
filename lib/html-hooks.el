(add-to-list 'load-path (concat vendor-dir "/html-helper-mode"))
(autoload 'html-helper-mode "html-helper-mode" "HTML Mode" t)

(add-to-list 'auto-mode-alist '("\\.html" . html-helper-mode))
(add-to-list 'auto-mode-alist '("\\.erb"  . html-helper-mode))

;; (load "nxhtml/autostart.el")
