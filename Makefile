include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ElasticFolderAnimations
ElasticFolderAnimations_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += elasticfoldersprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
