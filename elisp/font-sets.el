;; Fallbacks for missing unicode glyphs
;; (set-fontset-font "fontset-default"
;; 		  'unicode
;; 		  '("Menlo" . "iso10646-1"))
(when (display-graphic-p)
  (let ((emoticons '(#x1F600 . #x1F64F)))
    (set-fontset-font "fontset-default" emoticons "Apple Color Emoji")))

(provide 'font-sets)
