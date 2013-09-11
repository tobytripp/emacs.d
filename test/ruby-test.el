(require 'ert)

(defun toby/run-tests () "Run regression tests"
  (interactive)
  (ert "^toby/tests/"))


(deftest toby/tests/ruby-mode-hooks ()
  "Make sure loading ruby-mode doesn't throw an error"
  (with-temp-buffer
    (insert "class Foo\ndef bar() end\nend\n")
    (ruby-mode)
    ))

(deftest toby/tests/ruby-snippets ()
  "Check that ruby snippets are loaded and can be run"
  (with-temp-buffer
    (ruby-mode)

    (goto-char (point-min))
    (should (not (looking-at "class")))

    (insert "cls")
    (yas/expand)

    (goto-char (point-min))
    (should (looking-at "class "))
    ))
