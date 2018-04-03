(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org"   . "http://orgmode.org/elpa/") t)
(package-initialize)

(defun do-install-package (package &optional minimum-version no-refresh)
  "Install the given PACKAGE, optionally requiring a MINIMUM-VERSION.

If NO-REFRESH is non-nil, do not re-download the package list
before installation.  This prevents ininfinite recursion for
packages that cannot be found in any of the archives.

Source:
  https://github.com/purcell/emacs.d/blob/master/lisp/init-elpa.el"
  (if (package-installed-p package minimum-version) t
    (condition-case package-error
        (if (or (assoc package package-archive-contents) no-refresh)
            (package-install package)
          (progn
            (package-refresh-contents)
            (do-install-package package minimum-version t)))
      (error (message "Could not install package %s: %s"
                      package package-error)))))

(defun require-package (package &optional minimum-version func loadfile)
  "Install the given PACKAGE.
Optionally, require a MINIMUM-VERSION of PACKAGE.
If FUNCTION is specified, install or load PACKAGE lazily when
FUNCTION is called.  See ‘autoload'.  If FUNCTION is not
specified, PACKAGE is used."
  (let* ((minver (cond
		  ((stringp minimum-version) (version-to-list minimum-version))
		  ((listp minimum-version)   minimum-version)
		  (minimum-version)))
	 (fname (cond
		 ((stringp func) (intern func))
		 ((and func (symbolp func)) func)
		 (package))))
    (if (package-installed-p package minver)
        (autoload fname (or loadfile (symbol-name fname)))
      (defalias fname
        (lambda ()
          (do-install-package package minver)
          (fmakunbound fname)
          (require package))))))

(require-package 'yaml-mode)
(provide 'init-packages)
