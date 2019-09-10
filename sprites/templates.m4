divert(-1)
// $1=label, $2=filename, $3=xpos, $4=ypos
define(tmpl_base_platform, {
	sprite(ifelse($1,,,{$1,})$2 8bpp     eval($3) eval($4) 44 eval(21+$5) -31 eval(-$5) normal) ifelse($1,,,{// $1})
	sprite($2 8bpp  eval($3+50) eval($4) 44 eval(21+$5) -11 eval(-$5) normal)
	sprite($2 8bpp eval($3+100) eval($4) 44 eval(21+$5) -31 eval(-$5) normal)
	sprite($2 8bpp eval($3+150) eval($4) 44 eval(21+$5) -11 eval(-$5) normal)
})

define(tmpl_base_platform_nontrack, {
	sprite(ifelse($1,,,{$1,})$2 8bpp    eval($3) eval($4) 64 eval(31+$5) -31 eval(-$5) normal) ifelse($1,,,{// $1})
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
	tmpl_high_platform_nontrack($1, $2, $3, $4)
	tmpl_high_platform_nontrack(, $2, $3+140, $4)
	tmpl_high_platform_nontrack(, $2, $3, $4+50)
	tmpl_high_platform_nontrack(, $2, $3+140, $4+50)
	tmpl_high_platform_nontrack(, $2, $3+280, $4)
	tmpl_high_platform_nontrack(, $2, $3+280, $4+50)
})
define(tmpl_low_platform_buffer, {
	tmpl_low_platform_nontrack($1, $2, $3, $4)
	tmpl_low_platform_nontrack(, $2, $3+140, $4)
	tmpl_low_platform_nontrack(, $2, $3, $4+50)
	tmpl_low_platform_nontrack(, $2, $3+140, $4+50)
	tmpl_low_platform_nontrack(, $2, $3+280, $4)
	tmpl_low_platform_nontrack(, $2, $3+280, $4+50)
})
divert