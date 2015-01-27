(defun my-update-cursor ()
  (setq cursor-type (if (or god-local-mode buffer-read-only) 'bar 'box)))

;; From: github.com/chrisdone/god-mode/blob/master/README.md
;; 
;; ## Mapping
;;
;; This library defines the following mapping:
;;
;; * All commands are assumed to be `C-<something>` unless otherwise
;;    indicated. Examples:
;;
;;    * `a`    -> `C-a`
;;    * `s`    -> `C-s`
;;    * `akny` -> `C-a C-k C-n C-y`
;;    * `xs`   -> `C-x C-s`
;;    * `x s`  -> `C-x s`
;;
;;    Note the use of space to produce `C-x s`.
;;
;; * `g` is a special key to indicate `M-<something>`. This means that
;;    there is no way to write `C-g` in this mode, you must therefore
;;    type `C-g` directly. Examples:
;;
;;    * `gf` -> `M-f`
;;    * `gx` -> `M-x`
;;
;; * `G` is a special key to indicate `C-M-<something>`. Example:
;;
;;    * `Gx` -> `C-M-x`
;;
;; * Digit arguments:
;;
;;   * `12f` -> `M-12 C-f`
;;
;; * Repetition (with `.` keybinding):
;;
;;   * `gf..` -> `M-f M-f M-f`
;;
;; * Universal boolean argument:
;;
;;   * `uco` -> `C-u C-c C-o`
;;
(eval-after-load 'god-mode
  '(progn
     (global-unset-key [escape])
     (global-set-key (kbd "<escape>") 'god-local-mode)

     (global-set-key (kbd "C-x C-1") 'delete-other-windows)
     (global-set-key (kbd "C-x C-2") 'split-window-below)
     (global-set-key (kbd "C-x C-3") 'split-window-right)
     (global-set-key (kbd "C-x C-0") 'delete-window)
     (global-set-key (kbd "C-x C-o") 'other-window)

     (define-key god-local-mode-map (kbd "C-<return>") 'god-local-mode)

     (add-hook 'god-mode-enabled-hook  'my-update-cursor)
     (add-hook 'god-mode-disabled-hook 'my-update-cursor)
     ))

(provide 'god-init)
;;; god-init ends here
