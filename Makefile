TARGET = iphone:clang:latest:12.4
ARCHS = arm64 #arm64e

DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = qxangeL1999

qxangeL1999_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
qxangeL1999_CFLAGS = -fobjc-arc
qxangeL1999_FILES = Tweak.x
qxangeL1999_FRAMEWORKS = UIKit


include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
