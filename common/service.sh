# This script will be executed in late_start service mode
# More info in the main Magisk thread
# Additional modified services

# Unrestrict GMS (OEMs)

if [ "`pgrep gsf`" ]; then  
kill -9 $(pgrep gsf)
fi;
if [ "`pgrep gms`" ]; then      
kill -9 $(pgrep gms)
fi;
if [ "`$skybox pgrep gapps`" ]; then    
kill -9 $(pgrep gapps)
fi;

pm enable com.google.android.gms/.update.SystemUpdateActivity
pm enable com.google.android.gms/.update.SystemUpdateService
pm enable com.google.android.gms/.update.SystemUpdateService$ActiveReceiver
pm enable com.google.android.gms/.update.SystemUpdateService$Receiver
pm enable com.google.android.gms/.update.SystemUpdateService$SecretCodeReceiver
pm enable com.google.android.gsf/.update.SystemUpdateActivity
pm enable com.google.android.gsf/.update.SystemUpdatePanoActivity
pm enable com.google.android.gsf/.update.SystemUpdateService
pm enable com.google.android.gsf/.update.SystemUpdateService$Receiver
pm enable com.google.android.gsf/.update.SystemUpdateService$SecretCodeReceiver

echo "- GMS Fix: Activated" |  tee -a $LOG;
done
