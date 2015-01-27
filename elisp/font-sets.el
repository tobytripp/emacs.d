(set-face-attribute 'default nil
                    :family "Inconsolata" :height 145 :weight 'normal)

;; Fallbacks for missing unicode glyphs
(set-fontset-font "fontset-default"
		  'unicode
		  '("Menlo" . "iso10646-1"))

(provide 'font-sets)
