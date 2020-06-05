#Device specific BLOBS 
rm -rf device/asus/X01BD
git clone https://github.com/EndLess728/android_device_asus_X01BD-1 -b corvus device/asus/X01BD
rm -rf kernel/asus/sdm660
git clone https://github.com/MyTestLobby/Etherious -b ten kernel/asus/sdm660
rm -rf vendor/asus/X01BD
git clone https://github.com/EndLess728/android_vendor_asus_X01BD -b ten vendor/asus/X01BD

#Track Dirac
#rm -rf packages/apps/Dirac
#git clone https://github.com/asusmaxprom2/android_packages_apps_Dirac.git packages/apps/Dirac

#Track Clang from Havoc
#rm -rf prebuilts/clang/host/linux-x86
#git clone https://github.com/SonalSingh18/prebuilts_clang_host_linux-x86_clang-10.0.4.git prebuilts/clang/host/linux-x86/clang-10.0.4

#rm -rf packages/apps/Snap
#git clone https://github.com/Havoc-OS/android_packages_apps_Snap.git -b ten packages/apps/Snap

#rm -rf packages/apps/Messaging
#git clone https://github.com/LineageOS/android_packages_apps_Messaging.git packages/apps/Messaging

#Fix bootanimation
rm -rf vendor/themes
git clone https://github.com/MyTestLobby/android_vendor_themes vendor/themes

#Remove conflicts (Already defined in device tree) 
#rm -rf device/asus/X01BD/data-ipa-cfg-mgr
rm -rf vendor/themes/overlays/NoCutoutOverlay


## Build commands
. build/envsetup.sh
lunch du_X01BD-userdebug
make corvus
