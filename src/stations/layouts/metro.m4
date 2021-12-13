define(spritelayout_metro_pole, {
	regular(spr_metro_pole, xyz(0,0,0), dxdydz(16,0,0))
	regular(spr_metro_pole, xyz(0,16,0), dxdydz(16,0,0))
})

define(spritelayout_metro_exit, {
	regular(spr_metro_exit+$1*2, xyz(3,5,$2*8), dxdydz(10,6,10), aslflags({OFFSET_SPRITE}), registers({REGISTER_METRO_EXIT_OFFSET}))
	glass(spr_metro_exit_glass_under+$1*2, xyoff(0,0))
	glass(spr_metro_exit_glass_over+$1*2, xyoff(0,0))
	ifelse($1, 0, {
		compcol(spr_metro_polesign, xyz(13,13,$2*8), dxdydz(2,2,16))
	}, $1, 1, {
		compcol(spr_metro_polesign, xyz(1,1,$2*8), dxdydz(2,2,16))
	})
})

define(spritelayout_metro_snow_overlay, {
	_regular(spr_ground_snow_overlay, xyz(0,0,$1*8), dxdydz(16,16,0), aslflags({SKIP, OFFSET_SPRITE}), registers({REGISTER_METRO_SNOW_SKIP, REGISTER_METRO_SNOW_OFFSET}))
})

define(spritelayout_metro_tree, {
	_regular(spr_metro_tree, xyz(6,6,8), dxdydz(4,4,16), aslflags({OFFSET_SPRITE}), registers({REGISTER_METRO_TREE_OFFSET}))
})

define(spritelayout_metro_cover_custom, {
	regular($1, xyz({ifelse(eval($#>1),1,{eval($2*16)},{0})},0,8), dxdydz(16,16,0))
	spritelayout_metro_snow_overlay(1)
})

define(spritelayout_metro_cover_ttd, {
	_regular($1, xyz({ifelse(eval($#>1),1,{eval($2*16)},{0})},0,8), dxdydz(16,16,0), TTD, aslflags({OFFSET_SPRITE}), registers({REGISTER_NONE}))
	spritelayout_metro_snow_overlay(1)
})

define(spritelayout_metro_cover, {
	ifelse($2, TTD, {
		spritelayout_metro_cover_ttd($1, $3)
		ifelse(eval($#>3),1,{spritelayout_metro_cover({$1}, TTD, shift(shift(shift($@))))})
	}, {
		spritelayout_metro_cover_custom($1, $2)
		ifelse(eval($#>2),1,{spritelayout_metro_cover({$1}, shift(shift($@)))})
	})
})