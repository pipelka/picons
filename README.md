FORMATTING
==========


picons.sh:

    # 3 sat
    ln -s 3sat.png 1_0_1_6D67_437_1_C00000_0_0_0.png




RULES
=====

Channel Name:
  * NO spaces
  * NO fancy symbols
  * LOWERCASE
  * Time sharing channels, names seperated by "_".
  * Sky ... channels contain uk/de/it at the end, to keep them apart.

Serviceref:
  * UPPERCASE

Extension:
  * .png
  * LOWERCASE

Order:
  * Sorted A-Z as best as possible

Logo:
  * Type: png
  * Resolution: 256x154
  * Properly aligned
  * Highest quality possible


* * *

XVDR USERS? NEED SOME HELP?
===========================

With the help of @tkurbad's python script [piconlinks.py](https://github.com/tkurbad/piconscripts#piconscripts), you can speed up the process of linking the channels. You basically feed it your "channels.conf" file and the location of the git repo you cloned containing the channel logos, it then will try to match as many channels as possible.

@pipelka also supplies a tool called [serviceref](https://github.com/pipelka/vdr-plugin-xvdr/tree/master/tools) with the xvdr-plugin, wich you feed it also your "channels.conf" and it then spits out a file with all your channel names followed with their serviceref.

