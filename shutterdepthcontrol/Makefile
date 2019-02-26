include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ShutterDepthControl
ShutterDepthControl_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Camera"
SUBPROJECTS += shutterpref
include $(THEOS_MAKE_PATH)/aggregate.mk
