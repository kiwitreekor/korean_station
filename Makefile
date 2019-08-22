# 'kiwitree korean station set' makefile

V = sprites\kws

# include macro files, header, trains, names etc
LAYOUTS := $(wildcard sprites/layouts/*.nfx)
LANGUAGES := $(wildcard sprites/lang/*.nfx)
INCLUDES = $V1_compat.nfx $V_layout.nfx $V_func.nfx $V.m4 $V_compat.m4 sprites\strings.nfx $(LAYOUTS) $(LANGUAGES)

# .nfo target files
NFOFILES = $V1.nfo

# graphics source files
PNGDIR = sprites/gfx/
PNGFILES = $(wildcard $(PNGDIR)*.png)

# m4 text processor
M4 = m4
M4FLAGS = 

# grfcodec program
GRFCODEC = grfcodec
GRFCODECFLAGS = -e

all: kws1.grf $(NFOFILES)

# rule to make .nfo from .nfx
%.nfo : %.nfx $(INCLUDES)
	$(M4) -R m4nfo_stations.m4 $< >$@ 
	copy count.m4 + $@ $*.tt
	$(M4) <$*.tt >$@
	del $*.tt

# rule to make test.grf from .nfo and .png
kws1.grf : $(NFOFILES) $(PNGFILES)
# $(NFORENUM) $(NFORENUMFLAGS) sprites\kws1.nfo
	$(GRFCODEC) $(GRFCODECFLAGS) kws1.grf
	copy /Y kws1.grf %HOMEDRIVE%%HOMEPATH%\Documents\OpenTTD\newgrf\kws1.grf

# rule to make bundle
kws1.tar : kws1.grf
	tar cvf kws1.tar kws1.grf changelog.txt
	copy /Y $@ "%HOMEDRIVE%%HOMEPATH%/Documents/OpenTTD/newgrf/$@"

bundle: jptaddon.grf jptaddon.tar $(NFOFILES)

clean:
	del kws1.grf
	del sprites\*.nfo