set adb=adb -s emulator-5554
set arch=x86
adb start-server
%adb% shell mount -o remount,rw /system
%adb% install common/Superuser.apk
%adb% push %arch%/su /system/bin/su
%adb% shell chmod 0755 /system/bin/su
%adb% push %arch%/su /system/xbin/su
%adb% shell chmod 0755 /system/xbin/su
%adb% shell su --install
%adb% shell "su --daemon&"
%adb% shell setenforce 0
%adb% shell mount -o remount,ro /system

%adb% install Root_Explorer-4.0.5P.apk

pause
exit /b