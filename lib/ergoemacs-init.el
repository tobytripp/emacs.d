;; Don't undefine the keys I'm used to.  If the new ones are truly
;; better, I'll move to them on my own. Thanks.
;;
(setq ergoemacs-redundant-keys '())

(ergoemacs-mode 1)

;; ErgoEmacs bindings for which I prefer the old version
;;
(ergoemacs-local-unset-key (kbd "C-n"))
(ergoemacs-local-unset-key (kbd "C-p"))
(ergoemacs-local-unset-key (kbd "C-a"))
