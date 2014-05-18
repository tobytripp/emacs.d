(if (require 'smart-mode-line nil 'noerror)
    (progn
      (setq sml/mode-width 25) ; https://github.com/Bruce-Connor/smart-mode-line/issues/12
      (setq sml/shorten-modes nil)
      (if after-init-time (sml/setup)
	(add-hook 'after-init-hook 'sml/setup))

      (add-to-list 'sml/replacer-regexp-list '("^~/Dropbox/" ":DB:"))
      (add-to-list 'sml/replacer-regexp-list '("^~/Code/investor-bridge" ":IB:"))
      (add-to-list 'sml/replacer-regexp-list '("^~/.*/lib/ruby/gems" ":GEMS" ))
      ))
