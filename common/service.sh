# Universal GMS Doze
# Copyright © 2018-2019 GL-DP, gloeyisk
# Licensed under the GNU General Public License v2.0

# Delay script execution
sleep 60;

# Removed Find My Device from the whole system
pm disable com.google.android.gms/com.google.android.gms.mdm.receivers.MdmDeviceAdminReceiver;
