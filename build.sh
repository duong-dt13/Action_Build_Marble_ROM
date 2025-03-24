echo "
Starting build HyperZK LITE ...
"

# Remove apps
app_list=(
  "Email"
  "Health"
  "Joyose"
  "LatinImeGoogle"
  "MiDrive"
  "MiGameService"
  "MiSound"
  "MiuiFrequentPhrase"
  "MiuiScreenshot"
  "MiuiSystemUIPlugin"
  "PaymentService"
  "ThemeManager"
  "Updater"
  "XiaomiEUInject"
  "DownloadProviderUi"
  "MiBrowser"
  "MiMover"
  "MiService"
  "MiuiAod"
  "MiuiHome"
  "MiuiPackageInstaller"
  "Music"
  "PersonalAssistant"
  "SecurityCenter"
  "SuperWallpaperEarth"
  "SuperWallpaperMars"
  "SuperWallpaperSaturn"
  "SuperWallpaperGeometry"
  "SuperWallpaperMoon"
  "SuperWallpaperSnowmountain"
)

for app in "${app_list[@]}"; do
  find "$DNA_DRO" -type d -name "$app" -delete
done
echo "Remove conflict apps done !
"

# Add ZK Lite features
bash_dir=$(dirname "$0")
cp -rf "$bash_dir/HyperZK_LITE_V1/product" "$DNA_DRO"
cp -rf "$bash_dir/HyperZK_LITE_V1/system" "$DNA_DRO"
cp -rf "$bash_dir/HyperZK_LITE_V1/system_ext" "$DNA_DRO"
cp -rf "$bash_dir/HyperZK_LITE_V1/vendor" "$DNA_DRO"

cat "$bash_dir/HyperZK_LITE_V1/system.prop" >> "$DNA_DRO/system/system/build.prop"
cat "$bash_dir/HyperZK_LITE_V1/vendor.prop" >> "$DNA_DRO/vendor/build.prop"
cat "$bash_dir/HyperZK_LITE_V1/system_1.rc" >> "$DNA_DRO/system/system/etc/init/hw/init.rc"
cat "$bash_dir/HyperZK_LITE_V1/system_2.rc" >> "$DNA_DRO/system/system/etc/init/hw/init.usb.rc"
cat "$bash_dir/HyperZK_LITE_V1/vendor.rc" >> "$DNA_DRO/vendor/etc/init/hw/init.qcom.rc"

cp -rf "$bash_dir/HyperZK_LITE_V1/thermal.conf" "$DNA_DRO/vendor/etc/thermal-tgame.conf"
cp -rf "$bash_dir/HyperZK_LITE_V1/thermal.conf" "$DNA_DRO/vendor/etc/thermal-india-tgame.conf"

echo "Add HyperZK LITE features done !
"