define(get_building_sprite, {ifelse($1, MODULAR_TYPE_LOW, spr_building_low, spr_building_high)})
define(get_building_overpass_sprite, {ifelse($1, MODULAR_TYPE_LOW, spr_bdoverpass_low, spr_bdoverpass_high)})
define(get_building_height, {ifelse($1, MODULAR_TYPE_LOW, 26, 50)})
define(get_building_pole_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_building_pole_hp, $1, PLT_TYPE_LOW, spr_building_pole_lp, $1, PLT_TYPE_LOW_ASPHALT, spr_building_pole_lp, spr_building_pole)})

define(spritelayout_building, {compcol(get_building_sprite($1), xyz(0, 0, 0), dxdydz(16, 16, get_building_height($1)), aslflags({OFFSET_SPRITE}), registers({REGISTER_MODULAR_OFFSET+$2}))})

define(spritelayout_building_overpass, {compcol(get_building_overpass_sprite($1), xyz(0, 0, 12), dxdydz(16, 16, get_building_height($1)-12), aslflags({OFFSET_SPRITE}), registers({REGISTER_MODULAR_OVERPASS_OFFSET}))})
define(spritelayout_building_pole, {regular(get_building_pole_sprite($1), xyz( 0, eval($2*16), get_platform_height($1)), dxdydz(16, 0, eval(12 - get_platform_height($1))), aslflags({SKIP}), registers({REGISTER_MODULAR_POLE_SKIP + $2}))})

define(building_overpass_pole, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_building_pole($2, 0)
		spritelayout_building_pole(PLT_TYPE_NONE, 1)
	}, $1, PLT_TYPE_B, {
		spritelayout_building_pole(PLT_TYPE_NONE, 0)
		spritelayout_building_pole($2, 1)
	}, $1, PLT_TYPE_C, {
		spritelayout_building_pole($2, 0)
		spritelayout_building_pole($2, 1)
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_building_pole($2, 0)
		spritelayout_building_pole($3, 1)
	}, $1, PLT_TYPE_NONE, {
		spritelayout_building_pole(PLT_TYPE_NONE, 0)
		spritelayout_building_pole(PLT_TYPE_NONE, 1)
	})
})