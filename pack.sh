
./mkbootimg \
      --kernel build/arch/arm64/boot/Image.gz \
      --ramdisk ramdisk.gz \
      --cmdline "console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=24M@0-0xffffffff rcupdate.rcu_expedited=1" \
      --base 0x80000000 \
      --pagesize 4096 \
      --dt build/arch/arm64/boot/dtb.img \
      --ramdisk_offset 0x02200000 \
      --tags_offset 0x02000000 \
      --output boot.img

tar -cvf boot.tar boot.img


