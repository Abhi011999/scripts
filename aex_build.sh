echo -e "Exporting Variables...\n"
export USE_CCACHE=1

echo -e "Setting up build environment...\n"
. build/envsetup.sh
echo " "

echo -e "Making Lunch...\n"
lunch aosp_kenzo-userdebug
echo " "

echo -e "Eating Lunch...\n"
mka aex -j$(nproc --all) | tee log.txt
