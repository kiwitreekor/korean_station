changequote({,})changecom(//)divert(-1)dnl
define({include}, {divert{}patsubst(patsubst(__file__, \\, /), src/\(.*\)\.nfx, nfo/\1.nfo): patsubst($1, \\, /)
divert(-1)})