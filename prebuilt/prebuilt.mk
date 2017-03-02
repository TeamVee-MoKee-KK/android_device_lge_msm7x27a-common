# Copyright 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

BLACKPLAYER_VERSION := 2.34
OPENCAMERA_VERSION := 1.37

ifneq (not_use_prebuilt, $(shell test -d $(TOP)/packages/apps/Eleven && echo not_use_prebuilt))
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/prebuilt/app/BlackPlayer/com.kodarkooperativet.blackplayerfree_$(BLACKPLAYER_VERSION).apk:system/app/BlackPlayer/BlackPlayer.apk
endif

ifneq (not_use_prebuilt, $(shell test -d $(TOP)/packages/apps/Camera2 && echo not_use_prebuilt))
PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/prebuilt/app/OpenCamera/net.sourceforge.opencamera_$(OPENCAMERA_VERSION).apk:system/app/OpenCamera/OpenCamera.apk
endif
