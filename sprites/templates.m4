divert(-1)
// $1=label, $2=filename, $3=xpos, $4=ypos
define(tmpl_base_platform, {
	sprite(ifelse($1,,,{$1,})$2 8bpp eval($3) eval($4) 44 eval(21+$5) -31 eval(-$5) normal) ifelse($1,,,{// $1})
	sprite($2 8bpp  eval($3+50) eval($4) 44 eval(21+$5) -11 eval(-$5) normal)
	sprite($2 8bpp eval($3+100) eval($4) 44 eval(21+$5) -31 eval(-$5) normal)
	sprite($2 8bpp eval($3+150) eval($4) 44 eval(21+$5) -11 eval(-$5) normal)
})

define(tmpl_base_platform_nontrack, {
	sprite(ifelse($1,,,{$1,})$2 8bpp eval($3) eval($4) 64 eval(31+$5) -31 eval(-$5) normal) ifelse($1,,,{// $1})
	sprite($2 8bpp eval($3+70) eval($4) 64 eval(31+$5) -31 eval(-$5) normal)
})

define(tmpl_high_platform, {tmpl_base_platform($1, $2, $3, $4, 3)})
define(tmpl_low_platform, {tmpl_base_platform($1, $2, $3, $4, 1)})

define(tmpl_high_platform_nontrack, {tmpl_base_platform_nontrack($1, $2, $3, $4, 3)})
define(tmpl_low_platform_nontrack, {tmpl_base_platform_nontrack($1, $2, $3, $4, 1)})

define(tmpl_high_platform_crossing, {
	tmpl_high_platform($1, $2, $3, $4)
	tmpl_high_platform(, $2, $3, $4+40)
	tmpl_high_platform(, $2, $3, $4+80)
})
define(tmpl_low_platform_crossing, {
	tmpl_low_platform($1, $2, $3, $4)
	tmpl_low_platform(, $2, $3, $4+40)
	tmpl_low_platform(, $2, $3, $4+80)
})

define(tmpl_high_platform_buffer, {
	tmpl_high_platform($1, $2, $3, $4)
	tmpl_high_platform(, $2, $3, $4+30)
})
define(tmpl_low_platform_buffer, {
	tmpl_low_platform($1, $2, $3, $4)
	tmpl_low_platform(, $2, $3, $4+30)
})


define(tmpl_base_platform_buffer_end, {
	sprite(ifelse($1,,,{$1,})$2 8bpp eval($3) eval($4) 32 eval(15+$5) -11 eval(-$5) normal) ifelse($1,,,{// $1})
	sprite($2 8bpp eval($3+40) eval($4) 32 eval(15+$5) -19 eval(-$5) normal)
	sprite($2 8bpp eval($3+80) eval($4) 32 eval(15+$5) -11 eval(-$5) normal)
	sprite($2 8bpp eval($3+120) eval($4) 32 eval(15+$5) -19 eval(-$5) normal)
})

define(tmpl_high_platform_buffer_end, {tmpl_base_platform_buffer_end($1, $2, $3, $4, 3)})
define(tmpl_low_platform_buffer_end, {tmpl_base_platform_buffer_end($1, $2, $3, $4, 1)})

define(tmpl_seoul_old, {
	sprite(ifelse($1,,,{$1,}) 
		   $2 8bpp eval($3)     eval($4) 32 71 -17 -53 normal) ifelse($1,,,{// $1})
	sprite($2 8bpp eval($3+230) eval($4) 32 71 -11 -53 normal)
	sprite($2 8bpp eval($3+32)  eval($4) 32 71 -17 -37 normal)
	sprite($2 8bpp eval($3+198) eval($4) 32 71 -11 -37 normal)
	sprite($2 8bpp eval($3+64)  eval($4) 32 71 -17 -21 normal)
	sprite($2 8bpp eval($3+166) eval($4) 32 71 -11 -21 normal)
	sprite($2 8bpp eval($3+96)  eval($4) 26 71 -17  -5 normal)
	sprite($2 8bpp eval($3+140) eval($4) 26 71  -5  -5 normal)
})

define(tmpl_seoul_building, {
	sprite(ifelse($1,,,{$1,})
		   $2 8bpp eval($3)     eval($4)    32 165 -51 -133 normal) ifelse($1,,,{// $1})
	sprite($2 8bpp eval($3+446) eval($4)    32 165  23 -133 normal)
	sprite($2 8bpp eval($3+32)  eval($4)    32 165 -51 -117 normal)
	sprite($2 8bpp eval($3+414) eval($4)    32 165  23 -117 normal)
	sprite($2 8bpp eval($3+64)  eval($4)    32  69 -51 -101 normal)
	sprite($2 8bpp eval($3+382) eval($4)    32  69  23 -101 normal)
	sprite($2 8bpp eval($3+96)  eval($4)    32  69 -51  -85 normal)
	sprite($2 8bpp eval($3+350) eval($4)    32  69  23  -85 normal)
	sprite($2 8bpp eval($3+128) eval($4)    32  69 -51  -69 normal)
	sprite($2 8bpp eval($3+318) eval($4)    32  69  23  -69 normal)
	sprite($2 8bpp eval($3+160) eval($4)    68  69 -51  -53 normal)
	sprite($2 8bpp eval($3+250) eval($4)    68  69 -13  -53 normal)
	
	sprite($2 8bpp eval($3+64)  eval($4+69) 32  96 -19  -80 normal)
	sprite($2 8bpp eval($3+382) eval($4+69) 32  96  -9  -80 normal)
	sprite($2 8bpp eval($3+96)  eval($4+69) 32  96 -19  -64 normal)
	sprite($2 8bpp eval($3+350) eval($4+69) 32  96  -9  -64 normal)
	sprite($2 8bpp eval($3+128) eval($4+69) 32  96 -19  -48 normal)
	sprite($2 8bpp eval($3+318) eval($4+69) 32  96  -9  -48 normal)
	sprite($2 8bpp eval($3+160) eval($4+69) 68  96 -19  -32 normal)
	sprite($2 8bpp eval($3+250) eval($4+69) 68  96 -45  -32 normal)
})

define(tmpl_seoul_part1, {
	sprite(ifelse($1,,,{$1,})
		   $2 8bpp eval($3)     eval($4) 32 127 -19  -97 normal) ifelse($1,,,{// $1})
	sprite($2 8bpp eval($3+432) eval($4) 32 127  23  -97 normal)
	sprite($2 8bpp eval($3+32)  eval($4) 32 127 -19  -81 normal)
	sprite($2 8bpp eval($3+400) eval($4) 32 127  23  -81 normal)
	sprite($2 8bpp eval($3+64)  eval($4) 32 127 -19  -65 normal)
	sprite($2 8bpp eval($3+378) eval($4) 32 127  23  -65 normal)
	sprite($2 8bpp eval($3+96)  eval($4) 32 127 -19  -49 normal)
	sprite($2 8bpp eval($3+336) eval($4) 32 127  23  -49 normal)
	sprite($2 8bpp eval($3+128) eval($4) 32 127 -19  -33 normal)
	sprite($2 8bpp eval($3+304) eval($4) 32 127  23  -33 normal)
	sprite($2 8bpp eval($3+160) eval($4) 54 127 -19  -17 normal)
	sprite($2 8bpp eval($3+250) eval($4) 54 127 -13  -17 normal)
})
divert