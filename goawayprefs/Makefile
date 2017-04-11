ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = GoAwayprefs
GoAwayprefs_FILES = YFPRootListController.m
GoAwayprefs_INSTALL_PATH = /Library/PreferenceBundles
GoAwayprefs_FRAMEWORKS = UIKit
GoAwayprefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/GoAwayprefs.plist$(ECHO_END)
