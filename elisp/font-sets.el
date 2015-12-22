;; Fallbacks for missing unicode glyphs
(set-fontset-font "fontset-default"
		  'unicode
		  '("Menlo" . "iso10646-1"))
(set-fontset-font t 'symbol (font-spec :family "Apple Color Emoji") nil 'prepend)

(provide 'font-sets)
