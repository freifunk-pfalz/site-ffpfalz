USB_BASIC := \
	kmod-usb-core \
	kmod-usb2 \
	:xkmod-usb-hid

USB_NIC := \
  kmod-usb-net \
  kmod-usb-net-asix \
  kmod-usb-net-rtl8150 \
  kmod-usb-net-rtl8152 \
  kmod-usb-net-dm9601-ether

USB_WIFI := \
  kmod-rtl8192cu

DEFAULT_GLUON_RELEASE := 1.4.0~$(GLUON_BRANCH)_$(shell date '+%Y%m%d')

# Default priority for updates.
GLUON_PRIORITY ?= 0

GLUON_LANGS ?= en de

GLUON_ATH10K_MESH ?= 11s

GLUON_REGION := eu

GLUON_MULTIDOMAIN=1

GLUON_DEPRECATED ?= upgrade
