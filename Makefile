BACKGROUND := reflection
BACKGROUNDIMAGE = backgrounds/XVDR/$(BACKGROUND).png
SOURCES := $(shell find picons -name "*png")
TARGETDIR := picons-xvdr-$(BACKGROUND)
COMPOSITE := composite -gravity center
CONVERT := convert

TARGETS = $(SOURCES:picons/%.png=$(TARGETDIR)/%.png)

all: composite

dist: $(TARGETDIR).tar.gz

composite: $(TARGETDIR) $(TARGETS)

$(TARGETDIR).tar.gz: all
	-rm -f $(TARGETDIR)/1_*_0_0_0.png
	(./scripts/picons.sh $(TARGETDIR) || true) > /dev/null 2>&1
	tar -zcf $@ $(TARGETDIR)
	-rm -f $(TARGETDIR)/1_*_0_0_0.png

$(TARGETDIR):
	mkdir -p $@

$(TARGETDIR)/%-scaled.png: picons/%.png
	$(CONVERT) $<  -resize 245x140\> $@

$(TARGETDIR)/%.png: $(TARGETDIR)/%-scaled.png $(BACKGROUNDIMAGE)
	$(COMPOSITE) $< $(BACKGROUNDIMAGE) $@
	rm -f $<

