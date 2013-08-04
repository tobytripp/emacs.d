(autoload 'ruby-mode "ruby-mode" "Major mode for Ruby" t)
(defalias 'inf-ruby-keys 'inf-ruby-setup-keybindings)

(add-to-list 'inf-ruby-implementations '("pry" . "pry"))
(add-to-list 'inf-ruby-implementations '("rails" . "rails console"))
(setq inf-ruby-default-implementation "pry")
(setq inf-ruby-prompt-pattern "^\\([0-9.]+\\) ([^)]+):[0-9]+ [>*]")

(defun toby/ruby-init ()
   (set (make-local-variable 'indent-tabs-mode) 'nil)
   (set (make-local-variable 'tab-width) 2)

   (if (and (not (null buffer-file-name))
            (file-writable-p buffer-file-name))
       (flymake-mode))

   (outline-minor-mode)
   (setq outline-regexp " *\\(def \\|describe \\|it \\|class\\|module\\)")

   (column-marker-1 80)
   (pretty-lambdas)

   (git-gutter+-mode)

   ; Doesn't work in the terminal, unfortunately…
   (define-key ruby-mode-map (kbd "C-;") 'insert-rocket)

   (push 'company-robe company-backends)
  )

(add-hook 'ruby-mode-hook 'toby/ruby-init)
(add-hook 'ruby-mode-hook 'robe-mode)

(require 'ruby-end)
(require 'rspec-mode)
(local-set-key (kbd "M-r")   'rspec-verify)
(local-set-key (kbd "M-S-r") 'rspec-verify-single)

(autoload 'xmp "rcodetools")
(autoload 'run-pry "pry")

(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))
(add-hook 'feature-mode-hook
          (lambda ()
            (local-set-key (kbd "M-r")   'feature-verify-all-scenarios-in-buffer)
            (local-set-key (kbd "M-S-r") 'feature-verify-scenario-at-pos)
            ))

(add-to-list 'auto-mode-alist '("\\.rabl$" . ruby-mode))

(autoload 'rhtml-mode "rhtml-mode" "RHTML Mode" t)
(add-to-list 'auto-mode-alist '("\\.html.erb$" . rhtml-mode))

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

;; (add-hook 'outline-mode-hook
;;           (lambda ()
;;             (require 'outline-cycle)))

(provide 'ruby-hooks)
