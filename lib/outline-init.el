(eval-after-load 'outline
  '(progn
     (require 'outline-magic)
     (define-key outline-minor-mode-map (kbd "C-c TAB") 'outline-cycle)))
