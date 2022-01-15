define(get_platform_start_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_platform_start, $1, PLT_TYPE_LOW, spr_platform_l_start, spr_platform_la_start)})
define(get_platform_end_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_platform_end, $1, PLT_TYPE_LOW, spr_platform_l_end, spr_platform_la_end)})
define(get_platform_startend_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_platform_startend, $1, PLT_TYPE_LOW, spr_platform_l_startend, spr_platform_la_startend)})

define(get_platform_nontrack_start_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_platform_nontrack_start, $1, PLT_TYPE_LOW, spr_platform_l_nontrack_start, spr_platform_la_nontrack_start)})
define(get_platform_nontrack_end_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_platform_nontrack_end, $1, PLT_TYPE_LOW, spr_platform_l_nontrack_end, spr_platform_la_nontrack_end)})
define(get_platform_nontrack_startend_sprite, {ifelse($1, PLT_TYPE_HIGH, spr_platform_nontrack_startend, $1, PLT_TYPE_LOW, spr_platform_l_nontrack_startend, spr_platform_la_nontrack_startend)})

define(spritelayout_platform_fenceA_front, {
	regular(spr_platform_end_fence, xyz(8, 0, get_platform_height($1)), dxdydz(8, 1, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_A_FENCE_SKIP}))
	regular(spr_platform_end_fence+2, xyz(8, 0, get_platform_height($1)), dxdydz(0, 6, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_END_FENCE_SKIP}))
})
define(spritelayout_platform_fenceA_back, {
	regular(spr_platform_end_fence, xyz(0, 0, get_platform_height($1)), dxdydz(8, 1, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_A_FENCE_SKIP}))
	regular(spr_platform_end_fence+2, xyz(8, 0, get_platform_height($1)), dxdydz(0, 6, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_END_FENCE_SKIP}))
})
define(spritelayout_platform_fenceB_front, {
	regular(spr_platform_end_fence, xyz(8, 16, get_platform_height($1)), dxdydz(8, 1, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_B_FENCE_SKIP}))
	regular(spr_platform_end_fence+2, xyz(8, 10, get_platform_height($1)), dxdydz(0, 6, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_END_FENCE_SKIP}))
})
define(spritelayout_platform_fenceB_back, {
	regular(spr_platform_end_fence, xyz(0, 16, get_platform_height($1)), dxdydz(8, 1, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_B_FENCE_SKIP}))
	regular(spr_platform_end_fence+2, xyz(8, 10, get_platform_height($1)), dxdydz(0, 6, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_END_FENCE_SKIP}))
})
define(spritelayout_platform_nontrack_fence_front, {
	regular(spr_platform_end_fence, xyz(8, 0, get_platform_height($1)), dxdydz(8, 1, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_A_FENCE_SKIP}))
	regular(spr_platform_end_fence, xyz(8, 16, get_platform_height($1)), dxdydz(8, 1, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_B_FENCE_SKIP}))
	regular(spr_platform_end_fence+4, xyz(8, 0, get_platform_height($1)), dxdydz(0, 16, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_END_FENCE_SKIP}))
})
define(spritelayout_platform_nontrack_fence_back, {
	regular(spr_platform_end_fence, xyz(0, 0, get_platform_height($1)), dxdydz(8, 1, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_A_FENCE_SKIP}))
	regular(spr_platform_end_fence, xyz(0, 16, get_platform_height($1)), dxdydz(8, 1, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_B_FENCE_SKIP}))
	regular(spr_platform_end_fence+4, xyz(8, 0, get_platform_height($1)), dxdydz(0, 16, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_END_FENCE_SKIP}))
})

define(spritelayout_platform_fenceA_single, {
	regular(spr_platform_end_fence+2, xyz(0, 0, get_platform_height($1)), dxdydz(0, 6, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_END_FENCE_SKIP}))
	regular(spr_platform_end_fence+2, xyz(16, 0, get_platform_height($1)), dxdydz(0, 6, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_END_FENCE_SKIP}))
})
define(spritelayout_platform_fenceB_single, {
	regular(spr_platform_end_fence+2, xyz(0, 10, get_platform_height($1)), dxdydz(0, 6, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_END_FENCE_SKIP}))
	regular(spr_platform_end_fence+2, xyz(16, 10, get_platform_height($1)), dxdydz(0, 6, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_END_FENCE_SKIP}))
})
define(spritelayout_platform_nontrack_fence_single, {
	regular(spr_platform_end_fence+4, xyz(0, 0, get_platform_height($1)), dxdydz(0, 16, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_END_FENCE_SKIP}))
	regular(spr_platform_end_fence+4, xyz(16, 0, get_platform_height($1)), dxdydz(0, 16, 6), aslflags({SKIP}), registers({REGISTER_PLATFORM_END_FENCE_SKIP}))
})

define(spritelayout_stop_sign_A, {
	regular(spr_stop_sign+2, xyz(8, 11, 0), dxdydz(1, 1, 8), aslflags({OFFSET_SPRITE}), registers({REGISTER_STOP_SIGN_OFFSET}))
	regular(spr_stop_sign, xyz(7, 6, 0), dxdydz(1, 4, 1))
})
define(spritelayout_stop_sign_B, {
	regular(spr_stop_sign+2, xyz(8, 5, 0), dxdydz(1, 1, 8), aslflags({OFFSET_SPRITE}), registers({REGISTER_STOP_SIGN_OFFSET}))
	regular(spr_stop_sign, xyz(7, 6, 0), dxdydz(1, 4, 1))
})
define(spritelayout_stop_sign_C, {
	regular(spr_stop_sign, xyz(7, 6, 0), dxdydz(1, 4, 1))
})

define(spritelayout_track_fenceA_front, {compcol(spr_track_fence_front, xyz(0, 1, 0), dxdydz(16, 1, 6), aslflags({SKIP, OFFSET_SPRITE}), registers({REGISTER_TRACK_A_FENCE_SKIP, REGISTER_TRACK_CUSTOM_FENCE_OFFSET}))})
define(spritelayout_track_fenceA_back, {compcol(spr_track_fence_back, xyz(0, 1, 0), dxdydz(8, 1, 6), aslflags({SKIP, OFFSET_SPRITE}), registers({REGISTER_TRACK_A_FENCE_SKIP, REGISTER_TRACK_CUSTOM_FENCE_OFFSET}))})
define(spritelayout_track_fenceB_front, {compcol(spr_track_fence_front+2, xyz(0, 15, 0), dxdydz(16, 1, 6), aslflags({SKIP, OFFSET_SPRITE}), registers({REGISTER_TRACK_B_FENCE_SKIP, REGISTER_TRACK_CUSTOM_FENCE_OFFSET}))})
define(spritelayout_track_fenceB_back, {compcol(spr_track_fence_back+2, xyz(0, 15, 0), dxdydz(8, 1, 6), aslflags({SKIP, OFFSET_SPRITE}), registers({REGISTER_TRACK_B_FENCE_SKIP, REGISTER_TRACK_CUSTOM_FENCE_OFFSET}))})

define(spritelayout_platformA_start, {notransparency(get_platform_start_sprite($1), xyz(0, 0, 0), dxdydz(16, 6, get_platform_height($1)))})
define(spritelayout_platformA_end, {notransparency(get_platform_end_sprite($1), xyz(0, 0, 0), dxdydz(16, 6, get_platform_height($1)))})
define(spritelayout_platformA_startend, {notransparency(get_platform_startend_sprite($1), xyz(0, 0, 0), dxdydz(16, 6, get_platform_height($1)))})
define(spritelayout_platformB_start, {notransparency(get_platform_start_sprite($1)+2, xyz(0, 10, 0), dxdydz(16, 6, get_platform_height($1)))})
define(spritelayout_platformB_end, {notransparency(get_platform_end_sprite($1)+2, xyz(0, 10, 0), dxdydz(16, 6, get_platform_height($1)))})
define(spritelayout_platformB_startend, {notransparency(get_platform_startend_sprite($1)+2, xyz(0, 10, 0), dxdydz(16, 6, get_platform_height($1)))})

define(spritelayout_platform_nontrack_start, {notransparency(get_platform_nontrack_start_sprite($1), xyz(0, 0, 0), dxdydz(16, 16, get_platform_height($1)))})
define(spritelayout_platform_nontrack_end, {notransparency(get_platform_nontrack_end_sprite($1), xyz(0, 0, 0), dxdydz(16, 16, get_platform_height($1)))})
define(spritelayout_platform_nontrack_startend, {notransparency(get_platform_nontrack_startend_sprite($1), xyz(0, 0, 0), dxdydz(16, 16, get_platform_height($1)))})

define(spritelayout_platform_start, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_platformA_start($2, $3)
		regular(spr_platform_start_snow, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	}, $1, PLT_TYPE_B, {
		spritelayout_platformB_start($2, $3)
		regular(spr_platform_start_snow+2, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	}, $1, PLT_TYPE_C, {
		spritelayout_platformA_start($2, $3)
		regular(spr_platform_start_snow, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
		spritelayout_platformB_start($2, $3)
		regular(spr_platform_start_snow+2, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_platformA_start($2, $4)
		regular(spr_platform_start_snow, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
		spritelayout_platformB_start($3, $4)
		regular(spr_platform_start_snow+2, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	}, $1, PLT_TYPE_NONTRACK, {
		spritelayout_platform_nontrack_start($2, $3)
		regular(spr_platform_nontrack_start_snow, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	})
})

define(spritelayout_platform_end, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_platformA_end($2, $3)
		regular(spr_platform_end_snow, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	}, $1, PLT_TYPE_B, {
		spritelayout_platformB_end($2, $3)
		regular(spr_platform_end_snow+2, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	}, $1, PLT_TYPE_C, {
		spritelayout_platformA_end($2, $3)
		regular(spr_platform_end_snow, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
		spritelayout_platformB_end($2, $3)
		regular(spr_platform_end_snow+2, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_platformA_end($2, $4)
		regular(spr_platform_end_snow, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
		spritelayout_platformB_end($3, $4)
		regular(spr_platform_end_snow+2, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	}, $1, PLT_TYPE_NONTRACK, {
		spritelayout_platform_nontrack_end($2, $3)
		regular(spr_platform_nontrack_end_snow, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	})
})

define(spritelayout_platform_startend, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_platformA_startend($2, $3)
		regular(spr_platform_startend_snow, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	}, $1, PLT_TYPE_B, {
		spritelayout_platformB_startend($2, $3)
		regular(spr_platform_startend_snow+2, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	}, $1, PLT_TYPE_C, {
		spritelayout_platformA_startend($2, $3)
		regular(spr_platform_startend_snow, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
		spritelayout_platformB_startend($2, $3)
		regular(spr_platform_startend_snow+2, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_platformA_startend($2, $4)
		regular(spr_platform_startend_snow, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
		spritelayout_platformB_startend($3, $4)
		regular(spr_platform_startend_snow+2, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	}, $1, PLT_TYPE_NONTRACK, {
		spritelayout_platform_nontrack_startend($2, $3)
		regular(spr_platform_nontrack_startend_snow, xyoff(0, 0), aslflags({SKIP}), registers({REGISTER_SNOW_SKIP}))
	})
})

define(spritelayout_fence_front, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_platform_fenceA_front($2)
		spritelayout_track_fenceA_back()
		spritelayout_track_fenceB()
	}, $1, PLT_TYPE_B, {
		spritelayout_track_fenceA()
		spritelayout_platform_fenceB_front($2)
		spritelayout_track_fenceB_back()
	}, $1, PLT_TYPE_C, {
		spritelayout_platform_fenceA_front($2)
		spritelayout_track_fenceA_back()
		spritelayout_platform_fenceB_front($2)
		spritelayout_track_fenceB_back()
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_platform_fenceA_front($2)
		spritelayout_track_fenceA_back()
		spritelayout_platform_fenceB_front($3)
		spritelayout_track_fenceB_back()
	}, $1, PLT_TYPE_NONTRACK, {
		spritelayout_platform_nontrack_fence_front($2)
		spritelayout_track_fenceA_back()
		spritelayout_track_fenceB_back()
	}, {
		spritelayout_track_fenceA()
		spritelayout_track_fenceB()
	})
})

define(spritelayout_fence_back, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_track_fenceA_front()
		spritelayout_platform_fenceA_back($2)
		spritelayout_track_fenceB()
	}, $1, PLT_TYPE_B, {
		spritelayout_track_fenceA()
		spritelayout_track_fenceB_front()
		spritelayout_platform_fenceB_back($2)
	}, $1, PLT_TYPE_C, {
		spritelayout_track_fenceA_front()
		spritelayout_platform_fenceA_back($2)
		spritelayout_track_fenceB_front()
		spritelayout_platform_fenceB_back($2)
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_track_fenceA_front()
		spritelayout_platform_fenceA_back($2)
		spritelayout_track_fenceB_front()
		spritelayout_platform_fenceB_back($3)
	}, $1, PLT_TYPE_NONTRACK, {
		spritelayout_platform_nontrack_fence_back($2)
		spritelayout_track_fenceA_front()
		spritelayout_track_fenceB_front()
	}, {
		spritelayout_track_fenceA()
		spritelayout_track_fenceB()
	})
})

define(spritelayout_fence_single, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_platform_fenceA_single($2)
	}, $1, PLT_TYPE_B, {
		spritelayout_platform_fenceB_single($2)
	}, $1, PLT_TYPE_C, {
		spritelayout_platform_fenceA_single($2)
		spritelayout_platform_fenceB_single($2)
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_platform_fenceA_single($2)
		spritelayout_platform_fenceB_single($3)
	}, $1, PLT_TYPE_NONTRACK, {
		spritelayout_platform_nontrack_fence_single($2)
	}, {
		spritelayout_track_fenceA()
		spritelayout_track_fenceB()
	})
})

define(spritelayout_stop_sign, {
	ifelse($1, PLT_TYPE_A, {
		spritelayout_stop_sign_A()
	}, $1, PLT_TYPE_B, {
		spritelayout_stop_sign_B()
	}, $1, PLT_TYPE_C, {
		spritelayout_stop_sign_C()
	}, $1, PLT_TYPE_MULTI, {
		spritelayout_stop_sign_C()
	}, {})
})