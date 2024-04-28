
NAME_APP:=

.PHONY: app_clean
app_clean:
	rm -rf build && \
	mkdir -p build

.PHONY: configure_vs
configure_vs:
	mkdir -p build && \
	cd build && \
	cmake -G "Visual Studio 17 2022" -T host=x64 -A x64 ..

.PHONY: configure_ninja
configure_ninja:
	mkdir -p build && \
	cd build && \
	cmake -G Ninja ..

.PHONY: configure_mac
configure_mac:
	mkdir -p buildXC && \
	cd buildXC && \
	cmake -G Xcode ..

.PHONY: build
build:
	cd build && \
	cmake --build . --config Debug --target ${ROOT_DIR}

.PHONY: run
run:
	cd build/ && ./${ROOT_DIR}
