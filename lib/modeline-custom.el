(toby/require-package 'smart-mode-line)

(if after-init-time (sml/setup)
    (add-hook 'after-init-hook 'sml/setup))

(add-to-list 'sml/replacer-regexp-list '("^~/Dropbox/" ":DB:"))
(add-to-list 'sml/replacer-regexp-list '("^~/Code/investor-bridge" ":IB:"))
(add-to-list 'sml/replacer-regexp-list '("^~/.*/lib/ruby/gems" ":GEMS" ))
