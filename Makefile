build:
	flatpak-builder --force-clean build-dir io.github.vinegarhq.Vinegar.yml
install:
	flatpak-builder --user --install --force-clean build-dir io.github.vinegarhq.Vinegar.yml
run:
	flatpak run io.github.vinegarhq.Vinegar
clean:
	rm -rf .flatpak-builder
	rm -rf build-dir
uninstall:
	flatpak remove io.github.vinegarhq.Vinegar --delete-data
all: build install

.PHONY: build install run clean uninstall
