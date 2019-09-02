#Device specific BLOBS 
rm -rf device/asus/X01BD
git clone https://github.com/asusmaxprom2/android_device_asus_X01BD.git -b beast device/asus/X01BD
rm -rf kernel/asus/sdm660
git clone https://github.com/asusmaxprom2/android_kernel_asus_X01BD -b arrow-9.x kernel/asus/sdm660
rm -rf vendor/asus/X01BD
git clone https://github.com/asusmaxprom2/android_vendor_asus_X01BD vendor/asus/X01BD


#Remove conflicts (Already defined in device tree) 
#rm -rf vendor/cos/packages/overlays/NoCutoutOverlay
