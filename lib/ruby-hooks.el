(autoload 'ruby-mode "ruby-mode" "Major mode for Ruby" t)

(add-hook
 'ruby-mode-hook
 (lambda ()
   (set (make-local-variable 'indent-tabs-mode) 'nil)
   (set (make-local-variable 'tab-width) 2)

   (if (and (not (null buffer-file-name))
            (file-writable-p buffer-file-name))
       (flymake-mode))

   (add-to-list 'load-path (concat vendor-dir "/rspec-mode"))

   (outline-minor-mode)
   (setq outline-regexp " *\\(def \\|describe \\|it \\|class\\|module\\)")

   (column-marker-1 80)
   (pretty-lambdas)
   ))

(require 'ruby-end)
(require 'rspec-mode)
(local-set-key (kbd "M-r")   'rspec-verify)
(local-set-key (kbd "M-S-r") 'rspec-verify-single)

(require 'rvm)
(require 'column-marker)

(autoload 'xmp "rcodetools")

(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))
(add-hook 'feature-mode-hook
          (lambda ()
            (local-set-key (kbd "M-r")   'feature-verify-all-scenarios-in-buffer)
            (local-set-key (kbd "M-S-r") 'feature-verify-scenario-at-pos)
            ))

(add-to-list 'auto-mode-alist '("\\.erb" . eruby-nxhtml-mumamo-mode))

;; Install mode-compile to give friendlier compiling support
(autoload 'mode-compile "mode-compile"
  "Command to compile current buffer file based on the major mode" t)
(global-set-key (kbd "C-c c") 'mode-compile)
(autoload 'mode-compile-kill "mode-compile"
  "Command to kill a compilation launched by `mode-compile'" t)
(global-set-key (kbd "C-c k") 'mode-compile-kill)
(setq mode-compile-save-all-p t)

(autoload 'rdebug "rdebug" "ruby-debug interface" t)

(require 'align)
(add-hook 'align-load-hook
          (lambda ()
            (add-to-list 'align-rules-list
                         '(ruby-comma-delimiter
                           (regexp . ",\\(\\s-*\\)[^# \t\n]")
                           (repeat . t)
                           (modes  . '(ruby-mode))))
            (add-to-list 'align-rules-list
                         '(ruby-hash-literal
                           (regexp . "\\(\\s-*\\)=>\\s-*[^# \t\n]")
                           (repeat . t)
                           (modes  . '(ruby-mode))))
            (add-to-list 'align-rules-list
                         '(ruby-assignment-literal
                           (regexp . "\\(\\s-*\\)=\\s-*[^# \t\n]")
                           (repeat . t)
                           (modes  . '(ruby-mode))))
            (add-to-list 'align-rules-list
                         '(ruby-xmpfilter-mark
                           (regexp . "\\(\\s-*\\)# => [^#\t\n]")
                           (repeat . nil)
                           (modes  . '(ruby-mode))))
            ))

;; (easy-menu-define ruby-mode-menu ruby-mode-map
;;   "Ruby mode menu"
;;   '("Ruby"
;;     ["Beginning of block" ruby-beginning-of-block]
;;     ["End of block"       ruby-end-of-block]
;;     ["Forward sexp"       ruby-forward-sexp]
;;     ))

;; (require 'rdebug)

(add-hook 'outline-mode-hook
          (lambda ()
            (require 'outline-cycle)))

;; (add-hook 'outline-minor-mode-hook
;;           (lambda ()
;;             (require 'outline-magic)
;;             (define-key outline-minor-mode-map [(f10)] 'outline-cycle)))


(provide 'ruby-hooks)
