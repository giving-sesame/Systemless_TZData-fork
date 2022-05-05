ui_print   "***************************************"
ui_print   "*  _____ _________    _  _____  _     *"    
ui_print   "* |_   _|__  /  _ \  / \|_   _|/ \    *"   
ui_print   "*   | |   / /| | | |/ _ \ | | / _ \   *"  
ui_print   "*   | |  / /_| |_| / ___ \| |/ ___ \  *"
ui_print   "*   |_| /____|____/_/   \_\_/_/   \_\ *"
ui_print   "*                                     *"
ui_print   "*     ~Systemless TZdata Updater~     *"
ui_print   "*                                     *"
ui_print   "***************************************"

# Variables
DEVFND=0
SDK_VER=1
SDK_VER_MAX=33
# SDK check
  if [ $API -ge $SDK_VER ] && [ $API -lt $SDK_VER_MAX ]; then
    ui_print "SDK $API detected. It is supported."
    DEVFND=1
  fi
# Abort if no match
if [ $DEVFND == 0 ]; then
  abort "Android SDK $API is not supported. Aborting..."
fi

ui_print " "
ui_print "Installing tzdata..."
if [ $API -ge 29 ]; then 
	cp -afr $MODPATH/system/usr/share/zoneinfo/SOURCES/10/distro_version $MODPATH/system/usr/share/zoneinfo/distro_version
	cp -afr $MODPATH/system/usr/share/zoneinfo/SOURCES/10/tzdata $MODPATH/system/usr/share/zoneinfo/tzdata
	cp -afr $MODPATH/system/usr/share/zoneinfo/SOURCES/10/tzlookup.xml $MODPATH/system/usr/share/zoneinfo/tzlookup.xml
else
	cp -afr $MODPATH/system/usr/share/zoneinfo/SOURCES/9/distro_version $MODPATH/system/usr/share/zoneinfo/distro_version
	cp -afr $MODPATH/system/usr/share/zoneinfo/SOURCES/9/tzdata $MODPATH/system/usr/share/zoneinfo/tzdata
	cp -afr $MODPATH/system/usr/share/zoneinfo/SOURCES/9/tzlookup.xml $MODPATH/system/usr/share/zoneinfo/tzlookup.xml
fi
rm -rf $MODPATH/system/usr/share/zoneinfo/SOURCES/
