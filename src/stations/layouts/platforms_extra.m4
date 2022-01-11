define(get_catenary_pole_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_catenary_pole+2, $1, PLT_TYPE_LOW, spr_catenary_pole+4, $1, PLT_TYPE_LOW, spr_catenary_pole+4, spr_catenary_pole)})

define(spritelayout_platform_fenceA, {regular(spr_platform_fence, xyz(0, 0, get_platform_height($1)), dxdydz(16, 1, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_A_FENCE_SKIP}))})
define(spritelayout_platform_fenceB, {regular(spr_platform_fence, xyz(0, 16, get_platform_height($1)), dxdydz(16, 1, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_B_FENCE_SKIP}))})

define(spritelayout_track_fenceA, {
	compcol(spr_track_fence, xyz(0, 1, 0), dxdydz(16, 1, 6), aslflags({SKIP, OFFSET_SPRITE}), registers({REGISTER_TRACK_A_FENCE_SKIP, REGISTER_TRACK_CUSTOM_FENCE_OFFSET}))
})

define(spritelayout_track_fenceB, {
	compcol(spr_track_fence+2, xyz(0, 15, 0), dxdydz(16, 1, 6), aslflags({SKIP, OFFSET_SPRITE}), registers({REGISTER_TRACK_B_FENCE_SKIP, REGISTER_TRACK_CUSTOM_FENCE_OFFSET}))
})

define(spritelayout_catenary_pole, {
	regular(get_catenary_pole_sprite($1)+8, xyz(8, 0, 10), dxdydz(1, 1, 6), aslflags({SKIP, OFFSET_XY}), registers({REGISTER_CATENARY_SKIP, ifelse(_ORIENT, ORIENT_NE, {REGISTER_CATENARY_OFFSET, REGISTER_NONE}, {REGISTER_NONE, REGISTER_CATENARY_OFFSET})}))
	regular(get_catenary_pole_sprite($2), xyz(8, 16, 10), dxdydz(1, 1, 6), aslflags({SKIP, OFFSET_XY}), registers({REGISTER_CATENARY_SKIP, ifelse(_ORIENT, ORIENT_NE, {REGISTER_CATENARY_OFFSET, REGISTER_NONE}, {REGISTER_NONE, REGISTER_CATENARY_OFFSET})}))
})

define(spritelayout_catenaryA, {
	regular(spr_catenary+2, xyz(8, 0, 20), dxdydz(0, 16, 4), aslflags({SKIP, OFFSET_XY}), registers({REGISTER_CATENARY_SKIP, ifelse(_ORIENT, ORIENT_NE, {REGISTER_CATENARY_OFFSET, REGISTER_NONE}, {REGISTER_NONE, REGISTER_CATENARY_OFFSET})}))
	spritelayout_catenary_pole($1, $2)
})

define(spritelayout_catenaryB, {
	regular(spr_catenary, xyz(8, 0, 20), dxdydz(0, 16, 4), aslflags({SKIP, OFFSET_XY}), registers({REGISTER_CATENARY_SKIP, ifelse(_ORIENT, ORIENT_NE, {REGISTER_CATENARY_OFFSET, REGISTER_NONE}, {REGISTER_NONE, REGISTER_CATENARY_OFFSET})}))
	spritelayout_catenary_pole($1, $2)
})

define(spritelayout_catenaryC, {
	regular(spr_catenary, xyz(8, 0, 20), dxdydz(0, 16, 4), aslflags({SKIP, OFFSET_SPRITE, OFFSET_XY}), registers({REGISTER_CATENARY_SKIP, REGISTER_CATENARY_SPRITE_OFFSET, ifelse(_ORIENT, ORIENT_NE, {REGISTER_CATENARY_OFFSET, REGISTER_NONE}, {REGISTER_NONE, REGISTER_CATENARY_OFFSET})}))
	spritelayout_catenary_pole($1, $2)
})

define(spritelayout_catenary_single_A, {regular(spr_catenary_single+2, xyz(8, 10, 0), dxdydz(1, 1, 10), aslflags({SKIP}), registers({REGISTER_CATENARY_SINGLE_SKIP}))})
define(spritelayout_catenary_single_B, {regular(spr_catenary_single, xyz(8, 6, 0), dxdydz(1, 1, 10), aslflags({SKIP}), registers({REGISTER_CATENARY_SINGLE_SKIP}))})
define(spritelayout_catenary_single_C, {
	regular(spr_catenary_single+2, xyz(8, 10, 0), dxdydz(1, 1, 10), aslflags({SKIP}), registers({REGISTER_CATENARY_SINGLE_A_SKIP}))
	regular(spr_catenary_single, xyz(8, 6, 0), dxdydz(1, 1, 10), aslflags({SKIP}), registers({REGISTER_CATENARY_SINGLE_B_SKIP}))
})

define(spritelayout_catenary_double, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_catenaryA($2, PLT_TYPE_NONE)
	}, $1, PLT_TYPE_B, {
		spritelayout_catenaryB(PLT_TYPE_NONE, $2)
	}, $1, PLT_TYPE_C, {
		spritelayout_catenaryC($2, $2)
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_catenaryC($2, $3)
	}, {
		spritelayout_catenaryC(PLT_TYPE_NONE, PLT_TYPE_NONE)
	})
})

define(spritelayout_catenary_single, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_catenary_single_A()
	}, $1, PLT_TYPE_B, {
		spritelayout_catenary_single_B()
	}, $1, PLT_TYPE_C, {
		spritelayout_catenary_single_C()
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_catenary_single_C()
	}, {
		spritelayout_catenary_single_C()
	})
})

define(spritelayout_catenary, {
	spritelayout_catenary_double($@)
	spritelayout_catenary_single($@)
})

define(spritelayout_fence, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_platform_fenceA($2) spritelayout_track_fenceB()
	}, $1, PLT_TYPE_B, {
		spritelayout_track_fenceA() spritelayout_platform_fenceB($2)
	}, $1, PLT_TYPE_C, {
		spritelayout_platform_fenceA($2) spritelayout_platform_fenceB($2)
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_platform_fenceA($2) spritelayout_platform_fenceB($3)
	}, $1, PLT_TYPE_NONTRACK, {
		spritelayout_platform_fenceA($2) spritelayout_platform_fenceB($2)
	}, {
		spritelayout_track_fenceA() spritelayout_track_fenceB()
	})
})