.PHONY: all render preview clean help deploy

# Default target
all: render

# Render to _site/
render:
	quarto render index.qmd

# Preview with live reload
preview:
	quarto preview index.qmd

# Build for deployment (alias for render)
deploy: render

# Clean output
clean:
	rm -rf _site .quarto

# Help
help:
	@echo "Usage:"
	@echo "  make          - Build to _site/"
	@echo "  make preview  - Live preview with auto-reload"
	@echo "  make deploy   - Build to _site/ for deployment"
	@echo "  make clean    - Remove output files"
	@echo ""
	@echo "Output files in _site/:"
	@echo "  index.html  - HTML page with TOC"
	@echo "  slides.html - Revealjs presentation"
