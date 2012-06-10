
(set-face-attribute 'default nil
                    :family "Inconsolata" :height 145 :weight 'normal)

(set-fontset-font "fontset-default"
                  (cons (decode-char 'ucs #x21a2)
                        (decode-char 'ucs #x21a3))
                  '("Menlo" . "iso10646-1")
                  )
(set-fontset-font "fontset-default"
                  (cons (decode-char 'ucs #x21dd)
                        (decode-char 'ucs #x2218))
                  '("Menlo" . "iso10646-1")
                  )
