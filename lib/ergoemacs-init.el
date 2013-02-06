;; Don't undefine the keys I'm used to.  If the new ones are truly
;; better, I'll move to them on my own. Thanks.
;;
(setq ergoemacs-redundant-keys '())

(ergoemacs-mode 1)

;; ErgoEmacs bindings for which I prefer the old version
;;
(global-set-key (kbd "C-n") 'next-line)
(global-set-key (kbd "C-p") 'previous-line)
(global-set-key (kbd "C-a") 'beginning-of-visual-line)
