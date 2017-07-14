#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio.offload.min.duration.secs=30 \
    audio.offload.video=true \
    audio.deep_buffer.media=true \
    persist.vendor.audio.fluence.voicecall=true \
    persist.vendor.audio.fluence.speaker=true \
    persist.vendor.audio.fluence.voicerec=false \
    persist.vendor.audio.speaker.prot.enable=false \
    persist.vendor.bt.enable.splita2dp=false \
    persist.vendor.audio.hw.binder.size_kbyte=1024 \
    ro.config.media_vol_steps=15 \
    ro.config.vc_call_vol_steps=6 \
    ro.vendor.audio.sdk.fluencetype=fluence \
    ro.vendor.audio.sdk.ssr=false \
    vendor.audio_hal.period_size=240 \
    vendor.audio.hw.aac.encoder=true \
    vendor.audio.offload.buffer.size.kb=64 \
    vendor.audio.offload.gapless.enabled=true \
    vendor.audio.playback.mch.downsample=true \
    vendor.audio.offload.multiple.enabled=false \
    vendor.audio.offload.passthrough=false \
    vendor.audio.offload.track.enable=true \
    vendor.audio.parser.ip.buffer.size=262144 \
    vendor.audio.safx.pbe.enabled=true \
    vendor.tunnel.audio.encode=false \
    ro.af.client_heap_size_kbyte=7168 \
    vendor.voice.conc.fallbackpath=deep-buffer \
    vendor.voice.path.for.pcm.voip=true \
    vendor.voice.voip.conc.disabled=true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    use.voice.path.for.pcm.voip=true
    voice.voip.conc.disabled=true

# Audio dynamic feature flags
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.audio.feature.a2dp_offload.enable=false \
    vendor.audio.feature.afe_proxy.enable=true \
    vendor.audio.feature.anc_headset.enable=true \
    vendor.audio.feature.battery_listener.enable=false \
    vendor.audio.feature.compr_cap.enable=false \
    vendor.audio.feature.compress_in.enable=false \
    vendor.audio.feature.compress_meta_data.enable=false \
    vendor.audio.feature.compr_voip.enable=true \
    vendor.audio.feature.concurrent_capture.enable=false \
    vendor.audio.feature.custom_stereo.enable=true \
    vendor.audio.feature.display_port.enable=false \
    vendor.audio.feature.dsm_feedback.enable=false \
    vendor.audio.feature.dynamic_ecns.enable=false \
    vendor.audio.feature.ext_hw_plugin.enable=false \
    vendor.audio.feature.external_dsp.enable=false \
    vendor.audio.feature.external_speaker.enable=false \
    vendor.audio.feature.external_speaker_tfa.enable=false \
    vendor.audio.feature.fluence.enable=true \
    vendor.audio.feature.fm.enable=true \
    vendor.audio.feature.hdmi_edid.enable=true \
    vendor.audio.feature.hdmi_passthrough.enable=false \
    vendor.audio.feature.hfp.enable=true \
    vendor.audio.feature.hifi_audio.enable=true \
    vendor.audio.feature.hwdep_cal.enable=false \
    vendor.audio.feature.incall_music.enable=false \
    vendor.audio.feature.multi_voice_session.enable=true \
    vendor.audio.feature.keep_alive.enable=false \
    vendor.audio.feature.kpi_optimize.enable=false \
    vendor.audio.feature.maxx_audio.enable=false \
    vendor.audio.feature.ras.enable=false \
    vendor.audio.feature.record_play_concurency.enable=false \
    vendor.audio.feature.src_trkn.enable=true \
    vendor.audio.feature.spkr_prot.enable=true \
    vendor.audio.feature.ssrec.enable=true \
    vendor.audio.feature.usb_offload.enable=false \
    vendor.audio.feature.usb_offload_burst_mode.enable=false \
    vendor.audio.feature.usb_offload_sidetone_volume.enable=false \
    vendor.audio.feature.deepbuffer_as_primary.enable=false \
    vendor.audio.feature.vbat.enable=true \
    vendor.audio.feature.wsa.enable=true \
    vendor.audio.feature.audiozoom.enable=false \
    vendor.audio.feature.snd_mon.enable=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.btstack.a2dp_offload_cap=sbc-aptx-aptxtws-aptxhd-aac-ldac-aptxadaptive \
    persist.vendor.bt.a2dp.aac_whitelist=false \
    persist.bluetooth.a2dp_offload.disabled=true \
    persist.vendor.bluetooth.modem_nv_support=true \
    vendor.bluetooth.soc=smd \
    vendor.qcom.bluetooth.soc=smd

# Boot
PRODUCT_PROPERTY_OVERRIDES += \
    sys.vendor.shutdown.waittime=500

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.hal1.packagelist=com.whatsapp,com.facebook.katana,com.instagram.android,com.snapchat.android \
    persist.vendor.camera.display.umax=1920x1080 \
    persist.vendor.camera.display.lmax=1280x720 \
    persist.camera.imglib.cac3=2 \
    persist.camera.isp.clock.optmz=0 \
    vendor.vidc.enc.narrow.searchrange=1 \
    vendor.camera.lowpower.record.enable=1 \
    persist.camera.gyro.android=0 \
    persist.camera.HAL3.enabled=1 \
    persist.camera.is_type=1 \
    vidc.enc.dcvs.extra-buff-count=2 \
    persist.ts.rtmakeup=true \
    media.camera.ts.monotonic=1

# Charger
PRODUCT_PROPERTY_OVERRIDES += \
   ro.charger.enable_suspend=true \
   ro.charger.disable_init_blank=true

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.cne.feature=1

# DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.dpm.feature=0

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
drm.service.enabled=true

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196610 \
    ro.vendor.display.cabl=2 \
    ro.sf.lcd_density=320 \
    vendor.display.enable_default_color_mode=1

# Fm
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.transmitter=false

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=0 \
    debug.enable.sglscale=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.sf.enable_hwc_vds=1 \
    vendor.gralloc.enable_fb_ubwc=1 \
    debug.sf.hw=0 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.recomputecrop=0 \
    dev.pm.dyn_samplingrate=1 \
    persist.hwc.mdpcomp.enable=true \
    persist.demo.hdmirotationlock=false \
    persist.hwc.enable_vds=1 \
    persist.sys.wfd.virtual=0 \
    sdm.debug.disable_rotator_split=1 \
    vendor.display.disable_skip_validate=1 \
    sdm.debug.disable_skip_validate=1 \
    debug.sf.disable_backpressure=1 \
    sdm.perf_hint_window=50 \
    vendor.gralloc.disable_ahardware_buffer=1 \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=4176895 \
    media.stagefright.audio.sink=280 \
    vendor.vidc.disable.split.mode=1 \
    vendor.vidc.enc.disable_bframes=1 \
    vendor.vidc.enc.disable_pframes=1 \
    vendor.vidc.enc.disable.pq=true \
    vendor.vidc.enc.narrow.searchrange=1 \
    vendor.video.disable.ubwc=1 \
    debug.stagefright.omx_default_rank=0 \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    media.msm8956hw=0 \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true


# Netmgrd
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.use_data_netmgrd=true \
persist.data.netmgrd.qos.enable=true \
persist.vendor.data.mode=concurrent

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
DEVICE_PROVISIONED=1 \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
persist.dbg.wfc_avail_ovr=1 \
persist.radio.multisim.config=dsds \
persist.vendor.radio.add_power_save=1 \
persist.vendor.radio.apm_sim_not_pwdn=1 \
persist.vendor.radio.custom_ecc=1 \
persist.vendor.radio.hw_mbn_update=0 \
persist.vendor.radio.procedure_bytes=SKIP \
persist.vendor.radio.rat_on=combine \
persist.vendor.radio.sib16_support=1 \
ril.subscription.types=NV,RUIM \
rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
ro.telephony.call_ring.multiple=false \
ro.telephony.default_network=22,22 \
ro.telephony.use_old_mnc_mcc_format=true \
service.qti.ims.enabled=1 \
vendor.rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
persist.vendor.qti.telephony.vt_cam_interface=1

# Tcp
PRODUCT_PROPERTY_OVERRIDES += \
net.tcp.2g_init_rwnd=10


# Recovery
PRODUCT_PROPERTY_OVERRIDES += \
persist.vendor.recovery_update=false

# Usb
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.sys.usb.config.extra=none

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# Perf
PRODUCT_PROPERTY_OVVERIDES += \
   ro.vendor.extension_library=libqti-perfd-client.so \
   ro.vendor.qti.sys.fw.bg_apps_limit=60

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ct.device.model=XMP-2016030

# SurfaceFlinger sensor props
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true \
    ro.surface_flinger.max_virtual_display_dimension=4096 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    debug.sf.use_phase_offsets_as_durations=1 \
    vendor.display.disable_rotator_downscale=1 \

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    debug.sf.use_phase_offsets_as_durations=1 \
    debug.sf.late.sf.duration=10500000 \
    debug.sf.late.app.duration=20500000 \
    debug.sf.early.sf.duration=16000000 \
    debug.sf.early.app.duration=16500000 \
    debug.sf.earlyGl.sf.duration=13500000 \
    debug.sf.earlyGl.app.duration=21000000

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
wifi.interface=wlan0

# Force wifi interface for wlan0
wifi.interface=wlan0

# property to enable user to access Google WFD settings.
PRODUCT_PROPERTY_OVERRIDES += \
persist.debug.wfd.enable=1

#Blur
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1

# Adreno
PRODUCT_PRODUCT_PROPERTIES += \
ro.hardware.vulkan=adreno \
ro.hardware.egl=adreno

# ZRAM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.zram.mark_idle_delay_mins=60 \
    ro.zram.first_wb_delay_mins=180 \
    ro.zram.periodic_wb_delay_hours=24

# Blurs
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1 \
    persist.sys.sf.disable_blurs=1 \
    ro.sf.blurs_are_expensive=1
