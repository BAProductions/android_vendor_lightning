ifeq ($(DEVICE_SUPPORT_DJ), true)
	#Open Gapps PreLoaded Please Add To Each Device
	GAPPS_VARIANT := nano
	#Apps I Really Want In My Custom Rom
	GAPPS_PRODUCT_PACKAGES +=\
			FaceLock \
			libfilterpack_facedetect \
			Drive \
			GoogleCalendarSyncAdapter \
			GoogleContactsSyncAdapter \
			Maps \
			YouTube \
			talkback \
			CalculatorGoogle \
			GoogleBackupTransport \
			GoogleLoginService \
			GooglePartnerSetup \
			GoogleContacts \
			GooglePrintRecommendationService \
			GoogleServicesFramework \
			GoogleTTS \
			LatinImeGoogle \
			Music2 \
			PixelLauncherIcons \
			WebViewGoogle \
			Turbo \
			AndroidPlatformServices \
			Chrome \
			GoogleExtServices \
			GoogleFeedback \
			GoogleOneTimeInitializer \
			GooglePackageInstaller \
			Photos \
			SetupWizard \
			GCS \
			Phonesky \
			CalendarGooglePrebuilt \
			PrebuiltDeskClockGoogle \
			PrebuiltExchange3Google \
			PrebuiltGmail \
			PrebuiltGmsCore \
			PrebuiltGmsCoreInstantApps \
			GmsCoreSetupPrebuilt

	# Setting
	GAPPS_PACKAGE_OVERRIDES := \
			FaceLock \
			libfilterpack_facedetect \
			Drive \
			GoogleCalendarSyncAdapter \
			GoogleContactsSyncAdapter \
			Maps \
			YouTube \
			talkback \
			CalculatorGoogle \
			GoogleBackupTransport \
			GoogleLoginService \
			GooglePartnerSetup \
			GoogleContacts \
			GooglePrintRecommendationService \
			GoogleServicesFramework \
			GoogleTTS \
			LatinImeGoogle \
			Music2 \
			PixelLauncherIcons \
			WebViewGoogle \
			Turbo \
			AndroidPlatformServices \
			Chrome \
			GoogleExtServices \
			GoogleFeedback \
			GoogleOneTimeInitializer \
			GooglePackageInstaller \
			Photos \
			SetupWizard \
			GCS \
			Phonesky \
			CalendarGooglePrebuilt \
			PrebuiltDeskClockGoogle \
			PrebuiltExchange3Google \
			PrebuiltGmail \
			PrebuiltGmsCore \
			PrebuiltGmsCoreInstantApps \
			GmsCoreSetupPrebuilt
else
	GAPPS_VARIANT := mini
endif
#Add TagGoogle & Wallet If BOARD_HAVE_NFC :=true & DEVICE_SUPPORT_NFC :=true
ifeq ($(BOARD_HAVE_NFC), true)
	#Add Google NFC
	GAPPS_PRODUCT_PACKAGES += \
			TagGoogle

	GAPPS_PACKAGE_OVERRIDES := \
			TagGoogle
endif

#Add GoogleDialer CarrierServices & PrebuiltBugle If DEVICE_HAS_DATALINE :=true
ifeq ($(DEVICE_HAS_DATALINE), true)
	#Extra Apps I Really Want In My Custom Rom For Phone
	GAPPS_PRODUCT_PACKAGES += \
			GoogleDialer \
			CarrierServices \
			PrebuiltBugle \

	GAPPS_PACKAGE_OVERRIDES := \
			GoogleDialer \
			CarrierServices \
			PrebuiltBugle \
endif

#Add FitnessPrebuilt & Wallet If PRODUCT_CHARACTERISTICS :=phone
ifeq ($(PRODUCT_CHARACTERISTICS), phone)
	#Extra Apps I Really Want In My Custom Rom For Phone
	GAPPS_PRODUCT_PACKAGES += \
			FitnessPrebuilt \
			Wallet \

	GAPPS_PACKAGE_OVERRIDES := \
			FitnessPrebuilt \
			Wallet \
endif

$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)

GAPPS_FORCE_MATCHING_DPI := true
