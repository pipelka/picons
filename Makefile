BACKGROUND := reflection
BACKGROUNDIMAGE = backgrounds/XVDR/$(BACKGROUND).png
SOURCES := $(shell find picons -name "*png")
TARGETDIR := picons-xvdr-$(BACKGROUND)
COMPOSITE := composite -gravity center
CONVERT := convert

TARGETS = $(SOURCES:picons/%.png=$(TARGETDIR)/%.png)

all: $(TARGETDIR) $(TARGETS)
	-rm -f $(TARGETDIR)/1_*_0_0_0.png
	./scripts/picons.sh $(TARGETDIR)

$(TARGETDIR).tar.gz: $(TARGETDIR) $(TARGETS)
	tar -zcf $@ $(TARGETDIR)

$(TARGETDIR):
	mkdir -p $@

$(TARGETDIR)/%-scaled.png: picons/%.png
	$(CONVERT) $<  -resize 245x140\> $@

$(TARGETDIR)/%.png: $(TARGETDIR)/%-scaled.png $(BACKGROUNDIMAGE)
	$(COMPOSITE) $< $(BACKGROUNDIMAGE) $@
	rm -f $<

