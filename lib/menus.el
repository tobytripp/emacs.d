(easy-menu-define text-mode-menu text-mode-map
  "Text mode Menu"
  '("Text"
    ["Lorem" lorem]
    ["Insert Date" insert-date]
    )
  )

; Global menu items
(easy-menu-add-item nil '("Text") ["Lorem"           lorem])
(easy-menu-add-item nil '("Text") ["Insert Date"     insert-date])
(easy-menu-add-item nil '("Text") ["Sudo Edit"       sudo-edit])
(easy-menu-add-item nil '("Text") ["View URL"        view-url])
(easy-menu-add-item nil '("Text") ["Untabify Buffer" untabify-buffer])
(easy-menu-add-item nil '("Text") ["Indent Buffer"   indent-buffer])
(easy-menu-add-item nil '("Text") ["Cleanup Buffer"  cleanup-buffer])
(easy-menu-add-item nil '("Text") ["Pairing Bot"     pairing-bot])

(easy-menu-define ruby-mode-menu ruby-mode-map
  "Ruby mode menu"
  '("Ruby"
    ["Beginning of block" ruby-beginning-of-block]
    ["End of block"       ruby-end-of-block]
    ["Forward sexp"       ruby-forward-sexp]
    ))
