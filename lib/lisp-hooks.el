(require 'parenface)
(defun byte-compile-current-buffer ()
  "`byte-compile' current buffer if it's emacs-lisp-mode and
compiled file exists."
  (interactive)
  (when (and (eq major-mode 'emacs-lisp-mode)
             (file-exists-p (byte-compile-dest-file buffer-file-name)))
    (byte-compile-file buffer-file-name)))

(add-hook 'emacs-lisp-mode-hook
          (lambda ()
            (add-hook 'after-save-hook 'byte-compile-current-buffer)
            ))
;; (set-face-foreground 'paren-face "blue4")
