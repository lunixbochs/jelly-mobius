include theos/makefiles/common.mk

TWEAK_NAME = jelly
jelly_FILES = Tweak.xm
jelly_CFLAGS = -IJelly.dump/

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Jelly"
