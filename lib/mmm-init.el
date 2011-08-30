(require 'mmm-auto)
(setq mmm-global-mode 'maybe)

(eval-after-load "mmm-mode"
  '(progn
     (mmm-add-classes
      '((ruby-heredoc-sql
         :submode sql-mode
         :face mmm-code-submode-face
         :front "<<-?SQL.*\r?\n"
         :back  "^[ \t]*SQL$")))
     (mmm-add-mode-ext-class 'ruby-mode "\\.rb$" 'ruby-heredoc-sql)
     ))

(mmm-add-mode-ext-class 'html-mode "\.rhtml$" "\.html\.erb$")
(eval-after-load "mmm-vars"
  '(progn
     (mmm-add-classes
      '((eruby :submode ruby-mode :front "<%[#=]?" :back "-?%>"
               :match-face (("<%#" . mmm-comment-submode-face)
                            ("<%=" . mmm-output-submode-face)
                            ("<%"  . mmm-code-submode-face))
               :insert ((?% erb-code       nil @ "<%"  @ " " _ " " @ "%>" @)
                        (?# erb-comment    nil @ "<%#" @ " " _ " " @ "%>" @)
                        (?= erb-expression nil @ "<%=" @ " " _ " " @ "%>" @)))))
     (dolist (mode (list 'html-mode 'nxml-mode))
       (mmm-add-mode-ext-class mode "\\.r?html\\(\\.erb\\)?$" 'eruby))
     (mmm-add-mode-ext-class 'yaml-mode "\\.yaml$" 'eruby)
     (dolist (mode (list 'js-mode 'js2-mode))
       (mmm-add-mode-ext-class mode "\\.js\\.erb$" 'eruby))))

;; TODO:
;;   <<-HTML
;;   <<-RUBY (as Ruby)
