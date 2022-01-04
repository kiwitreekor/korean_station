# Korean Station Set
  
**Korean Station Set** is a NewGRF that adds several korean style station pieces into OpenTTD.  
You can download this via Online content in-game, or [Github release page](https://github.com/kiwitreekor/korean_station/releases).  
  
## How to build
You need M4, grfcodec, nforenum, appropriate m4nfo modules and m4nfo NewGRF linker to build this NewGRF.  
Please check the [m4nfo manual](http://www.ttdpatch.de/grfspecs/m4nfoManual/Installation.html) to download these software.  
Then put m4nfo module ``m4nfo_objects.m4`` and ``m4nfo_stations.m4`` and ``count32.m4``  into project folder and run ``make`` in command prompt.  
``make bundle`` will create tar files which can be uploded to [BaNaNaS](https://bananas.openttd.org/).  
``make clean`` will clean all generated & compiled files.