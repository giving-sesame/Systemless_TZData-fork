**Description**

This Magisk module updates your ROM's time zone data, including daylight saving time (DST) start and end dates, systemlessly. The source of time zone data is https://android.googlesource.com/platform/system/timezone

Time zone data format is different for Android 9- and Android 10+. The module takes it into account and installs correct data depending on the version of your ROM.

This is the fork of original Systemless_TZData module, as the authors seems to abandon its updating in early 2021.

 
**Changelog**

2.0
- TZData updated to 2022A
- added distribution of file tzlookup.xml

1.0
- initial fork with TZData 2021A

 
**Requirements**

None
