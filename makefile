HARP=./node_modules/harp/bin/harp
SOURCE=source
OUTPUT=build

default: setup compile

setup:
	@./scripts/setup-environment-dev.sh

server:
	@$(HARP) server $(SOURCE)

compile:
	@$(HARP) compile $(SOURCE) $(OUTPUT)

publish: compile
	@cd build;git add .;git add -u .;git commit -m "Updated generated files";git push
