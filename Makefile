
INSTALL = install
INSTALL_PROGRAM = $(INSTALL)

all:

install-dirs:
	mkdir -p $(DESTDIR)/usr/share/initramfs-tools/scripts/init-bottom
	mkdir -p $(DESTDIR)/usr/share/initramfs-tools/hooks

install: install-dirs
	$(INSTALL_PROGRAM) \
		-t $(DESTDIR)/usr/share/initramfs-tools/scripts/init-bottom \
		initramfs-tools/scripts/init-bottom/puavo-image

	$(INSTALL_PROGRAM) \
		-t $(DESTDIR)/usr/share/initramfs-tools/hooks \
		initramfs-tools/hooks/puavo-image

