(autoload 'centered-cursor-mode "centered-cursor-mode")

(defun toby/playback-current-kill ()
  "Slowly replay the text in the head of the kill-ring"
  (interactive)
  (save-excursion
    (let ((wait 0.1)
          (text (current-kill 0)))
      (dotimes (i (length text))
        (insert (aref text i))
        (when (read-char (number-to-string (- (length text) i)) nil wait)
          (if wait
              (set 'wait nil)
            (set 'wait 0.1))))
      )))

(defun toby/replay-region ()
  "Kill region and replay slowly"
  (interactive)
  (save-excursion
    (when (> (point) (mark)) (exchange-point-and-mark))
    (deactivate-mark)
    (kill-region (point) (mark t))
    (toby/playback-current-kill)))

(provide 'plaback)
