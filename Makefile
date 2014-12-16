default: check

check: 
	@echo "We're good!"

generate: README.md
	pandoc -o index.html README.md
