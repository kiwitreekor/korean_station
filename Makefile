# 'kiwitree korean station set' makefile

V = sprites

# include macro files, header, trains, names etc
LAYOUTS := $(wildcard sprites/layouts/*.nfx)
LANGUAGES := $(wildcard sprites/lang/*.nfx)
INCLUDES = $V\kws1_compat.nfx $V\kws_layout.nfx $V\kws_func.nfx $V\kws.m4 $V\kws_compat.m4 $V\strings.nfx $V\sprites.nfx $V\templates.m4 $(LAYOUTS) $(LANGUAGES)

# .nfo target files
NFOFILES = $V\kws1.nfo $V\kws2.nfo

GRFFILES = kws1.grf kws2.grf
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
	$(M4) -R m4nfo_stations.m4 $< >$@ 
	copy count.m4 + $@ $*.tt
	$(M4) <$*.tt >$@
	del $*.tt

# rule to make test.grf from .nfo and .png
%.grf : $V\%.nfo $(PNGFILES)
	$(GRFCODEC) $(GRFCODECFLAGS) $@
	copy /Y $@ "%HOMEDRIVE%%HOMEPATH%/Documents/OpenTTD/newgrf/$@"

# rule to make bundle
%.tar : %.grf
	tar cvf $@ %.grf changelog.txt
	copy /Y $@ "%HOMEDRIVE%%HOMEPATH%/Documents/OpenTTD/newgrf/$@"

bundle: $(GRFFILES) $(TARFILES) $(NFOFILES)

clean:
	del *.grf
	del sprites\*.nfo
	del *.bak
	del *.tar