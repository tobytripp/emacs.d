(require 'package)

;; (add-to-list 'package-archives
;;              '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(defun require-package (package &optional minimum-version no-refresh)
  "Install the given PACKAGE, optionally requiring a MINIMUM-VERSION.

If NO-REFRESH is non-nil, do not re-download the package list
before installation.  This prevents ininfinite recursion for
packages that cannot be found in any of the archives.

Source:
  https://github.com/purcell/emacs.d/blob/master/lisp/init-elpa.el"
  (if (package-installed-p package minimum-version)
      t
    (condition-case package-error
        (if (or (assoc package package-archive-contents) no-refresh)
            (package-install package)
          (progn
            (package-refresh-contents)
            (require-package package minimum-version t)))
      (error (message "Could not install package %s: %s"
                      package package-error)))))

(package-initialize)

(require-package 'cl-lib)
(require 'cl-lib)

(provide 'init-packages)
