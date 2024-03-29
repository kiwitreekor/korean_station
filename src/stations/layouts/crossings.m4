define(get_platform_crossing_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_platform_ch, $1, PLT_TYPE_LOW, spr_platform_c, spr_platform_ca)})

define(spritelayout_crossingA, {
	notransparency(get_platform_crossing_sprite($1)+$2*4, xyz(0, 0, 0), dxdydz(16, 6, get_platform_height($1)), aslflags({OFFSET_SPRITE}), registers({ifelse($3, 0, REGISTER_CROSSING_OFFSET, REGISTER_CROSSING_SHADOW_OFFSET)}))
})
define(spritelayout_crossingB, {
	notransparency(get_platform_crossing_sprite($1)+$2*4+2, xyz(0, 10, 0), dxdydz(16, 6, get_platform_height($1)), aslflags({OFFSET_SPRITE}), registers({ifelse($3, 0, REGISTER_CROSSING_OFFSET, REGISTER_CROSSING_SHADOW_OFFSET)}))
})

define(spritelayout_crossing, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_crossingA($2, $3, $4)
	}, $1, PLT_TYPE_B, {
		spritelayout_crossingB($2, $3, $4)
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_crossingA($2, $4, $5)
		spritelayout_crossingB($3, $4, $5)
	}, {
		spritelayout_crossingA($2, $3, $4)
		spritelayout_crossingB($2, $3, $4)
	})
})

define(LAYOUT_TEMPLATE_CROSSING_BASE, {
	define({tmp_ground}, {ifelse($1, PLT_TYPE_MULTI, $5, $4)})
	define({tmp_roof}, {ifelse($1, PLT_TYPE_MULTI, $4, $3)})
	define({tmp_shadow}, eval(tmp_roof != ROOF_TYPE_NONE))
	xtile({
		tmp_ground
		notransparency(spr_crossing, xyz(7, 0, 0), dxdydz(3, 16, 0))
		spritelayout_catenary($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}))
		spritelayout_crossing($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}), 0, tmp_shadow)
		spritelayout_passenger($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}))
		spritelayout_roof(tmp_roof, $1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}))
	})
	xtile({
		tmp_ground
		notransparency(spr_crossing, xyz(13, 0, 0), dxdydz(3, 16, 0))
		spritelayout_catenary($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}))
		spritelayout_crossing($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}), 1, tmp_shadow)
		spritelayout_passenger($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}))
		spritelayout_roof(tmp_roof, $1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}))
	})
	xtile({
		tmp_ground
		notransparency(spr_crossing, xyz(0, 0, 0), dxdydz(3, 16, 0))
		spritelayout_catenary($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}))
		spritelayout_crossing($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}), 2, tmp_shadow)
		spritelayout_passenger($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}))
		spritelayout_roof(tmp_roof, $1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}))
	})
})

define(LAYOUT_TEMPLATE_CROSSING_SINGLE, {
	define({tmp_roof}, {ifelse($1, PLT_TYPE_MULTI, $4, $3)})
	LAYOUT_TEMPLATE_CROSSING_BASE($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}), tmp_roof, {spritelayout_ground()}) 
	LAYOUT_TEMPLATE_CROSSING_BASE($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}), tmp_roof, {spritelayout_ground_snow()})
})

define(LAYOUT_TEMPLATE_CROSSING, {
	define({tmp_roof}, {ifelse(eval($#>2), 1, $3, ROOF_TYPE_NONE)})
	LAYOUT_TEMPLATE_CROSSING_SINGLE($1, $2, tmp_roof) 
	ifelse($1, PLT_TYPE_A, {
		LAYOUT_TEMPLATE_CROSSING_SINGLE(PLT_TYPE_MULTI, $2, PLT_TYPE_HIGH, tmp_roof)
		LAYOUT_TEMPLATE_CROSSING_SINGLE(PLT_TYPE_MULTI, $2, PLT_TYPE_LOW, tmp_roof)
		LAYOUT_TEMPLATE_CROSSING_SINGLE(PLT_TYPE_MULTI, $2, PLT_TYPE_LOW_ASPHALT, tmp_roof)
	}, $1, PLT_TYPE_B, {
		LAYOUT_TEMPLATE_CROSSING_SINGLE(PLT_TYPE_MULTI, PLT_TYPE_HIGH, $2, tmp_roof)
		LAYOUT_TEMPLATE_CROSSING_SINGLE(PLT_TYPE_MULTI, PLT_TYPE_LOW, $2, tmp_roof)
		LAYOUT_TEMPLATE_CROSSING_SINGLE(PLT_TYPE_MULTI, PLT_TYPE_LOW_ASPHALT, $2, tmp_roof)
	})
})