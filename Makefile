default: check

check: 
	@echo "We're good!"

generate: README.md
	mkdir -p _site
	pandoc -o _site/index.html README.md

# This is stupid, but I don't want to make it more complex by detecting
# if pandoc is already installed or not, so just duplicate
generate-ci:
	mkdir -p _site
	./pandoc -o _site/index.html README.md
