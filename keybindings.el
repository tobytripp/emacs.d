;; Key-bindings
;; Most of these are pulled from the awesome emacs starter kit:
;;  https://github.com/technomancy/emacs-starter-kit

(setq mouse-wheel-scroll-amount '(1))
(setq mouse-wheel-progressive-speed nil)

(setq
  ns-command-modifier   'super       ; Apple/Command key is Meta
  ns-alternate-modifier 'meta        ; Option is the Mac Option key
  ns-function-modifier  'hyper
  ns-pop-up-frames      nil
  )

;; Escape is C-g
(global-set-key [escape] 'keyboard-quit)
(global-set-key (kbd "s-x") 'smex)   ; s-x == M-x

(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "M-z") 'undo)
(global-set-key (kbd "s-z") 'undo)

(global-set-key (kbd "C-x \\") 'align-regexp)
(global-set-key (kbd "M-/")    'hippie-expand)
(global-set-key (kbd "s-/")    'hippie-expand)

(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "C-s")   'isearch-forward-regexp)
(global-set-key (kbd "C-r")   'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; Jump to definition in file
(global-set-key (kbd "C-x C-i") 'ido-imenu)

(global-set-key (kbd "C-x M-f")   'ido-find-file-other-window)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)
(global-set-key (kbd "C-x f")     'recentf-ido-find-file)
(global-set-key (kbd "C-c y")     'bury-buffer)
(global-set-key (kbd "C-c r")     'revert-buffer)
(global-set-key (kbd "M-`")       'file-cache-minibuffer-complete)
(global-set-key (kbd "C-x C-b")   'ibuffer)
(global-set-key (kbd "C-s-f")     'ns-toggle-fullscreen)

(windmove-default-keybindings) ;; Shift+direction
(global-set-key (kbd "C-x O")   (lambda () (interactive) (other-window -1))) ;; back one
(global-set-key (kbd "C-x C-o") (lambda () (interactive) (other-window  2))) ;; forward two

(global-set-key (kbd "C-x m") 'eshell)
;; Start a new eshell even if one is active.
(global-set-key (kbd "C-x M") (lambda () (interactive) (eshell t)))

;; Help should search more than just commands
(global-set-key (kbd "C-h a") 'apropos)

;; Should be able to eval-and-replace anywhere.
(global-set-key (kbd "C-c e") 'eval-and-replace)

(global-set-key (kbd "C-c q") 'join-line)

(global-set-key [f5] '(lambda () (interactive) (revert-buffer nil t nil)))

;; This is a little hacky since VC doesn't support git add internally
(eval-after-load 'vc
  (define-key vc-prefix-map "i"
    '(lambda () (interactive)
       (if (not (eq 'Git (vc-backend buffer-file-name)))
           (vc-register)
         (shell-command (format "git add %s" buffer-file-name))
         (message "Staged changes.")))))

;; Activate occur easily inside isearch
(define-key isearch-mode-map (kbd "C-o")
  (lambda () (interactive)
    (let ((case-fold-search isearch-case-fold-search))
      (occur (if isearch-regexp isearch-string (regexp-quote isearch-string))))))

(global-set-key (kbd "s-s") 'save-buffer)

(global-set-key [(meta shift a)]       'ack)
(global-set-key [(meta super shift a)] 'ack-same)

(global-unset-key (kbd "C-;"))
(global-set-key (kbd "C-:") 'toggle-mac-option-modifier)

(add-hook 'ruby-mode-hook
	  (lambda ()
	    (define-key ruby-mode-map (kbd "C-;") 'insert-rocket)
	    ))

;; (define-key haskell-mode-map (kbd "C-;") 'insert-arrow)
(global-set-key (kbd "s-;") 'insert-ellipses)

;; (define-key *textmate-mode-map* [(meta shift l)] 'textmate-select-line)
;; (define-key *textmate-mode-map* [(meta \[)]      'textmate-shift-left)
;; (define-key *textmate-mode-map* [(meta \])]      'textmate-shift-right)
;; (define-key *textmate-mode-map* [(super t)]      'textmate-goto-file)

(global-set-key [(meta t)] 'peepopen-goto-file-gui)

(global-set-key (kbd "C-S-g") 'magit-status)

(global-set-key [\M-\S-up]   'move-text-up)
(global-set-key [\M-\S-down] 'move-text-down)

(global-set-key (kbd "C-c t") 'twittering-update-status-interactive)

(defun split-in-thirds ()
  "Split the window vertically into three segments."
  (interactive)
  (split-window-horizontally)
  (split-window-horizontally)
  (balance-windows)
  )
(global-set-key (kbd "C-x 6") 'split-in-thirds)

(setq echo-keystrokes 0.02)

(provide 'keybindings)
