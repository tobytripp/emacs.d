(add-hook 'ruby-mode-hook
          (lambda ()
          (add-hook 'write-file-functions
                    '(lambda()
                       (save-excursion
                         (untabify (point-min) (point-max))
                         )))

          (local-set-key (kbd "M-RET") 'textmate-next-line)

          (set (make-local-variable 'indent-tabs-mode) 'nil)
          (set (make-local-variable 'tab-width) 2)

          (require 'rspec-mode)
          (local-set-key (kbd "M-r")   'rspec-verify)
          (local-set-key (kbd "M-S-r") 'rspec-verify-single)

          (require 'rvm)
          (rvm-activate-corresponding-ruby)

          (outline-minor-mode)
          (setq outline-regexp " *\\(def \\|describe \\|it \\|class\\|module\\)")
          ))

;; (add-hook 'ruby-mode-hook (lambda () (interactive) (column-marker-1 80)))

(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

(add-hook 'feature-mode-hook
          (lambda ()
            (local-set-key (kbd "M-r")   'feature-verify-all-scenarios-in-buffer)
            (local-set-key (kbd "M-S-r") 'feature-verify-scenario-at-pos)
            ))

(add-to-list 'auto-mode-alist '("\\.erb" . eruby-html-mumamo-mode))

; Install mode-compile to give friendlier compiling support
(autoload 'mode-compile "mode-compile"
  "Command to compile current buffer file based on the major mode" t)
(global-set-key (kbd "C-c c") 'mode-compile)
(autoload 'mode-compile-kill "mode-compile"
  "Command to kill a compilation launched by `mode-compile'" t)
(global-set-key (kbd "C-c k") 'mode-compile-kill)
(setq mode-compile-save-all-p t)
(autoload 'rdebug "rdebug" "ruby-debug interface" t)

(require 'align)
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
(add-to-list 'align-rules-list          ;TODO add to rcodetools.el
           '(ruby-xmpfilter-mark
             (regexp . "\\(\\s-*\\)# => [^#\t\n]")
             (repeat . nil)
             (modes  . '(ruby-mode))))

(provide 'ruby-hooks)

