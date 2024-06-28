# Name of the script to be installed
SCRIPT_NAME = openscad-cli
# Name of the file after installation
INSTALL_NAME = osc

install:
	@if cp $(SCRIPT_NAME) /usr/local/bin/$(INSTALL_NAME) 2>/dev/null; then \
		chmod +x /usr/local/bin/$(INSTALL_NAME); \
		echo "Copied $(SCRIPT_NAME) to /usr/local/bin/$(INSTALL_NAME)"; \
	elif echo $$PATH | grep -q "$$(realpath ~/.local/bin)"; then \
		if [ ! -d ~/.local/bin ]; then \
			echo "Creating directory ~/.local/bin"; \
			mkdir -p ~/.local/bin; \
		fi; \
		cp $(SCRIPT_NAME) ~/.local/bin/$(INSTALL_NAME); \
		chmod +x ~/.local/bin/$(INSTALL_NAME); \
		echo "Copied $(SCRIPT_NAME) to ~/.local/bin/$(INSTALL_NAME)"; \
	else \
		echo "Current PATH: $$PATH"; \
		echo "Realpath of ~/.local/bin: $$(realpath ~/.local/bin)"; \
		echo "Error: Could not copy $(SCRIPT_NAME) to /usr/local/bin/$(INSTALL_NAME) and ~/.local/bin is not in PATH."; \
	fi;
