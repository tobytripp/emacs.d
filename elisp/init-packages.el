;; -*- lexical-binding: t -*-
(require 'package)

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives '("org"   . "http://orgmode.org/elpa/") t))
(package-initialize)

(defun do-install-package (package &optional minimum-version no-refresh)
  "Install the given PACKAGE, optionally requiring a MINIMUM-VERSION.

If NO-REFRESH is non-nil, do not re-download the package list
before installation.  This prevents ininfinite recursion for
packages that cannot be found in any of the archives.

Source:
  https://github.com/purcell/emacs.d/blob/master/lisp/init-elpa.el"
  (interactive)
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
Optionally, require a MINIMUM-VERSION (see ‘version-to-list’) of PACKAGE.
If FUNCTION is specified, install or load PACKAGE lazily when
FUNCTION is called.  See ‘autoload'.
If FUNCTION is not specified, the package is installed
immediately and no other action is taken."
  (let* ((minver (cond
		  ((stringp minimum-version) (version-to-list minimum-version))
		  ((listp minimum-version)   minimum-version)
		  (minimum-version)))
	 (fname (cond
		 ((stringp func) (intern func))
		 ((and func (symbolp func)) func)
		 nil)))
    (if (package-installed-p package minver)
        (if fname
            (autoload fname (or loadfile (symbol-name fname)))
          (require package))
      (if fname
          (defalias fname
            (lambda (&rest args)
              "Install, require, and run command"
              (interactive)
              (fmakunbound fname)
              (do-install-package package minver)
              (with-demoted-errors "Failed to ‘require’ package: %S" (require package))
              (if (list args) (apply fname args)
                (apply fname))))
        (do-install-package package minver)))))

(provide 'init-packages)
