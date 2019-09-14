#Device specific BLOBS 
rm -rf device/asus/X01BD
git clone https://github.com/asusmaxprom2/android_device_asus_X01BD.git -b durex-clang device/asus/X01BD
rm -rf kernel/asus/sdm660
git clone https://github.com/wahyu17/Aegis-X01BD.git -b Aegis-Pie kernel/asus/sdm660
rm -rf vendor/asus/X01BD
git clone https://github.com/asusmaxprom2/android_vendor_asus_X01BD vendor/asus/X01BD

#Track Dirac
rm -rf packages/apps/Dirac
git clone https://github.com/asusmaxprom2/android_packages_apps_Dirac.git packages/apps/Dirac

#Track Clang from Havoc
rm -rf prebuilts/clang/host/linux-x86
git clone https://github.com/Havoc-OS/android_prebuilts_clang_host_linux-x86 prebuilts/clang/host/linux-x86

#Remove conflicts (Already defined in device tree) 
#rm -rf device/asus/X01BD/data-ipa-cfg-mgr
#rm -rf vendor/cos/packages/overlays/NoCutoutOverlay


## Build commands
. build/envsetup.sh
brunch du_X01BD-userdebug
