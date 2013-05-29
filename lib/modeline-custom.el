(toby/require-package 'diminish)

(when (require 'diminish nil 'noerror)
  (eval-after-load "paredit"   '(diminish 'paredit-mode "Pe"))
  (eval-after-load "abbrev"    '(diminish 'abbrev-mode "Ab"))
  (eval-after-load "textmate"  '(diminish 'textmate-mode "Tm"))
  (eval-after-load "abbrev"    '(diminish 'abbrev-mode "Ab"))
  (eval-after-load "yasnippet" '(diminish 'yas-minor-mode " Y")))
