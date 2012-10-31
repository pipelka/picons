FORMATTING
==========

picons.sh:

    # disneycinemagicplus1
    ln -s disneycinemagicplus1.png 1_0_1_232B_803_2_11A0000_0_0_0.png
    ln -s disneycinemagicplus1.png 1_0_1_22CD_45A_1_C00000_0_0_0.png
    ln -s disneycinemagicplus1.png 1_0_1_4E86_1AF4_9C_5A0000_0_0_0.png

    # canal+1hd
    ln -s canal+1hd.png 1_0_1_7612_408_1_C00000_0_0_0.png
    ln -s canal+1hd.png 1_0_19_74D5_3F8_1_C00000_0_0_0.png
    ln -s canal+1hd.png 1_0_19_74CC_3F8_1_C00000_0_0_0.png



RULES
=====

Channel Name:
  * NO spaces
  * NO fancy symbols
  * LOWERCASE
  * Time sharing channels, names seperated by "_".
  * Sky ... channels contain uk/de/it at the end, to keep them apart.
  * If the channelname contains a "+", you use a "+", if it's a timeshift channel, use "plus1"

Serviceref:
  * UPPERCASE

Extension:
  * .png
  * LOWERCASE

Order:
  * Sorted A-Z as best as possible

Logo:
  * Type: png
  * Resolution: 256x154px
  * Properly aligned
  * Highest quality possible
  * Margin: 15px
  * When adding a new logo, also ad the "# channelname" in the DVB-S/S2 section when it's a new DVB-C or DVB-T channel.


* * *

XVDR USERS? NEED SOME HELP?
===========================

With the help of @tkurbad's python script [piconlinks.py](https://github.com/tkurbad/piconscripts#piconscripts), you can speed up the process of linking the channels. You basically feed it your "channels.conf" file and the location of the git repo you cloned containing the channel logos, it then will try to match as many channels as possible.

@pipelka also supplies a tool called [serviceref](https://github.com/pipelka/vdr-plugin-xvdr/tree/master/tools) with the xvdr-plugin, wich you feed it also your "channels.conf" and it then spits out a file with all your channel names followed with their serviceref.

