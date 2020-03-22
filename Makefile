# 'kiwitree korean station set' makefile

V = sprites

# include macro files, header, trains, names etc
LAYOUTS := $(wildcard sprites/layouts/*.nfx)
LANGUAGES := $(wildcard sprites/lang/*.nfx)
INCLUDES = $V\kws_func.nfx $V\kws.m4 $V\sprites.nfx $V\templates.m4 $(LAYOUTS) $(LANGUAGES)

# .nfo target files
NFOFILES = $V\kws1.nfo $V\kws2.nfo

GRFFILES = $(notdir $(NFOFILES:.nfo=.grf))
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

all: $(GRFFILES) $(NFOFILES)

# rule to make .nfo from .nfx
%.nfo : %.nfx $(INCLUDES)
	copy act2id.m4 + $< $*.tt
	$(M4) $(M4FLAGS) $*.tt >$*.tt2
	del $*.tt2
	$(M4) $(M4FLAGS) -R m4nfo_stations.m4 $< >$@ 
	copy count32.m4 + $@ $*.tt
	$(M4) $(M4FLAGS)  <$*.tt >$@
	del $*.tt

# rule to make test.grf from .nfo and .png
%.grf : $V\%.nfo $(PNGFILES)
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