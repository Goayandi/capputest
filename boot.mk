$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo ----- Making recovery image ------
	perl device/xiaomi/cappu/repack-MT8173.pl -recovery $(recovery_kernel) out/target/product/cappu/recovery/etc $@ $(MKBOOTIMG)
	@echo ----- Made recovery image -------- $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)


$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	perl device/xiaomi/cappu/repack-MT8173.pl -boot $(recovery_kernel) out/target/product/cappu/root $@ $(MKBOOTIMG)
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
