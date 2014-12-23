BACKGROUND := grey
BACKGROUNDIMAGE = backgrounds/XVDR/$(BACKGROUND).png
WIDTH = $(shell echo $(shell identify -format "%w" $(BACKGROUNDIMAGE)) - 30 | bc)
HEIGHT = $(shell echo $(shell identify -format "%h" $(BACKGROUNDIMAGE)) - 30 | bc)

SOURCES := $(shell find picons -name "*png")
TARGETDIR := picons-xvdr-$(BACKGROUND)
COMPOSITE := composite -gravity center
CONVERT := convert
TOPDIR := $(shell pwd)

TARGETS = $(SOURCES:picons/%.png=$(TARGETDIR)/%.png)

all: composite link

dist: $(TARGETDIR).tar.gz

composite: $(TARGETDIR) $(TARGETS)

link:
	-rm -f $(TARGETDIR)/1_*_0_0_0.png 
	cd $(TARGETDIR) && $(TOPDIR)/scripts/picons.sh

$(TARGETDIR).tar.gz: composite link
	tar -zcf $@ $(TARGETDIR)
	-rm -f $(TARGETDIR)/1_*_0_0_0.png

$(TARGETDIR):
	mkdir -p $@

$(TARGETDIR)/%-scaled.png: picons/%.png
	$(CONVERT) $<  -resize $(WIDTH)x$(HEIGHT)\> $@

$(TARGETDIR)/%.png: $(TARGETDIR)/%-scaled.png
	$(COMPOSITE) $< $(BACKGROUNDIMAGE) $@
	rm -f $<

