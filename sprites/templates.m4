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
		   $2 8bpp eval($3)     eval($4)    32 165 -21 -116 normal) ifelse($1,,,{// $1})
	sprite($2 8bpp eval($3+446) eval($4)    32 165 -10 -116 normal)
	sprite($2 8bpp eval($3+32)  eval($4)    32 165 -53 -116 normal)
	sprite($2 8bpp eval($3+414) eval($4)    32 165  22 -116 normal)
	sprite($2 8bpp eval($3+64)  eval($4)    32  69 -53 -100 normal)
	sprite($2 8bpp eval($3+382) eval($4)    32  69  22 -100 normal)
	sprite($2 8bpp eval($3+96)  eval($4)    32  69 -53  -84 normal)
	sprite($2 8bpp eval($3+350) eval($4)    32  69  22  -84 normal)
	sprite($2 8bpp eval($3+128) eval($4)    32  69 -53  -68 normal)
	sprite($2 8bpp eval($3+318) eval($4)    32  69  22  -68 normal)
	sprite($2 8bpp eval($3+160) eval($4)    68  69 -53  -52 normal)
	sprite($2 8bpp eval($3+250) eval($4)    68  69 -14  -52 normal)
	
	sprite($2 8bpp eval($3+64)  eval($4+69) 32  96 -21  -79 normal)
	sprite($2 8bpp eval($3+382) eval($4+69) 32  96 -10  -79 normal)
	sprite($2 8bpp eval($3+96)  eval($4+69) 32  96 -21  -63 normal)
	sprite($2 8bpp eval($3+350) eval($4+69) 32  96 -10  -63 normal)
	sprite($2 8bpp eval($3+128) eval($4+69) 32  96 -21  -47 normal)
	sprite($2 8bpp eval($3+318) eval($4+69) 32  96 -10  -47 normal)
	sprite($2 8bpp eval($3+160) eval($4+69) 68  96 -21  -31 normal)
	sprite($2 8bpp eval($3+250) eval($4+69) 68  96 -46  -31 normal)
})

define(tmpl_seoul_part1, {
	sprite(ifelse($1,,,{$1,})
		   $2 8bpp eval($3)     eval($4)    54 127 -21  -96 normal) ifelse($1,,,{// $1})
	sprite($2 8bpp eval($3+410) eval($4)    54 127 -32  -96 normal)
	sprite($2 8bpp eval($3+54)  eval($4+80) 32  47   1    0 normal)
	sprite($2 8bpp eval($3+378) eval($4)    32  47 -32    0 normal)
	sprite($2 8bpp eval($3+54)  eval($4)    64 127 -31  -64 normal)
	sprite($2 8bpp eval($3+346) eval($4)    64 127 -32  -64 normal)
	sprite($2 8bpp eval($3+118) eval($4)    32 127   1  -48 normal)
	sprite($2 8bpp eval($3+314) eval($4)    32 127 -32  -48 normal)
	sprite($2 8bpp eval($3+150) eval($4)    32 127   1  -32 normal)
	sprite($2 8bpp eval($3+282) eval($4)    32 127 -32  -32 normal)
	sprite($2 8bpp eval($3+182) eval($4)    32 127   1  -16 normal)
	sprite($2 8bpp eval($3+250) eval($4)    32 127 -32  -16 normal)
})

define(tmpl_seoul_part1_roof, {
		sprite(ifelse($1,,,{$1,})
		       $2 8bpp eval($3)    eval($4) 78 39 ifelse($5,CHILDSPRITE_FALSE,{-46 -1},{0 0}) normal) ifelse($1,,,{// $1})
		sprite($2 8bpp eval($3+90) eval($4) 78 39 ifelse($5,CHILDSPRITE_FALSE,{-32 -1},{0 0}) normal)
})

define(tmpl_seoul_part3A, {
		sprite(ifelse($1,,,{$1,})
		       $2 8bpp eval($3)     eval($4) 32 59 ifelse($5,CHILDSPRITE_FALSE,{-31  -7},{0 0}) normal) ifelse($1,,,{// $1})
		sprite($2 8bpp eval($3+174) eval($4) 32 59 ifelse($5,CHILDSPRITE_FALSE,{  1  -7},{0 0}) normal)
		sprite($2 8bpp eval($3+32)  eval($4) 64 59 ifelse($5,CHILDSPRITE_FALSE,{-31 -23},{0 0}) normal)
		sprite($2 8bpp eval($3+110) eval($4) 64 59 ifelse($5,CHILDSPRITE_FALSE,{-31 -23},{0 0}) normal)
})

define(tmpl_seoul_part3B, {
		sprite(ifelse($1,,,{$1,})
		       $2 8bpp eval($3)     eval($4) 32 50 ifelse($5,CHILDSPRITE_FALSE,{-31   2},{0 0}) normal) ifelse($1,,,{// $1})
		sprite($2 8bpp eval($3+174) eval($4) 32 50 ifelse($5,CHILDSPRITE_FALSE,{  1   2},{0 0}) normal)
		sprite($2 8bpp eval($3+32)  eval($4) 64 50 ifelse($5,CHILDSPRITE_FALSE,{-31 -14},{0 0}) normal)
		sprite($2 8bpp eval($3+110) eval($4) 64 50 ifelse($5,CHILDSPRITE_FALSE,{-31 -14},{0 0}) normal)
})

define(tmpl_seoul_part4A, {
		sprite(ifelse($1,,,{$1,})
		       $2 8bpp eval($3)     eval($4) 56 90 -31 -58 normal) ifelse($1,,,{// $1})
		sprite($2 8bpp eval($3+214) eval($4) 56 90 -24 -58 normal)
		sprite($2 8bpp eval($3+56)  eval($4) 32 90  -7 -42 normal)
		sprite($2 8bpp eval($3+182) eval($4) 32 90 -24 -42 normal)
		sprite($2 8bpp eval($3+88)  eval($4) 32 90  -7 -26 normal)
		sprite($2 8bpp eval($3+150) eval($4) 32 90 -24 -26 normal)
})

define(tmpl_seoul_part4B, {
		sprite(ifelse($1,,,{$1,})
		       $2 8bpp eval($3)     eval($4)     32 144 -31 -112 normal) ifelse($1,,,{// $1})
		sprite($2 8bpp eval($3+524) eval($4)     32 144   0 -112 normal)
		sprite($2 8bpp eval($3+32)  eval($4)     64 128 -31  -96 normal)
		sprite($2 8bpp eval($3+460) eval($4)     64 128 -32  -96 normal)
		sprite($2 8bpp eval($3+96)  eval($4)     32  96   1  -80 normal)
		sprite($2 8bpp eval($3+428) eval($4)     32  96 -32  -80 normal)
		sprite($2 8bpp eval($3+128) eval($4)     32  80   1  -64 normal)
		sprite($2 8bpp eval($3+396) eval($4)     32  80 -32  -64 normal)
		sprite($2 8bpp eval($3+160) eval($4)     32  64   1  -48 normal)
		sprite($2 8bpp eval($3+364) eval($4)     32  64 -32  -48 normal)
		sprite($2 8bpp eval($3+192) eval($4)     32  48   1  -32 normal)
		sprite($2 8bpp eval($3+332) eval($4)     32  48 -32  -32 normal)
		
		sprite($2 8bpp eval($3+32)  eval($4+128) 64  32 -31    0 normal)
		sprite($2 8bpp eval($3+460) eval($4+128) 64  32 -32    0 normal)
		sprite($2 8bpp eval($3+96)  eval($4+96)  32  48   1  -16 normal)
		sprite($2 8bpp eval($3+428) eval($4+96)  32  48 -32  -16 normal)
		sprite($2 8bpp eval($3+128) eval($4+80)  32  48   1  -16 normal)
		sprite($2 8bpp eval($3+396) eval($4+80)  32  48 -32  -16 normal)
		sprite($2 8bpp eval($3+160) eval($4+64)  32  48   1  -16 normal)
		sprite($2 8bpp eval($3+364) eval($4+64)  32  48 -32  -16 normal)
		sprite($2 8bpp eval($3+192) eval($4+48)  32  48   1  -16 normal)
		sprite($2 8bpp eval($3+332) eval($4+48)  32  48 -32  -16 normal)
		sprite($2 8bpp eval($3+224) eval($4)     32  80   1  -48 normal)
		sprite($2 8bpp eval($3+300) eval($4)     32  80 -32  -48 normal)
})

define(tmpl_seoul_car, {
		sprite(ifelse($1,,,{$1,})
		       $2 8bpp eval($3)     eval($4)     52 26 -19  0 normal) ifelse($1,,,{// $1})
		sprite($2 8bpp eval($3+280) eval($4)     52 26 -31  0 normal)
		sprite($2 8bpp eval($3+70)  eval($4)     52 26 -19  0 normal)
		sprite($2 8bpp eval($3+350) eval($4)     52 26 -31  0 normal)
		sprite($2 8bpp eval($3+140) eval($4)     52 26 -19  0 normal)
		sprite($2 8bpp eval($3+420) eval($4)     52 26 -31  0 normal)
		sprite($2 8bpp eval($3+210) eval($4)     52 26 -19  0 normal)
		sprite($2 8bpp eval($3+490) eval($4)     52 26 -31  0 normal)
})

define(tmpl_gangneung, {
		sprite(ifelse($1,,,{$1,})
		       $2 8bpp eval($3)     eval($4+32)  64 32 -31   0 normal) ifelse($1,,,{// $1})
		sprite($2 8bpp eval($3+400) eval($4+32)  64 32 -31   0 normal)
		sprite($2 8bpp eval($3+32)  eval($4+16)  64 32 -31   0 normal)
		sprite($2 8bpp eval($3+368) eval($4+16)  64 32 -31   0 normal)
		sprite($2 8bpp eval($3+64)  eval($4)     64 32 -31   0 normal)
		sprite($2 8bpp eval($3+336) eval($4)     64 32 -31   0 normal)
		
		sprite($2 8bpp eval($3+32)  eval($4+48)  64 32 -31   0 normal)
		sprite($2 8bpp eval($3+368) eval($4+48)  64 32 -31   0 normal)
		sprite($2 8bpp eval($3+64)  eval($4+32)  64 32 -31   0 normal)
		sprite($2 8bpp eval($3+336) eval($4+32)  64 32 -31   0 normal)
		sprite($2 8bpp eval($3+96)  eval($4)     64 48 -31 -16 normal)
		sprite($2 8bpp eval($3+304) eval($4)     64 48 -31 -16 normal)
		
		sprite($2 8bpp eval($3+64)  eval($4+64)  64 32 -31   0 normal)
		sprite($2 8bpp eval($3+336) eval($4+64)  64 32 -31   0 normal)
		sprite($2 8bpp eval($3+96)  eval($4+48)  64 32 -31   0 normal)
		sprite($2 8bpp eval($3+304) eval($4+48)  64 32 -31   0 normal)
		sprite($2 8bpp eval($3+128) eval($4)     64 64 -31 -32 normal)
		sprite($2 8bpp eval($3+272) eval($4)     64 64 -31 -32 normal)
		
		sprite($2 8bpp eval($3+96)  eval($4+80)  64 31 -31   0 normal)
		sprite($2 8bpp eval($3+304) eval($4+80)  64 31 -31   0 normal)
		sprite($2 8bpp eval($3+128) eval($4+64)  64 31 -31   0 normal)
		sprite($2 8bpp eval($3+272) eval($4+64)  64 31 -31   0 normal)
		sprite($2 8bpp eval($3+160) eval($4+48)  64 31 -31   0 normal)
		sprite($2 8bpp eval($3+240) eval($4+48)  64 31 -31   0 normal)
})

define(tmpl_psd, {
		sprite(ifelse($1,,,{$1,})dnl
$2 8bpp eval($3) eval($4)    32 23 -31  -8 normal) ifelse($1,,,{// $1})
		sprite($2 8bpp eval($3) eval($4+30) 32 23   1  -8 normal)
})

define(tmpl_psd_glass, {
		sprite(ifelse($1,,,{$1,})dnl
$2 8bpp eval($3)     eval($4)    32 21   0   0 normal) ifelse($1,,,{// $1})
		sprite($2 8bpp eval($3)     eval($4+30) 32 21   0   0 normal)
		sprite($2 8bpp eval($3+40)  eval($4)    32 21   0   0 normal)
		sprite($2 8bpp eval($3+40)  eval($4+30) 32 21   0   0 normal)
		sprite($2 8bpp eval($3+80)  eval($4)    32 21   0   0 normal)
		sprite($2 8bpp eval($3+80)  eval($4+30) 32 21   0   0 normal)
})
divert