(setq erc-echo-notices-in-minibuffer-flag t)
(require 'erc-match)
(setq erc-keywords '("resolve" "toby" "ttripp"))

(defvar bitlbee-password "password")
(add-hook 'erc-join-hook 'bitlbee-identify)
(defun bitlbee-identify ()
  "If we're on the bitlbee server, send the identify command to the
 &bitlbee channel."
  (when (and (string= "localhost" erc-session-server)
             (string= "&bitlbee" (buffer-name)))
    (erc-message "PRIVMSG" (format "%s identify %s"
                                   (erc-default-target)
                                   bitlbee-password))))

;; (erc :server "irc.freenode.net" :port 6667 :nick "toby1")
;; (erc :server "localhost" :port 6667 :nick "ttripp")
;; (setq erc-autojoin-channels-alist
;;       '(("freenode.net" "#emacs" "#mongo")
;;         ("localhost" "&bitlbee")))
