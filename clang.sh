#Device specific BLOBS 
rm -rf device/asus/X01BD
git clone https://github.com/asusmaxprom2/android_device_asus_X01BD.git -b cosmic-clang device/asus/X01BD
rm -rf kernel/asus/sdm660
git clone https://github.com/wahyu17/Aegis-X01BD.git -b Aegis-Pie kernel/asus/sdm660
rm -rf vendor/asus/X01BD
git clone https://github.com/asusmaxprom2/android_vendor_asus_X01BD vendor/asus/X01BD

## My Cosmic Stuff
rm -rf fram*/base
git clone https://github.com/asusmaxprom2/platform_frameworks_base -b corona-release frameworks/base
rm -rf packages/apps/Longshot
git clone https://github.com/asusmaxprom2/platform_packages_apps_Longshot.git packages/apps/Longshot
rm -rf vendor/cos
git clone https://github.com/asusmaxprom2/platform_vendor_cos.git -b corona-release vendor/cos
rm -rf device/custom/sepolicy
git clone https://github.com/asusmaxprom2/device_custom_sepolicy -b corona-release device/custom/sepolicy
#rm -rf packages/apps/Galaxy
#git clone https://github.com/asusmaxprom2/platform_packages_apps_Galaxy.git -b corona-release packages/apps/Galaxy

#Remove conflicts (Already defined in device tree) 
rm -rf device/asus/X01BD/data-ipa-cfg-mgr
rm -rf vendor/cos/packages/overlays/NoCutoutOverlay


## Build commands
. build/envsetup.sh
brunch X01BD
