(defun esk-paredit-nonlisp ()
  "Turn on paredit mode for non-lisps."
  (set (make-local-variable 'paredit-space-delimiter-chars)
       (list ?\"))
  (paredit-mode 1))

(defun esk-space-for-delimiter? (endp delimiter)
  (not (member major-mode
               '(ruby-mode espresso-mode javascript-mode js-mode js2-mode))))

(eval-after-load 'paredit
  '(add-to-list 'paredit-space-for-delimiter-predicates
                'esk-space-for-delimiter?))
