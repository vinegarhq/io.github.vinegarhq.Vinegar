build:
	flatpak-builder --force-clean build-dir com.github.vinegar.yml
install:
	flatpak-builder --user --install --force-clean build-dir com.github.vinegar.yml
run:
	flatpak run com.github.vinegar
clean:
	flatpak remove com.github.vinegar --delete-data
	rm -rf build-dir
