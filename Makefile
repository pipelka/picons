BACKGROUND := reflection
BACKGROUNDIMAGE = backgrounds/XVDR/$(BACKGROUND).png
SOURCES := $(shell find picons -name "*png")
TARGETDIR := picons-xvdr-$(BACKGROUND)
COMPOSITE := composite -gravity center

TARGETS = $(SOURCES:picons/%.png=$(TARGETDIR)/%.png)

all: $(TARGETDIR) $(TARGETS)
	-rm -f $(TARGETDIR)/1_*_0_0_0.png
	./scripts/picons.sh $(TARGETDIR)

$(TARGETDIR).tar.gz: $(TARGETDIR) $(TARGETS)
	tar -zcf $@ $(TARGETDIR)

$(TARGETDIR):
	mkdir -p $@

$(TARGETDIR)/%.png: picons/%.png $(BACKGROUNDIMAGE)
	$(COMPOSITE) $< $(BACKGROUNDIMAGE) $@

