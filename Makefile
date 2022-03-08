TARGET := iphone:clang:latest:13.0
INSTALL_TARGET_PROCESSES = SpringBoard

BUNDLE_NAME = Zira

Zira_FILES = ZiraContentModuleVC.m ZiraModule.m ZiraVC.m
Zira_CFLAGS = -fobjc-arc
Zira_LIBRARIES = gcuniversal
Zira_PRIVATE_FRAMEWORKS = ControlCenterUIKit Preferences
Zira_INSTALL_PATH = /Library/ControlCenter/Bundles/
Zira_BUNDLE_EXTENSION = bundle

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/bundle.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
