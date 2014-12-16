default: check

check: 
	@echo "We're good!"

generate: README.md
	mkdir _site
	pandoc -o _site/index.html README.md
