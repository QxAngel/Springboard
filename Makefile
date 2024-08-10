TARGET = iphone:clang:latest:12.4
ARCHS= arm64

DEBUG = 0
FINALPACKAGE = 1

export THEOS_PACKAGE_SCHEME = rootless

ifeq ($(THEOS_PACKAGE_SCHEME) , rootful)
    THEOS_PACKAGE_DIR = DEBs/rootful
else ifeq ($(THEOS_PACKAGE_SCHEME) , rootless)
    THEOS_PACKAGE_DIR =DEBs/rootless
else
THEOS_PACKAGE_DIR = DEBs
endif

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = qxangeL1999

qxangeL1999_CFLAGS = -fobjc-arc
qxangeL1999_FILES = Tweak.xm
qxangeL1999_FRAMEWORKS = UIKit


include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
