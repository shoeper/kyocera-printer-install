# Kyodialog 8+

Instead of using the script I recommend looking at https://github.com/shoeper/kyocera-printer-install/issues/1 for simple download and install instructions.

Newer versions of kyodialog support Python 3 and work out of the box.

# Kyodialog 7

On recent OS Python 2 support is usually dropped. The Kyocera driver for printers like the FS-1370DN are using a Filter using python2 which doesn't work out of the box. This simple script installs the driver and modifies the installation to make it work.

The script is written for Fedora. I've used it with Fedora 32. It most likely also works with other versions of Fedora. `python2` is supposed to be installed on your system. With small adjustments you can also use it for other distributions.

**I provide it as is. Use at your own risk. I do not provide any support or guarantees.**

To install the driver, just fetch the script and run it.

In case your printer still doesn't work afterwards you can enable cups debug logging as follows.

* Edit /etc/cups/cupsd.conf to change `LogLevel` to `debug`
* Reload cupsd (`systemctl restart cups.service`
* View the logs with `journalctl -u cups -e -f`
* After finding the problem change back the `LogLevel` to warn

Referenced files are also available from archive.org and can be fetched with wget using the URLs below.
```
http://web.archive.org/web/20200327053727if_/https://downloads.kyoceradocumentsolutions.com.au/drivers/Drivers/Linux%20Driver%20Package.zip
SHA256: b2869b9d00bd420291b2592da32e5787f8395e0f5f9961317b9518781d9b098b

http://web.archive.org/web/20201105163836if_/https://files.pythonhosted.org/packages/a1/2f/7bcba9b75143455aaddf90c46a0c53dca89e57a4e5c5760af8422aa6747c/reportlab-2.7.tar.gz
SHA256: 82b56935e4a75641b40eb22050f0b6e46a0f0a9ebfacdf3b24a1e9c0eef2af6d
```

Most likely it also works for many other printers of Kyocera. For the following printer models ppd files were included when I installed the driver on my system:

```
ls -1 /usr/share/kyocera7/ppd7/ | tr '_' ' ' | sed 's/.ppd//'
Kyocera CS 205c
Kyocera CS 250ci
Kyocera CS 2550ci
Kyocera CS 2551ci
Kyocera CS 2552ci
Kyocera CS 2553ci
Kyocera CS 255c
Kyocera CS 255
Kyocera CS 300ci
Kyocera CS 300i
Kyocera CS 3010i
Kyocera CS 3011i
Kyocera CS 3050ci
Kyocera CS 3051ci
Kyocera CS 305
Kyocera CS 306ci
Kyocera CS 307ci
Kyocera CS 308ci
Kyocera CS 3212i
Kyocera CS 3252ci
Kyocera CS 3253ci
Kyocera CS 3500i
Kyocera CS 3501i
Kyocera CS 3510i
Kyocera CS 3511i
Kyocera CS 3550ci
Kyocera CS 3551ci
Kyocera CS 3552ci
Kyocera CS 3553ci
Kyocera CS 356ci
Kyocera CS 358ci
Kyocera CS 4002i
Kyocera CS 4003i
Kyocera CS 400ci
Kyocera CS 4012i
Kyocera CS 4052ci
Kyocera CS 4053ci
Kyocera CS 406ci
Kyocera CS 408ci
Kyocera CS 420i
Kyocera CS 4500i
Kyocera CS 4501i
Kyocera CS 4550ci
Kyocera CS 4551ci
Kyocera CS 5002i
Kyocera CS 5003i
Kyocera CS 500ci
Kyocera CS 5052ci
Kyocera CS 5053ci
Kyocera CS 508ci
Kyocera CS 520i
Kyocera CS 5500i
Kyocera CS 5501i
Kyocera CS 552ci
Kyocera CS 5550ci
Kyocera CS 5551ci
Kyocera CS 6002i
Kyocera CS 6003i
Kyocera CS 6052ci
Kyocera CS 6053ci
Kyocera CS 6500i
Kyocera CS 6501i
Kyocera CS 6550ci
Kyocera CS 6551ci
Kyocera CS 7002i
Kyocera CS 7003i
Kyocera CS 7052ci
Kyocera CS 7353ci
Kyocera CS 7550ci
Kyocera CS 7551ci
Kyocera CS 8000i
Kyocera CS 8001i
Kyocera CS 8002i
Kyocera CS 8003i
Kyocera CS 8052ci
Kyocera CS 8353ci
Kyocera CS 9002i
Kyocera CS 9003i
Kyocera ECOSYS M2030dn
Kyocera ECOSYS M2035dn
Kyocera ECOSYS M2040dn
Kyocera ECOSYS M2135dn
Kyocera ECOSYS M2235dn
Kyocera ECOSYS M2530dn
Kyocera ECOSYS M2535dn
Kyocera ECOSYS M2540dn
Kyocera ECOSYS M2540dw
Kyocera ECOSYS M2635dn
Kyocera ECOSYS M2635dw
Kyocera ECOSYS M2640idw
Kyocera ECOSYS M2735dn
Kyocera ECOSYS M2735dw
Kyocera ECOSYS M2835dw
Kyocera ECOSYS M3040dn
Kyocera ECOSYS M3040idn
Kyocera ECOSYS M3145dn
Kyocera ECOSYS M3145idn
Kyocera ECOSYS M3540dn
Kyocera ECOSYS M3540idn
Kyocera ECOSYS M3550idn
Kyocera ECOSYS M3560idn
Kyocera ECOSYS M3645dn
Kyocera ECOSYS M3645idn
Kyocera ECOSYS M3655idn
Kyocera ECOSYS M3660idn
Kyocera ECOSYS M3860idnf
Kyocera ECOSYS M3860idn
Kyocera ECOSYS M4028idn
Kyocera ECOSYS M4125idn
Kyocera ECOSYS M4132idn
Kyocera ECOSYS M4226idn
Kyocera ECOSYS M4230idn
Kyocera ECOSYS M5021cdn
Kyocera ECOSYS M5520cdn
Kyocera ECOSYS M5520cdw
Kyocera ECOSYS M5521cdn
Kyocera ECOSYS M5521cdw
Kyocera ECOSYS M5525cdn
Kyocera ECOSYS M5526cdn
Kyocera ECOSYS M5526cdw
Kyocera ECOSYS M6026cdn
Kyocera ECOSYS M6026cidn
Kyocera ECOSYS M6030cdn
Kyocera ECOSYS M6035cidn
Kyocera ECOSYS M6230cidn
Kyocera ECOSYS M6235cidn
Kyocera ECOSYS M6526cdn
Kyocera ECOSYS M6526cidn
Kyocera ECOSYS M6530cdn
Kyocera ECOSYS M6535cidn
Kyocera ECOSYS M6630cidn
Kyocera ECOSYS M6635cidn
Kyocera ECOSYS M8024cidn
Kyocera ECOSYS M8124cidn
Kyocera ECOSYS M8130cidn
Kyocera ECOSYS M8224cidn
Kyocera ECOSYS M8228cidn
Kyocera ECOSYS P2035d
Kyocera ECOSYS P2040dn
Kyocera ECOSYS P2040dw
Kyocera ECOSYS P2135dn
Kyocera ECOSYS P2135d
Kyocera ECOSYS P2230dn
Kyocera ECOSYS P2235dn
Kyocera ECOSYS P2235dw
Kyocera ECOSYS P2335dn
Kyocera ECOSYS P2335d
Kyocera ECOSYS P2335dw
Kyocera ECOSYS P3045dn
Kyocera ECOSYS P3050dn
Kyocera ECOSYS P3055dn
Kyocera ECOSYS P3060dn
Kyocera ECOSYS P3145dn
Kyocera ECOSYS P3150dn
Kyocera ECOSYS P3155dn
Kyocera ECOSYS P3260dn
Kyocera ECOSYS P4035dn
Kyocera ECOSYS P4040dn
Kyocera ECOSYS P4045dn
Kyocera ECOSYS P5018cdn
Kyocera ECOSYS P5020cdn
Kyocera ECOSYS P5020cdw
Kyocera ECOSYS P5021cdn
Kyocera ECOSYS P5021cdw
Kyocera ECOSYS P5025cdn
Kyocera ECOSYS P5026cdn
Kyocera ECOSYS P5026cdw
Kyocera ECOSYS P6021cdn
Kyocera ECOSYS P6026cdn
Kyocera ECOSYS P6030cdn
Kyocera ECOSYS P6035cdn
Kyocera ECOSYS P6130cdn
Kyocera ECOSYS P6230cdn
Kyocera ECOSYS P6235cdn
Kyocera ECOSYS P7035cdn
Kyocera ECOSYS P7040cdn
Kyocera ECOSYS P7240cdn
Kyocera ECOSYS P8060cdn
Kyocera FS-1028MFP
Kyocera FS-1030MFP
Kyocera FS-1035MFP
Kyocera FS-1120D
Kyocera FS-1128MFP
Kyocera FS-1130MFP
Kyocera FS-1135MFP
Kyocera FS-1320D
Kyocera FS-1350DN
Kyocera FS-1370DN
Kyocera FS-2020D
Kyocera FS-2100DN
Kyocera FS-2100D
Kyocera FS-3040MFP+
Kyocera FS-3040MFP
Kyocera FS-3140MFP+
Kyocera FS-3140MFP
Kyocera FS-3540MFP
Kyocera FS-3640MFP
Kyocera FS-3920DN
Kyocera FS-4020DN
Kyocera FS-4100DN
Kyocera FS-4200DN
Kyocera FS-4300DN
Kyocera FS-5040DN
Kyocera FS-6025MFP
Kyocera FS-6030MFP
Kyocera FS-6525MFP
Kyocera FS-6530MFP
Kyocera FS-6970DN
Kyocera FS-9130DN
Kyocera FS-9530DN
Kyocera FS-C2026MFP+
Kyocera FS-C2026MFP
Kyocera FS-C2126MFP+
Kyocera FS-C2126MFP
Kyocera FS-C2526MFP
Kyocera FS-C2626MFP
Kyocera FS-C5100DN
Kyocera FS-C5150DN
Kyocera FS-C5200DN
Kyocera FS-C5250DN
Kyocera FS-C5300DN
Kyocera FS-C5350DN
Kyocera FS-C5400DN
Kyocera FS-C8020MFP
Kyocera FS-C8025MFP
Kyocera FS-C8500DN
Kyocera FS-C8520MFP
Kyocera FS-C8525MFP
Kyocera FS-C8600DN
Kyocera FS-C8650DN
Kyocera Generic Color A3 PCL
Kyocera Generic Color A3 PDF
Kyocera Generic Color A4 PCL
Kyocera Generic Color A4 PDF
Kyocera Generic Monochrome A3 PCL
Kyocera Generic Monochrome A3 PDF
Kyocera Generic Monochrome A4 PCL
Kyocera Generic Monochrome A4 PDF
Kyocera KM-2810
Kyocera KM-2820
Kyocera TASKalfa 205c
Kyocera TASKalfa 250ci
Kyocera TASKalfa 2550ci
Kyocera TASKalfa 2551ci
Kyocera TASKalfa 2552ci
Kyocera TASKalfa 2553ci
Kyocera TASKalfa 255c
Kyocera TASKalfa 255
Kyocera TASKalfa 265ci
Kyocera TASKalfa 266ci
Kyocera TASKalfa 300ci
Kyocera TASKalfa 300i
Kyocera TASKalfa 3010i
Kyocera TASKalfa 3011i
Kyocera TASKalfa 3050ci
Kyocera TASKalfa 3051ci
Kyocera TASKalfa 305
Kyocera TASKalfa 306ci
Kyocera TASKalfa 307ci
Kyocera TASKalfa 308ci
Kyocera TASKalfa 3212i
Kyocera TASKalfa 3252ci
Kyocera TASKalfa 3253ci
Kyocera TASKalfa 3500i
Kyocera TASKalfa 3501i
Kyocera TASKalfa 350ci
Kyocera TASKalfa 3510i
Kyocera TASKalfa 3511i
Kyocera TASKalfa 351ci
Kyocera TASKalfa 3550ci
Kyocera TASKalfa 3551ci
Kyocera TASKalfa 3552ci
Kyocera TASKalfa 3553ci
Kyocera TASKalfa 356ci
Kyocera TASKalfa 358ci
Kyocera TASKalfa 4002i
Kyocera TASKalfa 4003i
Kyocera TASKalfa 400ci
Kyocera TASKalfa 4012i
Kyocera TASKalfa 4020i
Kyocera TASKalfa 4052ci
Kyocera TASKalfa 4053ci
Kyocera TASKalfa 406ci
Kyocera TASKalfa 408ci
Kyocera TASKalfa 420i
Kyocera TASKalfa 4500i
Kyocera TASKalfa 4501i
Kyocera TASKalfa 4550ci
Kyocera TASKalfa 4551ci
Kyocera TASKalfa 5002i
Kyocera TASKalfa 5003i
Kyocera TASKalfa 500ci
Kyocera TASKalfa 5052ci
Kyocera TASKalfa 5053ci
Kyocera TASKalfa 508ci
Kyocera TASKalfa 520i
Kyocera TASKalfa 5500i
Kyocera TASKalfa 5501i
Kyocera TASKalfa 552ci
Kyocera TASKalfa 5550ci
Kyocera TASKalfa 5551ci
Kyocera TASKalfa 6002i
Kyocera TASKalfa 6003i
Kyocera TASKalfa 6052ci
Kyocera TASKalfa 6053ci
Kyocera TASKalfa 6500i
Kyocera TASKalfa 6501i
Kyocera TASKalfa 6550ci
Kyocera TASKalfa 6551ci
Kyocera TASKalfa 7002i
Kyocera TASKalfa 7003i
Kyocera TASKalfa 7052ci
Kyocera TASKalfa 7353ci
Kyocera TASKalfa 7550ci
Kyocera TASKalfa 7551ci
Kyocera TASKalfa 8000i
Kyocera TASKalfa 8001i
Kyocera TASKalfa 8002i
Kyocera TASKalfa 8003i
Kyocera TASKalfa 8052ci
Kyocera TASKalfa 8353ci
Kyocera TASKalfa 9002i
Kyocera TASKalfa 9003i
```
