build:
	flatpak-builder --ccache --force-clean build-dir io.github.vinegarhq.Vinegar.yml
	flatpak-builder --force-clean --user --install build-dir io.github.vinegarhq.Vinegar.yml
run:
	flatpak run io.github.vinegarhq.Vinegar
clean:
	rm -rf .flatpak-builder
	rm -rf build-dir
uninstall:
	flatpak remove io.github.vinegarhq.Vinegar --delete-data

.PHONY: build run clean uninstall
