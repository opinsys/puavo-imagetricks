
INSTALL = install
INSTALL_PROGRAM = $(INSTALL)

all:

install-dirs:
	mkdir -p $(DESTDIR)/usr/share/initramfs-tools/scripts/init-bottom

install: install-dirs
	$(INSTALL_PROGRAM) \
		-t $(DESTDIR)/usr/share/initramfs-tools/scripts/init-bottom \
		puavo-image

install: install-dirs
	$(INSTALL_PROGRAM) \
		-t $(DESTDIR)/usr/share/initramfs-tools/scripts/init-bottom \
		puavo-image

