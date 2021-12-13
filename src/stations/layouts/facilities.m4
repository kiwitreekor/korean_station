define(spritelayout_underpass, {
	define({tmp_platform_type}, {ifelse($1, PLT_TYPE_MULTI, $3, $2)})
	ifelse(eval($1 == PLT_TYPE_A || $1 == PLT_TYPE_C || $1 == PLT_TYPE_MULTI), 1, {
		regular(spr_underpass, xyz(3, 0, get_platform_height($2)), dxdydz(10, 3, 3))
	})
	ifelse(eval($1 == PLT_TYPE_B || $1 == PLT_TYPE_C || $1 == PLT_TYPE_MULTI), 1, {
		regular(spr_underpass, xyz(3, 13, get_platform_height(tmp_platform_type)), dxdydz(10, 3, 3))
	})
})

define(spritelayout_psd, {
	define({tmp_platform_type}, {ifelse($1, PLT_TYPE_MULTI, $3, $2)})
	ifelse(eval($1 == PLT_TYPE_A || $1 == PLT_TYPE_C || $1 == PLT_TYPE_MULTI), 1, {
		ifelse($2, PLT_TYPE_HIGH, {
			regular(spr_psd, xyz(0, 6, get_platform_height($2)), dxdydz(16, 0, 5), aslflags({OFFSET_SPRITE}), registers({REGISTER_PSD_OFFSET}))
			glass(spr_psd_glass, xyoff(0, 2), aslflags({OFFSET_SPRITE}), registers({REGISTER_PSD_GLASS_OFFSET}))
		})
	})
	ifelse(eval($1 == PLT_TYPE_B || $1 == PLT_TYPE_C || $1 == PLT_TYPE_MULTI), 1, {
		ifelse(tmp_platform_type, PLT_TYPE_HIGH, {
			regular(spr_psd+2, xyz(0, 10, get_platform_height(tmp_platform_type)), dxdydz(16, 0, 5), aslflags({OFFSET_SPRITE}), registers({REGISTER_PSD_OFFSET+1}))
			glass(spr_psd_glass, xyoff(0, 2), aslflags({OFFSET_SPRITE}), registers({REGISTER_PSD_GLASS_OFFSET+1}))
		})
	})
})