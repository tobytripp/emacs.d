CONFIG_PATH=~/.emacs.d
EMACS=/usr/local/bin/emacsclient
HTML_BRANCH=gh-pages
GIT=/usr/local/bin/git
DL_PATH=$(CONFIG_PATH)/tmp/

all: config-site

install:
	brew cask install emacs # --with-gnutls --with-cocoa --with-librsvg

icons: $(DL_PATH)/EmacsIcon4.icns
	cp $< /Applications/Emacs.app/Contents/Resources/Emacs.icns

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

$(DL_PATH)/EmacsIcon4.icns:
	curl -L https://github.com/emacsfodder/emacs-icons-project/raw/master/EmacsIcon4.icns \
	  -o $@
clean:
	rm -rf $(CONFIG_PATH)/elpa \
           $(CONFIG_PATH)/org-init/*.el \
           $(CONFIG_PATH)/org-init/*.elc \
           $(CONFIG_PATH)/elisp/*.elc

clobber: clean
	brew cask uninstall emacs || \
	brew uninstall --ignore-dependencies --force emacs

.PHONY: all config-site clean install clobber
