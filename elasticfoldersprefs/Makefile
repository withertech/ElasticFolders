include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ElasticFoldersPrefs

ElasticFoldersPrefs_FILES = EFARootListController.m EFARequiredListController.m
ElasticFoldersPrefs_INSTALL_PATH = /Library/PreferenceBundles
ElasticFoldersPrefs_FRAMEWORKS = UIKit
ElasticFoldersPrefs_PRIVATE_FRAMEWORKS = Preferences
ElasticFoldersPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/ElasticFoldersPrefs.plist$(ECHO_END)
