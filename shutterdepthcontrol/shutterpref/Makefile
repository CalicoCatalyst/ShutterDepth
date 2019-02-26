include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = shutterpref
shutterpref_FILES = stxRootListController.m
shutterpref_INSTALL_PATH = /Library/PreferenceBundles
shutterpref_FRAMEWORKS = UIKit
shutterpref_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/shutterpref.plist$(ECHO_END)
