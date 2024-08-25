NAME = bm
BIN = $(NAME).filter.dpi
DILLO_DIR = ~/.dillo
DPI_DIR = $(DILLO_DIR)/dpi/$(NAME)

all:
	@echo "Use 'make install' to install"
	@echo "Use 'make uninstall' to uninstall"

link: $(BIN)
	mkdir -p $(DPI_DIR)
	ln -frs $(BIN) $(DPI_DIR)
	dpidc stop || true

install: $(BIN)
	mkdir -p $(DPI_DIR)
	cp -f $(BIN) $(DPI_DIR)
	dpidc stop || true

uninstall: $(BIN)
	rm -f $(DPI_DIR)/$(BIN)

.PHONY:
	all link install uninstall
