#Device specific BLOBS 
rm -rf device/asus/X01BD
git clone https://github.com/asusmaxprom2/android_device_asus_X01BD.git -b cosmic device/asus/X01BD
rm -rf kernel/asus/sdm660
git clone https://github.com/asusmaxprom2/android_kernel_asus_X01BD -b arrow-9.x kernel/asus/sdm660
rm -rf vendor/asus/X01BD
git clone https://github.com/asusmaxprom2/android_vendor_asus_X01BD vendor/asus/X01BD

## My Cosmic Stuff
rm -rf fram*/base
git clone https://github.com/asusmaxprom2/platform_frameworks_base -b corona-release frameworks/base
#rm -rf packages/apps/Longshot
#git clone https://github.com/PixelExperience/packages_apps_Longshot packages/apps/Longshot
#rm -rf vendor/cos
#git clone https://github.com/asusmaxprom2/platform_vendor_cos.git -b corona-release vendor/cos

#Remove conflicts (Already defined in device tree) 
rm -rf device/asus/X01BD/data-ipa-cfg-mgr
rm -rf vendor/cos/packages/overlays/NoCutoutOverlay

## Build commands
.build/envsetup.sh
brunch X01BD



