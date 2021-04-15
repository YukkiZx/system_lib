#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:16855968:0801620acdcf6115de1594f2d59ee70cdbf7e28c; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9087904:203629757ee4e45068301e0fc525135e9ea063ba EMMC:/dev/block/platform/bootdevice/by-name/recovery 0801620acdcf6115de1594f2d59ee70cdbf7e28c 16855968 203629757ee4e45068301e0fc525135e9ea063ba:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
