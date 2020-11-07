# 'kiwitree korean station set' makefile

V = sprites

# include macro files, header, trains, names etc
LAYOUTS := $(wildcard sprites/layouts/*.nfx)
LANGUAGES := $(wildcard sprites/lang/*.nfx)
INCLUDES = $V\kws_func.nfx $V\kws_common.nfx $V\kws.m4 $V\sprites.nfx $V\templates.m4 $(LAYOUTS) $(LANGUAGES)

# .nfo target files
STATION_NFOFILES = $V\kws1.nfo $V\kws2.nfo
OBJECT_NFOFILES = $V\kws1_object.nfo

NFOFILES = $(STATION_NFOFILES) $(OBJECT_NFOFILES)

GRFFILES = $(notdir $(STATION_NFOFILES:.nfo=.grf))
TARFILES = $(GRFFILES:.grf=.tar)

# graphics source files
PNGDIR = sprites/gfx/
PNGFILES = $(wildcard $(PNGDIR)*.png)

# m4 text processor
M4 = m4
M4FLAGS = 

# grfcodec program
GRFCODEC = grfcodec
GRFCODECFLAGS = -e

# nforenum program
NFORENUM = nforenum
NFORENUMFLAGS = --beautify on

LINKGRF = linkgrf

all: $(GRFFILES) $(NFOFILES)
	
# rule to make .nfo from .nfx
$(STATION_NFOFILES): %.nfo : %.nfx $(INCLUDES)
	copy act2id.m4 + $< $*.tt
	$(M4) $(M4FLAGS) $*.tt >$*.tt2
	del $*.tt2
	$(M4) $(M4FLAGS) -R m4nfo_stations.m4 $< >$@
	copy count32.m4 + $@ $*.tt
	$(M4) $(M4FLAGS)  <$*.tt >$@
	del $*.tt
	$(NFORENUM) $(NFORENUMFLAGS) $@
	
$(OBJECT_NFOFILES): %.nfo : %.nfx $(INCLUDES)
	copy act2id.m4 + $< $*.tt
	$(M4) $(M4FLAGS) $*.tt >$*.tt2
	del $*.tt2
	$(M4) $(M4FLAGS) -R m4nfo_objects.m4 $< >$@
	copy count32.m4 + $@ $*.tt
	$(M4) $(M4FLAGS)  <$*.tt >$@
	del $*.tt
	$(NFORENUM) $(NFORENUMFLAGS) $@

# rule to make test.grf from .nfo and .png
kws1.grf : $V\kws1.nfo $V\kws1_object.nfo $(PNGFILES)
	$(GRFCODEC) $(GRFCODECFLAGS) kws1.grf
	$(GRFCODEC) $(GRFCODECFLAGS) kws1_object.grf
	$(LINKGRF) -f kws1_final.grf kws1.grf kws1_object.grf
	del kws1.grf
	ren kws1_final.grf kws1.grf
	copy /Y $@ "%HOMEDRIVE%%HOMEPATH%/Documents/OpenTTD/newgrf/$@"

kws2.grf : $V\kws2.nfo $(PNGFILES)
	$(GRFCODEC) $(GRFCODECFLAGS) $@
	copy /Y $@ "%HOMEDRIVE%%HOMEPATH%/Documents/OpenTTD/newgrf/$@"

# rule to make bundle
%.tar : %.grf
	tar cvf $@ $^ changelog.txt
	copy /Y $@ "%HOMEDRIVE%%HOMEPATH%/Documents/OpenTTD/newgrf/$@"

bundle: $(GRFFILES) $(TARFILES) $(NFOFILES)

clean:
	del *.grf
	del sprites\*.nfo
	del *.bak
	del *.tar