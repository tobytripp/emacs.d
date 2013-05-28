(toby/require-package 'yasnippet)
(require 'yasnippet)
(yas/global-mode 1)

(setq yas/trigger-key (kbd "C-c /"))

(setq toby/snippets-dir
      (expand-file-name "snippets" dotfiles-dir))
(add-to-list 'yas/root-directory toby/snippets-dir)

;; http://stackoverflow.com/questions/10211730/insert-yasnippet-by-name
(defun yas/insert-by-name (name)
  (flet ((dummy-prompt (prompt choices &optional display-fn)
                       (declare (ignore prompt))
                       (or (find name choices :key display-fn :test #'string=)
                           (throw 'notfound nil))))
    (let ((yas-prompt-functions '(dummy-prompt)))
      (catch 'notfound
        (yas-insert-snippet t))))
  )

;; (yas/insert-by-name "def method ...")

(defun ruby/extract-method (region-begin region-end)
  "Extract the current region into a new method"
  (interactive "r")
;;  (message "Region starts: %d, end at: %d" region-begin region-end)
  (kill-region region-begin region-end)
  ;; Need to insert a call to the method and move the point to outside
  ;; the current block somehow
  (yas-expand-snippet "def ${1:method}(${ *args})\n`(current-kill 0)`\nend")
  )
