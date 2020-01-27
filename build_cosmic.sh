#Device specific BLOBS 
rm -rf device/asus/X01BD
git clone https://github.com/X01BD-Android-Q/android_device_asus_X01BD.git -b cos device/asus/X01BD
rm -rf kernel/asus/sdm660
git clone https://github.com/ZyCromerZ/android_kernel_asus_X01BD -b QuantumKiller/20200120/VIPN-2 kernel/asus/sdm660
rm -rf vendor/asus/X01BD
git clone https://github.com/X01BD-Android-Q/android_vendor_asus_X01BD.git -b q vendor/asus/X01BD

#Clang
#rm -rf prebuilts/clang/host/linux-x86
#git clone https://github.com/SonalSingh18/prebuilts_clang_host_linux-x86_clang-10.0.1.git prebuilts/clang/host/linux-x86/clang-10.0.1

#Device Settings for Doze
#rm -rf packages/resources/devicesettings
#git clone https://github.com/LineageOS/android_packages_resources_devicesettings.git packages/resources/devicesettings

#hals
rm -rf hardware/qcom/media
#git clone https://github.com/SonalSingh18/Q-Hals.git -b media-pa hardware/qcom/media/msm8998
git clone https://github.com/LineageOS/android_hardware_qcom_media.git -b lineage-17.0-caf-msm8998 hardware/qcom/media/msm8998
rm -rf hardware/qcom/audio
#git clone https://github.com/SonalSingh18/Q-Hals.git -b audio-pa hardware/qcom/audio/msm8998
git clone https://github.com/LineageOS/android_hardware_qcom_audio.git -b lineage-17.0-caf-msm8998 hardware/qcom/audio/msm8998
rm -rf hardware/qcom/display
git clone https://github.com/LineageOS/android_hardware_qcom_display.git -b lineage-17.0-caf-msm8998 hardware/qcom/display/msm8998
#rm -rf hardware/qcom/wlan/msm8998
#git clone https://github.com/SonalSingh18/Q-Hals.git -b wlan-caf hardware/qcom/wlan/msm8998
## My Cosmic Stuff
#rm -rf fram*/base
#git clone https://github.com/asusmaxprom2/platform_frameworks_base -b corona-release frameworks/base
#rm -rf packages/apps/Longshot
#git clone https://github.com/PixelExperience/packages_apps_Longshot packages/apps/Longshot
#rm -rf vendor/cos
#git clone https://github.com/asusmaxprom2/platform_vendor_cos.git -b corona-release vendor/cos

#Remove conflicts (Already defined in device tree) 
#rm -rf device/asus/X01BD/data-ipa-cfg-mgr
rm -rf vendor/cos/packages/overlays/NoCutoutOverlay

#Wireless ANT 
https://github.com/LineageOS/android_external_ant-wireless_antradio-library.git external/ant-wireless/antradio-library

## Build commands
. build/envsetup.sh
lunch cos_X01BD-userdebug
brunch X01BD



