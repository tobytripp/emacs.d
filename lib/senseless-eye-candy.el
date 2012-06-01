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

;; (require 'twittering-mode)
(setq twittering-username "tobytripp")
(setq twittering-icon-mode t)

(set-frame-font "Monaco-13")
(set-fringe-style -1)

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
;;     (color-theme-initialize)
     (color-theme-pastels)))
(add-to-list 'load-path (concat vendor-dir "/highlight-indentation"))
(require 'highlight-indentation)

(add-to-list 'load-path (concat vendor-dir "/fill-column-indicator"))
(require 'fill-column-indicator)
(setq fci-rule-color "grey20")
(setq fci-rule-column 77)

(add-hook 'coding-hook 'fci-mode)

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
(global-whitespace-mode)
