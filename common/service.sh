# Universal GMS Doze
# Copyright © 2018-2019 GL-DP, gloeyisk
# License: GPL v2

# Sleep statements (delay execution);
sleep 80

# Disable Find My Device (reboot once if it is does not disabled automatically, prefer to Troubleshooting section for more details);
pm disable com.google.android.gms/com.google.android.gms.mdm.receivers.MdmDeviceAdminReceiver

# Doze setup services (experimental);
settings put global device_idle_constants light_after_inactive_to=5000,light_pre_idle_to=10000,light_max_idle_to=86400000,light_idle_to=43200000,light_idle_maintenance_max_budget=20000,light_idle_maintenance_min_budget=5000,min_time_to_alarm=60000,inactive_to=120000,motion_inactive_to=120000,idle_after_inactive_to=5000,locating_to=2000,sensing_to=120000,idle_to=7200000,wait_for_unlock=true

# Enable foreground schedtune (experimental);
echo "5" > /dev/stune/foreground/schedtune.boost

# Tunable network tweaks (experimental, currently stands for westwood);
echo "128" > /proc/sys/net/core/netdev_max_backlog
echo "0" > /proc/sys/net/core/netdev_tstamp_prequeue
echo "0" > /proc/sys/net/ipv4/cipso_cache_bucket_size
echo "0" > /proc/sys/net/ipv4/cipso_cache_enable
echo "0" > /proc/sys/net/ipv4/cipso_rbm_strictvalid
echo "0" > /proc/sys/net/ipv4/igmp_link_local_mcast_reports
echo "24" > /proc/sys/net/ipv4/ipfrag_time
echo "westwood" > /proc/sys/net/ipv4/tcp_congestion_control
echo "1" > /proc/sys/net/ipv4/tcp_ecn
echo "0" > /proc/sys/net/ipv4/tcp_fwmark_accept
echo "320" > /proc/sys/net/ipv4/tcp_keepalive_intvl
echo "21600" > /proc/sys/net/ipv4/tcp_keepalive_time
echo "1" > /proc/sys/net/ipv4/tcp_no_metrics_save
echo "1500" > /proc/sys/net/ipv4/tcp_probe_interval
echo "48" > /proc/sys/net/ipv6/ip6frag_time

# Enable partial Boeffla wakelock blocker (Experimental);
echo "wlan_pno_wl;wlan_ipa;wcnss_filter_lock;[timerfd];hal_bluetooth_lock;IPA_WS;sensor_ind;wlan;netmgr_wl;qcom_rx_wakelock;SensorService_wakelock;tftp_server_wakelock;wlan_wow_wl;wlan_extscan_wl;" > /sys/class/misc/boeffla_wakelock_blocker/wakelock_blocker

# Executing...
# Side note: Other services will be added/removed when needed
# Done
#
