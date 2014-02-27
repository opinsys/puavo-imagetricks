
# puavo-image

Essentials for Puavo Images.

## Make read-only images writable

By default puavo-image overlays the root with tmpfs which causes writes to go
into the memory. All changes to root are lost on shutdown or reboot.

If the device has an images partition it possible persist writes to a delta
directory on that partition using `puavo.img.dev=*` and `puavo.img.delta=*`
kernel parameters. `puavo.img.dev` is a path to the images block device which
will be mounted to `/images`. `puavo.img.delta` must be a string describing the
image delta.

Example:

    puavo.img.dev=/dev/mapper/puavo-images puavo.img.delta=epelischanges loop=image.img

Deltas are always unique to the current image. Image name in the `loop`
parameter is used as the identifier.

