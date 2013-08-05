(defun djcb-opacity-modify (&optional dec)
  "modify the transparency of the emacs frame; if DEC is t,
    decrease the transparency, otherwise increase it in 5%-steps"
  (let* ((alpha-or-nil (frame-parameter nil 'alpha)) ; nil before setting
          (oldalpha (if alpha-or-nil alpha-or-nil 100))
          (newalpha (if dec (- oldalpha 5) (+ oldalpha 5))))
    (when (and (>= newalpha frame-alpha-lower-limit) (<= newalpha 100))
      (modify-frame-parameters nil (list (cons 'alpha newalpha))))))

 ;; C-8 will increase opacity (== decrease transparency)
 ;; C-9 will decrease opacity (== increase transparency
 ;; C-0 will returns the state to normal
(global-set-key (kbd "C-8") '(lambda()(interactive)(djcb-opacity-modify)))
(global-set-key (kbd "C-9") '(lambda()(interactive)(djcb-opacity-modify t)))
(global-set-key (kbd "C-0") '(lambda()(interactive)
                               (modify-frame-parameters nil `((alpha . 100)))))

(autoload 'twittering-mode "twittering-mode" "Twitter stream in Emacs")
(setq twittering-username "tobytripp")
(setq twittering-icon-mode t)

(set-fringe-style -1)

(require 'highlight-indentation)

(setq whitespace-display-mappings
      '((space-mark 32   [183]  [46])   ; normal space, ·
        (space-mark 160  [164]  [95])
        (space-mark 2208 [2212] [95])
        (space-mark 2336 [2340] [95])
        (space-mark 3616 [3620] [95])
        (space-mark 3872 [3876] [95])
        (newline-mark 10 [182 10])   ; newlne, ¶
        (tab-mark 9 [9655 9] [92 9]) ; tab, ▷
        ))
(setq whitespace-line-column 78)
(setq whitespace-style  '(face lines-tail))
(global-whitespace-mode +1)

;; http://ergoemacs.org/emacs/emacs23_features.html
(global-visual-line-mode 1)

(load-theme 'toby)
