# 'kiwitree korean station set' makefile

.PHONY = all bundle clean

VPATH = src
NFO_DIR = nfo
OBJ_DIR = obj

rwildcard = $(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

# include macro files, header, trains, names etc
HEADERS := $(call rwildcard,$(VPATH),*.m4)
LANGUAGES := $(wildcard lang/*.nfx)
INCLUDES = $(HEADERS) $(LANGUAGES)

# .nfo target files
STATION_NFXFILES = $(wildcard $(VPATH)/stations/*.nfx)
OBJECT_NFXFILES = $(wildcard $(VPATH)/objects/*.nfx)

STATION_NFOFILES = $(patsubst $(VPATH)/%.nfx,$(NFO_DIR)/%.nfo,$(STATION_NFXFILES))
OBJECT_NFOFILES = $(patsubst $(VPATH)/%.nfx,$(NFO_DIR)/%.nfo,$(OBJECT_NFXFILES))
NFOFILES = $(STATION_NFOFILES) $(OBJECT_NFOFILES)

OBJFILES = $(patsubst $(NFO_DIR)/%.nfo,$(OBJ_DIR)/%.grf,$(NFOFILES))

OBJFILES_PART1 = $(addprefix obj/stations/,kws_part1.grf sprites.grf switches.grf platforms.grf crossings.grf buildings.grf overpasses.grf facilities.grf strings_part1.grf) obj/objects/kws_object.grf
OBJFILES_PART2 = $(addprefix obj/stations/,kws_part2.grf sprites.grf switches.grf crossings_high.grf psd_extra.grf buffers.grf seoul.grf gangneung.grf gwangmyeong.grf metro.grf suseo.grf overpass_stairs.grf sinhaeundae.grf jije.grf signals.grf hannam.grf strings_part2.grf) 

DEPFILES = $(patsubst %.nfo,%.d,$(NFOFILES))

GRFFILES = kws_part1.grf kws_part2.grf
TARFILES = $(GRFFILES:.grf=.tar)

# graphics source files
PNGDIR = images/
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

all: $(GRFFILES)
	
# rule to make .nfo from .nfx
$(STATION_NFOFILES): $(NFO_DIR)/%.nfo : $(VPATH)/%.nfx | $(OBJ_DIR)
	$(M4) $(M4FLAGS) -R m4nfo_stations.m4 $(subst /,\,$<) >$(subst /,\,$@)
	$(M4) $(M4FLAGS) dependency.m4 $(subst /,\,$<) >$(patsubst %.nfo,%.d,$(subst /,\,$@))
	copy count32.m4 + $(subst /,\,$@) $(notdir $*).tt
	$(M4) $(M4FLAGS)  <$(notdir $*).tt >$(subst /,\,$@)
	del $(notdir $*).tt
	$(NFORENUM) $(NFORENUMFLAGS) $(subst /,\,$@)
	
$(OBJECT_NFOFILES): $(NFO_DIR)/%.nfo : $(VPATH)/%.nfx | $(OBJ_DIR)
	$(M4) $(M4FLAGS) -R m4nfo_objects.m4 $(subst /,\,$<) >$(subst /,\,$@)
	$(M4) $(M4FLAGS) dependency.m4 $(subst /,\,$<) >$(patsubst %.nfo,%.d,$(subst /,\,$@))
	copy count32.m4 + $(subst /,\,$@) $(notdir $*).tt
	$(M4) $(M4FLAGS)  <$(notdir $*).tt >$(subst /,\,$@)
	del $(notdir $*).tt
	$(NFORENUM) $(NFORENUMFLAGS) $(subst /,\,$@)

-include $(DEPFILES)

# rule to make .grf from .nfo and .png
kws_part1.grf : $(OBJFILES_PART1)
	$(LINKGRF) -f $@ $(OBJFILES_PART1)
	copy /Y $@ "%HOMEDRIVE%%HOMEPATH%/Documents/OpenTTD/newgrf/$@"

kws_part2.grf : $(OBJFILES_PART2)
	$(LINKGRF) -f $@ $(OBJFILES_PART2)
	copy /Y $@ "%HOMEDRIVE%%HOMEPATH%/Documents/OpenTTD/newgrf/$@"

$(OBJFILES): $(OBJ_DIR)/%.grf : $(NFO_DIR)/%.nfo $(PNGFILES)
	$(GRFCODEC) $(GRFCODECFLAGS) $@ ../../$(dir $<)

$(OBJ_DIR):
	mkdir $(subst /,\,$(sort $(dir $(OBJFILES)) $(dir $(NFOFILES))))

# rule to make bundle
%.tar : %.grf
	tar cvf $@ $^ changelog.txt
	copy /Y $@ "%HOMEDRIVE%%HOMEPATH%/Documents/OpenTTD/newgrf/$@"

bundle: $(GRFFILES) $(TARFILES) $(NFOFILES)

clean:
	del *.grf
	del *.tar
	rmdir /S /Q nfo
	rmdir /S /Q obj