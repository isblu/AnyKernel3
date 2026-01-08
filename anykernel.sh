# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=EOL-Kernel
kernel.revision=4.14
kernel.made=isblu @ LizzyGobbler
anykernel3.made=osm0sis @ xda-developers
kernel.compiler=Proton Clang 13.0.0
message.word=Thank you for installing EOL-Kernel!
do.devicecheck=1
do.cleanup=1
do.modules=0
do.systemless=1
device.name1=surya
device.name2=karna
device.name3=
supported.versions=14-16
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

# BLOCK PARTITION PATH (This fixes your error)
block=/dev/block/bootdevice/by-name/boot
is_slot_device=0
ramdisk_compression=auto
patch_vbmeta_flag=auto

# ---------------------

# Import the backend installer logic
. tools/ak3-core.sh

# --- INSTALLATION ---

# Boot Image Installation
dump_boot;

# (Optional) If you have dtb/dtbo, usually handled here, 
# but dump_boot handles the main splitting.

write_boot;
# ---------------------