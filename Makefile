CONFIG_PATH=~/.emacs.d
EMACS=/usr/local/bin/emacsclient
HTML_BRANCH=gh-pages
GIT=/usr/local/bin/git

all: config-site

config-site: $(CONFIG_PATH)/org-init/*.org $(CONFIG_PATH)/html
	$(GIT) checkout master
	$(EMACS) -e '(org-publish-project "emacs-config")'
	$(GIT) checkout $(HTML_BRANCH)
	mv $(CONFIG_PATH)/html/*.html $(CONFIG_PATH)/
	$(GIT) commit -am "Publish project updates"
	$(GIT) push
	$(GIT) checkout master

%/html:
	mkdir -p $*

.PHONY: all config-site
