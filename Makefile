build:
	flatpak-builder --force-clean build-dir com.github.vinegar.yml
install:
	flatpak-builder --user --install --force-clean build-dir com.github.vinegar.yml
run:
	flatpak run com.github.vinegar
clean:
	rm -rf .flatpak-builder
	rm -rf build-dir
uninstall:
	flatpak remove com.github.vinegar --delete-data
.PHONY: build install run clean uninstall
