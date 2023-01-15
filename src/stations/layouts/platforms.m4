define(get_platform_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_platform, $1, PLT_TYPE_LOW, spr_platform_l, spr_platform_la)})
define(get_platform_nontrack_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_platform_nontrack, $1, PLT_TYPE_LOW, spr_platform_l_nontrack, spr_platform_la_nontrack)})
define(get_platform_buffer_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_platform_buffer, $1, PLT_TYPE_LOW, spr_platform_l_buffer, spr_platform_la_buffer)})
define(get_platform_buffer_end_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_platform_buffer_end, $1, PLT_TYPE_LOW, spr_platform_l_buffer_end, spr_platform_la_buffer_end)})
define(get_platform_height, {ifelse($1, PLT_TYPE_HIGH, 3, $1, PLT_TYPE_NONE, 0, 1)})

define(spritelayout_platformA, {notransparency(get_platform_sprite($1), xyz(0, 0, 0), dxdydz(16, 6, get_platform_height($1)), aslflags({OFFSET_SPRITE}), registers({ifelse($2, SHADOW_FALSE, REGISTER_PLATFORM_OFFSET, REGISTER_PLATFORM_SHADOW_OFFSET)}))})
define(spritelayout_platformB, {notransparency(get_platform_sprite($1)+2, xyz(0, 10, 0), dxdydz(16, 6, get_platform_height($1)), aslflags({OFFSET_SPRITE}), registers({ifelse($2, SHADOW_FALSE, REGISTER_PLATFORM_OFFSET, REGISTER_PLATFORM_SHADOW_OFFSET)}))})
define(spritelayout_platform_nontrack, {notransparency(get_platform_nontrack_sprite($1), xyz(0, 0, 0), dxdydz(16, 16, get_platform_height($1)), aslflags({OFFSET_SPRITE}), registers({ifelse($2, SHADOW_FALSE, REGISTER_PLATFORM_OFFSET, REGISTER_PLATFORM_SHADOW_OFFSET)}))})

define(spritelayout_passengerA, {regular(spr_passengers, xyz(0, 0, $1), dxdydz(16, 6, 5), aslflags({SKIP, OFFSET_SPRITE}), registers({REGISTER_PASSENGER_SKIP, REGISTER_PASSENGER_OFFSET}))})
define(spritelayout_passengerB, {regular(spr_passengers+2, xyz(0, 10, $1), dxdydz(16, 6, 5), aslflags({SKIP, OFFSET_SPRITE}), registers({REGISTER_PASSENGER_SKIP, REGISTER_PASSENGER_OFFSET}))})


define(spritelayout_platform, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_platformA($2, $3)
	}, $1, PLT_TYPE_B, {
		spritelayout_platformB($2, $3)
	}, $1, PLT_TYPE_C, {
		spritelayout_platformA($2, $3) spritelayout_platformB($2, $3)
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_platformA($2, $4) spritelayout_platformB($3, $4)
	}, $1, PLT_TYPE_NONTRACK, {
		spritelayout_platform_nontrack($2, $3)
	})
})

define(spritelayout_passenger, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_passengerA(get_platform_height($2))
	}, $1, PLT_TYPE_B, {
		spritelayout_passengerB(get_platform_height($2))
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_passengerA(get_platform_height($2)) spritelayout_passengerB(get_platform_height($3))
	}, $1, PLT_TYPE_NONTRACK, {
		spritelayout_passengerA(get_platform_height($2)) spritelayout_passengerB(get_platform_height($2))
	})
})

define(platform_base, {
	spritelayout_platform($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3, $4}, {$2, $3}))
	spritelayout_passenger($1, ifelse($1, PLT_TYPE_MULTI, {$2, $3}, {$2}))
})

define(LAYOUT_TEMPLATE_MULTI, {
	define({tmp_roof}, {ifelse(eval($#>3), 1, $4, ROOF_TYPE_NONE)})
	$1($2, $3, tmp_roof)
	ifelse($2, PLT_TYPE_A, {
		$1(PLT_TYPE_MULTI, $3, PLT_TYPE_HIGH, tmp_roof)
		$1(PLT_TYPE_MULTI, $3, PLT_TYPE_LOW, tmp_roof)
		$1(PLT_TYPE_MULTI, $3, PLT_TYPE_LOW_ASPHALT, tmp_roof)
	}, $2, PLT_TYPE_B, {
		$1(PLT_TYPE_MULTI, PLT_TYPE_HIGH, $3, tmp_roof)
		$1(PLT_TYPE_MULTI, PLT_TYPE_LOW, $3, tmp_roof)
		$1(PLT_TYPE_MULTI, PLT_TYPE_LOW_ASPHALT, $3, tmp_roof)
	})
})