.PHONY: install uninstall

INSTALL_DIR:=~/Library/Services
WORKFLOW_NAME:=Trust This App.workflow

install:
	cp -R $(WORKFLOW_NAME) $(INSTALL_DIR)

uninstall:
	rm -rf $(INSTALL_DIR)/$(WORKFLOW_NAME)
