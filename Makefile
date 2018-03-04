CONFIG_PATH=~/.emacs.d
EMACS=/usr/local/bin/emacsclient

all: config-site

config-site: $(CONFIG_PATH)/org-init/*.org $(CONFIG_PATH)/html
	$(EMACS) -e '(org-publish-project "emacs-config")'

%/html:
	mkdir -p $*

.PHONY: all config-site
