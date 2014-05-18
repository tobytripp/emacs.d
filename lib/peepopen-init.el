(require 'peepopen)
(textmate-mode)

(defun peepopen-goto-file-gui ()
  "Uses external GUI app to quickly jump to a file in the project."
  (interactive)
  (defun string-join (separator strings)
    "Join all STRINGS using SEPARATOR."
    (mapconcat 'identity strings separator))
  (let ((root (textmate-project-root)))
    (when (null root)
      (error
       (concat
        "Can't find a suitable project root ("
        (string-join " " *textmate-project-roots*)
        ")")))
    (shell-command-to-string
     (format "open 'peepopen://%s?editor=%s'"
             (expand-file-name root)
             "emacsclient"))))
