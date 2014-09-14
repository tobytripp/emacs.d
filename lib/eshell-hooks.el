(defun toby/eshell-in-buffer-dir ()
  "Open eshell in the current buffer's directory"
  (interactive)
  (let ((dir default-directory))
    (let ((b (get-buffer eshell-buffer-name)))
      (unless b (eshell))
      )
    (display-buffer eshell-buffer-name t)
    (switch-to-buffer-other-window eshell-buffer-name)
    (end-of-buffer)
    (unless (equalp dir default-directory)
      (cd dir)
      (eshell-send-input)
      (end-of-buffer))))

(global-set-key (kbd "C-x C-m") 'toby/eshell-in-buffer-dir)

(add-hook 'eshell-mode-hook
          (lambda ()
            (defalias 'ff 'find-file)
            ))

(setq comint-buffer-maximum-size 10240)
(add-hook 'comint-output-filter-functions 'comint-truncate-buffer)
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

(setq multi-term-program "/bin/bash -l")
