(if (require 'mmm-auto nil 'noerror)
    (progn
      (eval-after-load "mmm-mode"
	'(progn
	   (mmm-add-classes
	    '((ruby-heredoc-sql
	       :submode sql-mode
	       :face mmm-declaration-submode-face
	       :front "<<-?SQL.*\r?\n"
	       :back  "[ \t]*SQL$")
              (literate-haskell-latex
               :submode literate-haskell-mode
               :front "^\\\\begin{code}"
               :front-offset (end-of-line 1)
               :back "^\\\\end{code}"
               :include-back nil
               :back-offset (beginning-of-line -1)
               )))
	   ;; (mmm-add-mode-ext-class 'ruby-mode "\\.rb$" 'ruby-heredoc-sql)
	   ))

      (setq mmm-global-mode 'maybe)
      (setq-default mmm-never-modes
		    (append '(ediff-mode) '(text-mode) mmm-never-modes))
      ))

;; TODO:
;;   <<-HTML
;;   <<-RUBY (as Ruby)

(provide 'mmm-init)
