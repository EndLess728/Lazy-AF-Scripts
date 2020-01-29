#Device specific BLOBS 
rm -rf device/asus/X01BD
git clone https://github.com/asusmaxprom2/android_device_asus_X01BD.git -b cosmic device/asus/X01BD
rm -rf kernel/asus/sdm660
git clone https://github.com/ZyCromerZ/android_kernel_asus_X01BD -b QuantumKiller/20200120/VIPN-2 kernel/asus/sdm660
rm -rf vendor/asus/X01BD
git clone https://github.com/asusmaxprom2/proprietary_vendor_asus_X01BD.git -b lineage-17.0 vendor/asus/X01BD

#Clang
#rm -rf prebuilts/clang/host/linux-x86
#git clone https://github.com/SonalSingh18/prebuilts_clang_host_linux-x86_clang-10.0.1.git prebuilts/clang/host/linux-x86/clang-10.0.1

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

#Remove conflicts (Already defined in device tree) 
rm -rf device/asus/X01BD/data-ipa-cfg-mgr
rm -rf vendor/cos/packages/overlays/NoCutoutOverlay
#rm -rf vendor/qcom/opensource/data-ipa-cfg-mgr

#Add Wlan Hals from AOSPA
#rm -rf hardware/qcom/wlan
#git clone https://github.com/AOSPA/android_hardware_qcom_wlan.git hardware/qcom/wlan

#Wireless ANT 
git clone https://github.com/LineageOS/android_external_ant-wireless_antradio-library.git external/ant-wireless/antradio-library

## Build commands
. build/envsetup.sh
lunch cos_X01BD-userdebug
brunch X01BD



