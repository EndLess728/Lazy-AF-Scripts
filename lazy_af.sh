#Device specific BLOBS 
rm -rf device/asus/X01BD
git clone https://github.com/EndLess728/device_asus_X01BD.git -b cosmic device/asus/X01BD
rm -rf kernel/asus/sdm660
git clone https://github.com/EndLess728/Etherious-EAS.git -b Etherious-HMP kernel/asus/sdm660
rm -rf vendor/asus/X01BD
git clone https://github.com/EndLess728/android_vendor_asus_X01BD.git -b 9.0 vendor/asus/X01BD
