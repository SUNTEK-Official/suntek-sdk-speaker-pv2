#########################################################################
#
# Embedded Application Build System
# All Rights Reserved 2017
# SUNTEK Embedded SDK
#########################################################################

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := lib
LOCAL_MODULE := MainApp
LOCAL_PATH := $(CURDIR)
LOCAL_IS_HOST_MODULE := 

#Դļ·
MSRCPATH = Source/MainApp
MSRCPATH += Source/MainApp/inc
MSRCPATH += Source/MainApp/inc/mbedtls
MSRCPATH += Source/MainApp/inc/MQTT

#ͷļ·
INCPATH = inc  
INCPATH += Source/MainApp
INCPATH += Source/MainApp/inc
INCPATH += Source/MainApp/inc/mbedtls
INCPATH += Source/MainApp/inc/MQTT

LOCAL_C_INCLUDES := $(addprefix -I , $(subst \,/,$(INCPATH)))

vpath
vpath %.h        $(subst \,/,$(INCPATH))
vpath %.c        $(subst \,/,$(MSRCPATH))
vpath %.s        $(subst \,/,$(MSRCPATH))

LOCAL_COMPILER_VARIABLES := DUMMY_MACRO
LOCAL_COMPILER_VARIABLES+=TEST_MACRO1
LOCAL_COMPILER_VARIABLES+=TEST_MACRO2

LOCAL_C_INCLUDES_I = -I ./inc -I ./inc/std_inc  
LOCAL_C_INCLUDES_I += -I ./Source/MainApp
LOCAL_C_INCLUDES_I += -I ./Source/MainApp/inc
LOCAL_C_INCLUDES_I += -I ./Source/MainApp/inc/mbedtls
LOCAL_C_INCLUDES_I += -I ./Source/MainApp/inc/MQTT
LOCAL_C_INCLUDES_I += -I ./Source/MainApp/src

SOURCES1 := $(foreach n,$(MSRCPATH),$(wildcard $(n)/*.c))
SOURCES := $(notdir $(SOURCES1))

include $(BUILD_STATIC_LIBRARY)
