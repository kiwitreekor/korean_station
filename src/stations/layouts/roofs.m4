define(get_roof_sprite, {
	ifelse($1, ROOF_TYPE_NORMAL, {
		ifelse($2, ROOF_TYPE_B, spr_roofB, spr_roofA)
	}, $1, ROOF_TYPE_OVERPASS, {
		ifelse($2, ROOF_TYPE_B, spr_roofB_overpass, spr_roofA_overpass)
	}, $1, ROOF_TYPE_STAIR_FRONT, {
		ifelse($2, ROOF_TYPE_B, spr_roofB_overpass_stair_front, spr_roofA_overpass_stair_front)
	}, $1, ROOF_TYPE_STAIR_BACK, {
		ifelse($2, ROOF_TYPE_B, spr_roofB_overpass_stair_back, spr_roofA_overpass_stair_back)
	}, {})
})

define(spritelayout_roofA_A, {
	regular(spr_poles, xyz(0, 0, $1), dxdydz(16, 0, 10))
	recolour(get_roof_sprite($2, ROOF_TYPE_A), xyz(0, 0, 10+$1), dxdydz(16, 6, 3), -0x42D, aslflags({OFFSET_SPRITE, OFFSET_RCSPRITE}), registers({REGISTER_ROOF_OFFSET, REGISTER_ROOF_RECOLOUR}))
})

define(spritelayout_roofA_B, {
	regular(spr_poles+2, xyz(0, 16, $1), dxdydz(16, 0, 10))
	recolour(get_roof_sprite($2, ROOF_TYPE_A)+2, xyz(0, 10, 10+$1), dxdydz(16, {ifelse($2, ROOF_TYPE_NORMAL, 6, 3)}, 3), -0x42D, aslflags({OFFSET_SPRITE, OFFSET_RCSPRITE}), registers({REGISTER_ROOF_OFFSET, REGISTER_ROOF_RECOLOUR}))
})

define(spritelayout_roofA_stair_overlay, {
	ifelse($1, PLT_TYPE_A, {}, {
		recolour(get_roof_sprite($3, ROOF_TYPE_A)+4, xyz(0, 10, 10+get_platform_height($2)), dxdydz(16, 6, 3), -0x42D, aslflags({OFFSET_SPRITE, OFFSET_RCSPRITE}), registers({REGISTER_ROOF_OFFSET, REGISTER_ROOF_RECOLOUR}))
	})
})

define(spritelayout_roofA_nontrack, {
	regular(spr_poles, xyz(0, 0, $1), dxdydz(16, 0, 10))
	regular(spr_poles+2, xyz(0, 16, $1), dxdydz(16, 0, 10))
	recolour(get_roof_sprite($2, ROOF_TYPE_A)+4, xyz(0, 0, 10+$1), dxdydz(16, 16, 3), -0x42D, aslflags({OFFSET_SPRITE, OFFSET_RCSPRITE}), registers({REGISTER_ROOF_OFFSET, REGISTER_ROOF_RECOLOUR}))
})

define(spritelayout_roofA, {
	define({tmp_type}, {ifelse($1, PLT_TYPE_MULTI, $4, $3)})
	ifelse($1, PLT_TYPE_A, {
		spritelayout_roofA_A(get_platform_height($2), tmp_type)
	}, $1, PLT_TYPE_B, {
		spritelayout_roofA_B(get_platform_height($2), tmp_type)
	}, $1, PLT_TYPE_C, {
		spritelayout_roofA_A(get_platform_height($2), tmp_type)
		spritelayout_roofA_B(get_platform_height($2), tmp_type)
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_roofA_A(get_platform_height($2), tmp_type)
		spritelayout_roofA_B(get_platform_height($3), tmp_type)
	}, $1, PLT_TYPE_NONTRACK, {
		spritelayout_roofA_nontrack(get_platform_height($2), tmp_type)
	}, {})
})


define(spritelayout_roofB_A, {
	regular(spr_poles+4, xyz(0, 3, $1), dxdydz(16, 0, 10))
	recolour(get_roof_sprite($2, ROOF_TYPE_B), xyz(0, 0, 10+$1), dxdydz(16, 6, 3), -0x42D, aslflags({OFFSET_SPRITE, OFFSET_RCSPRITE}), registers({REGISTER_ROOF_OFFSET, REGISTER_ROOF_RECOLOUR}))
})

define(spritelayout_roofB_B, {
	regular(spr_poles+6, xyz(0, 13, $1), dxdydz(16, 0, 10))
	recolour(get_roof_sprite($2, ROOF_TYPE_B)+2, xyz(0, 10, 10+$1), dxdydz(16, {ifelse($2, ROOF_TYPE_NORMAL, 6, 3)}, 3), -0x42D, aslflags({OFFSET_SPRITE, OFFSET_RCSPRITE}), registers({REGISTER_ROOF_OFFSET, REGISTER_ROOF_RECOLOUR}))
	ifelse($2, ROOF_TYPE_STAIR, {
		recolour(get_roof_sprite($2, ROOF_TYPE_B)+4, xyz(0, 10, 10+$1), dxdydz(16, 6, 3), -0x42D, aslflags({OFFSET_SPRITE, OFFSET_RCSPRITE}), registers({REGISTER_ROOF_OFFSET, REGISTER_ROOF_RECOLOUR}))
	})
})

define(spritelayout_roofB_stair_overlay, {
	ifelse($1, PLT_TYPE_A, {}, {
		recolour(get_roof_sprite($3, ROOF_TYPE_B)+4, xyz(0, 10, 10+get_platform_height($2)), dxdydz(16, 6, 3), -0x42D, aslflags({OFFSET_SPRITE, OFFSET_RCSPRITE}), registers({REGISTER_ROOF_OFFSET, REGISTER_ROOF_RECOLOUR}))
	})
})

define(spritelayout_roofB_nontrack, {
	regular(spr_poles+4, xyz(0, 4, $1), dxdydz(16, 0, 10))
	regular(spr_poles+6, xyz(0, 12, $1), dxdydz(16, 0, 10))
	recolour(get_roof_sprite($2, ROOF_TYPE_B)+4, xyz(0, 0, 10+$1), dxdydz(16, 16, 3), -0x42D, aslflags({OFFSET_SPRITE, OFFSET_RCSPRITE}), registers({REGISTER_ROOF_OFFSET, REGISTER_ROOF_RECOLOUR}))
})

define(spritelayout_roofB, {
	define({tmp_type}, {ifelse($1, PLT_TYPE_MULTI, $4, $3)})
	ifelse($1, PLT_TYPE_A, {
		spritelayout_roofB_A(get_platform_height($2), tmp_type)
	}, $1, PLT_TYPE_B, {
		spritelayout_roofB_B(get_platform_height($2), tmp_type)
	}, $1, PLT_TYPE_C, {
		spritelayout_roofB_A(get_platform_height($2), tmp_type)
		spritelayout_roofB_B(get_platform_height($2), tmp_type)
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_roofB_A(get_platform_height($2), tmp_type)
		spritelayout_roofB_B(get_platform_height($3), tmp_type)
	}, $1, PLT_TYPE_NONTRACK, {
		spritelayout_roofB_nontrack(get_platform_height($2), tmp_type)
	}, {})
})


define(spritelayout_roof, {
	define({tmp_roof_type}, {ifelse(eval($#>3 && $2 != PLT_TYPE_MULTI), 1, $4, eval($#>4 && $2 == PLT_TYPE_MULTI), 1, $5, ROOF_TYPE_NORMAL)})
	ifelse($1, ROOF_TYPE_A, {spritelayout_roofA($2, ifelse($2, PLT_TYPE_MULTI, {$3, $4}, {$3}), tmp_roof_type)}, $1, ROOF_TYPE_B, {spritelayout_roofB($2, ifelse($2, PLT_TYPE_MULTI, {$3, $4}, {$3}), tmp_roof_type)})
})

define(spritelayout_roof_stair_overlay, {
	define({tmp_roof_type}, {ifelse(eval($#>3 && $2 != PLT_TYPE_MULTI), 1, $4, eval($#>4 && $2 == PLT_TYPE_MULTI), 1, $5, ROOF_TYPE_NORMAL)})
	ifelse($1, ROOF_TYPE_A, {spritelayout_roofA_stair_overlay($2, ifelse($2, PLT_TYPE_MULTI, {$4}, {$3}), tmp_roof_type)}, $1, ROOF_TYPE_B, {spritelayout_roofB_stair_overlay($2, ifelse($2, PLT_TYPE_MULTI, {$4}, {$3}), tmp_roof_type)})
})