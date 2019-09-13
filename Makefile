# 'kiwitree korean station set' makefile

V = sprites\kws

# include macro files, header, trains, names etc
INCLUDES = $V1_compat.nfx $V.m4 $V_compat.m4 $V_func.m4 sprites\strings.nfx

# .nfo target files
NFOFILES = $V1.nfo

# graphics source files
PNGDIR = sprites\gfx\
PNGFILES := $(wildcard $(PNGDIR)*.png)

# m4 text processor
M4 = m4

# grfcodec program
GRFCODECPATH = 

GRFCODEC = grfcodec
GRFCODECFLAGS = -e

NFORENUM = nforenum
NFORENUMFLAGS = 

# rule to make .nfo from .nfx
%.nfo : %.nfx $(INCLUDES)
	$(M4) -R m4nfo_stations.m4 $< >$@ 

# rule to make test.grf from .nfo and .png
kws1.grf : $(NFOFILES) $(PNGFILES)
	copy count32.m4 + $(strip $(NFOFILES)) sprites\kws1.tt
	$(M4) <sprites\kws1.tt >sprites\kws1.nfo
# $(GRFCODECPATH)$(NFORENUM) $(NFORENUMFLAGS) sprites\kws1.nfo
	$(GRFCODECPATH)$(GRFCODEC) $(GRFCODECFLAGS) kws1.grf
	copy /Y kws1.grf %HOMEDRIVE%%HOMEPATH%\Documents\OpenTTD\newgrf\kws1.grf

all: kws1.grf

clear:
	del kws1.grf
	del sprites\*.nfo