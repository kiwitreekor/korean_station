define(get_overpass_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_overpass, spr_overpass+12)})
define(get_overpass_overlay_sprite, {ifelse($1, PLT_TYPE_A, spr_overpass+6, $1, PLT_TYPE_B, spr_overpass+8, $1, PLT_TYPE_C, spr_overpass+10, spr_overpass+4)})
define(get_overpass_guide_sprites, {ifelse($1, PLT_TYPE_A, {ifelse($2, 1, spr_overpass_guide, spr_overpass_guide+2)}, $1, PLT_TYPE_B, {ifelse($2, 1, spr_overpass_guide+4, spr_overpass_guide+6)})})

define(spritelayout_overpass, {
	ifelse($1, PLT_TYPE_A, {
		regular(get_overpass_sprite($2), xyz(0, 0, get_platform_height($2)), dxdydz(16, 3, 22-get_platform_height($2)), aslflags({OFFSET_SPRITE}), registers({REGISTER_OVERPASS_OFFSET}))
		$3
		regular(get_overpass_overlay_sprite($1), xyz(7, 0, 14), dxdydz(3, {ifelse($1, PLT_TYPE_A, 16, 10)}, 8), aslflags({OFFSET_SPRITE}), registers({REGISTER_OVERPASS_OFFSET}))
	}, $1, PLT_TYPE_B, {
		regular(get_overpass_overlay_sprite($1), xyz(7, 0, 14), dxdydz(3, {ifelse($1, PLT_TYPE_A, 16, 10)}, 8), aslflags({OFFSET_SPRITE}), registers({REGISTER_OVERPASS_OFFSET}))
		$3
		regular(get_overpass_sprite($2)+2, xyz(0, 13, get_platform_height($2)), dxdydz(16, 3, 22-get_platform_height($2)), aslflags({OFFSET_SPRITE}), registers({REGISTER_OVERPASS_OFFSET}))
	}, $1, PLT_TYPE_C, {
		regular(get_overpass_sprite($2), xyz(0, 0, get_platform_height($2)), dxdydz(16, 3, 22-get_platform_height($2)), aslflags({OFFSET_SPRITE}), registers({REGISTER_OVERPASS_OFFSET}))
		$3
		regular(get_overpass_overlay_sprite($1), xyz(7, 0, 14), dxdydz(3, {ifelse($1, PLT_TYPE_A, 16, 10)}, 8), aslflags({OFFSET_SPRITE}), registers({REGISTER_OVERPASS_OFFSET}))
		regular(get_overpass_sprite($2)+2, xyz(0, 13, get_platform_height($2)), dxdydz(16, 3, 22-get_platform_height($2)), aslflags({OFFSET_SPRITE}), registers({REGISTER_OVERPASS_OFFSET}))
	}, $1, PLT_TYPE_MULTI, {
		regular(get_overpass_sprite($2), xyz(0, 0, get_platform_height($2)), dxdydz(16, 3, 22-get_platform_height($2)), aslflags({OFFSET_SPRITE}), registers({REGISTER_OVERPASS_OFFSET}))
		$4
		regular(get_overpass_overlay_sprite(PLT_TYPE_C), xyz(7, 0, 14), dxdydz(3, {ifelse($1, PLT_TYPE_A, 16, 10)}, 8), aslflags({OFFSET_SPRITE}), registers({REGISTER_OVERPASS_OFFSET}))
		regular(get_overpass_sprite($3)+2, xyz(0, 13, get_platform_height($3)), dxdydz(16, 3, 22-get_platform_height($3)), aslflags({OFFSET_SPRITE}), registers({REGISTER_OVERPASS_OFFSET}))
	}, $1, PLT_TYPE_NONE, {
		regular(get_overpass_overlay_sprite($1), xyz(7, 0, 14), dxdydz(3, {ifelse($1, PLT_TYPE_A, 16, 10)}, 8), aslflags({OFFSET_SPRITE}), registers({REGISTER_OVERPASS_OFFSET}))
	}, {})
})

define(spritelayout_overpass_guide, {
	define({tmp_register}, {ifelse($4, SHADOW_TRUE, {REGISTER_OVERPASS_GUIDE_OFFSET}, {REGISTER_NONE})})
	ifelse($1, PLT_TYPE_A, {
		regular(get_overpass_guide_sprites(PLT_TYPE_A, $3), xyz(0, 0, get_platform_height($2)), dxdydz(16, 6, 0), aslflags({OFFSET_SPRITE}), registers(tmp_register))
	}, $1, PLT_TYPE_B, {
		regular(get_overpass_guide_sprites(PLT_TYPE_B, $3), xyz(0, 10, get_platform_height($2)), dxdydz(16, 6, 0), aslflags({OFFSET_SPRITE}), registers(tmp_register))
	}, $1, PLT_TYPE_C, {
		regular(get_overpass_guide_sprites(PLT_TYPE_A, $3), xyz(0, 0, get_platform_height($2)), dxdydz(16, 6, 0), aslflags({OFFSET_SPRITE}), registers(tmp_register))
		regular(get_overpass_guide_sprites(PLT_TYPE_B, $3), xyz(0, 10, get_platform_height($2)), dxdydz(16, 6, 0), aslflags({OFFSET_SPRITE}), registers(tmp_register))
	}, $1, PLT_TYPE_MULTI, {
		regular(get_overpass_guide_sprites(PLT_TYPE_A, $4), xyz(0, 0, get_platform_height($2)), dxdydz(16, 6, 0), aslflags({OFFSET_SPRITE}), registers(tmp_register))
		regular(get_overpass_guide_sprites(PLT_TYPE_B, $4), xyz(0, 10, get_platform_height($3)), dxdydz(16, 6, 0), aslflags({OFFSET_SPRITE}), registers(tmp_register))
	}, {})
})