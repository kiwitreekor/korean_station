divert(-1)
define(_xyz, defn({xyz}))
define(_dxdydz, defn({dxdydz}))
define(_ground, defn({ground}))
define(_regular, defn({regular}))
define(_glass, defn({glass}))
define(_recolour, defn({recolour}))
define(_compcol, defn({compcol}))
define(_notransparency, defn({notransparency}))

define(_ORIENT, 0)

define(xxyz, {ifelse(_ORIENT, 0, {_xyz($1, $2, $3)}, {_xyz($2, $1, $3)})})
define(xdxdydz, {ifelse(_ORIENT, 0, {_dxdydz($1, $2, $3)}, {_dxdydz($2, $1, $3)})})

define(xground, {dnl
	ifelse($2, REVERSE, {
		ifelse(
			$#, 2, {_ground({$1+_ORIENT})},
			$#, 3, {_ground({$1+_ORIENT}, $3)},
			$#, 4, {_ground({$1+_ORIENT}, $3, $4)},
			$#, 5, {_ground({$1+_ORIENT}, $3, $4, $5)},
			{__error(ERR_NUMPAR "{$0}")}
		)dnl
	}, {
		ifelse(
			$#, 1, {_ground({$1+1-_ORIENT})},
			$#, 2, {_ground({$1+1-_ORIENT}, $2)},
			$#, 3, {_ground({$1+1-_ORIENT}, $2, $3)},
			$#, 4, {_ground({$1+1-_ORIENT}, $2, $3, $4)},
			{__error(ERR_NUMPAR "{$0}")}
		)dnl
	})
})

define(xregular, {dnl
	ifelse($2, REVERSE, {
		ifelse(
			$#, 3, {_regular({$1+1-_ORIENT}, }$3{)},
			$#, 4, {_regular({$1+1-_ORIENT}, }$3{, }$4{)},
			$#, 5, {_regular({$1+1-_ORIENT}, }$3{, }$4{, $5)},
			$#, 6, {_regular({$1+1-_ORIENT}, }$3{, }$4{, $5, $6)},
			$#, 7, {_regular({$1+1-_ORIENT}, }$3{, }$4{, $5, $6, $7)},
			{__error(ERR_NUMPAR "{$0}" $1)}
		)dnl
	}, {
		ifelse(
			$#, 2, {_regular({$1+_ORIENT}, }$2{)},
			$#, 3, {_regular({$1+_ORIENT}, }$2{, }$3{)},
			$#, 4, {_regular({$1+_ORIENT}, }$2{, }$3{, $4)},
			$#, 5, {_regular({$1+_ORIENT}, }$2{, }$3{, $4, $5)},
			$#, 6, {_regular({$1+_ORIENT}, }$2{, }$3{, $4, $5, $6)},
			{__error(ERR_NUMPAR "{$0}" $1)}
		)dnl
	})
})

define(xglass, {dnl
	ifelse(
		$#, 2, {_glass({$1+_ORIENT}, }$2{)},
		$#, 3, {_glass({$1+_ORIENT}, }$2{, }$3{)},
		$#, 4, {_glass({$1+_ORIENT}, }$2{, }$3{, $4)},
		$#, 5, {_glass({$1+_ORIENT}, }$2{, }$3{, $4, $5)},
		$#, 6, {_glass({$1+_ORIENT}, }$2{, }$3{, $4, $5, $6)},
		{__error(ERR_NUMPAR "{$0}" $1)}
	)dnl
})

define(xrecolour, {dnl
	ifelse(
		$#, 2, {_recolour({$1+_ORIENT}, }$2{)},
		$#, 3, {_recolour({$1+_ORIENT}, }$2{, }$3{)},
		$#, 4, {_recolour({$1+_ORIENT}, }$2{, }$3{, $4)},
		$#, 5, {_recolour({$1+_ORIENT}, }$2{, }$3{, $4, $5)},
		$#, 6, {_recolour({$1+_ORIENT}, }$2{, }$3{, $4, $5, $6)},
		{__error(ERR_NUMPAR "{$0}" $1)}
	)dnl
})

define(xnotransparency, {dnl
	ifelse(
		$#, 2, {_notransparency({$1+_ORIENT}, }$2{)},
		$#, 3, {_notransparency({$1+_ORIENT}, }$2{, }$3{)},
		$#, 4, {_notransparency({$1+_ORIENT}, }$2{, }$3{, $4)},
		$#, 5, {_notransparency({$1+_ORIENT}, }$2{, }$3{, $4, $5)},
		$#, 6, {_notransparency({$1+_ORIENT}, }$2{, }$3{, $4, $5, $6)},
		{__error(ERR_NUMPAR "{$0}" $1)}
	)dnl
})

define(xcompcol, {dnl
	ifelse(
		$#, 2, {_compcol({$1+_ORIENT}, }$2{)},
		$#, 3, {_compcol({$1+_ORIENT}, }$2{, }$3{)},
		$#, 4, {_compcol({$1+_ORIENT}, }$2{, }$3{, $4)},
		$#, 5, {_compcol({$1+_ORIENT}, }$2{, }$3{, $4, $5)},
		$#, 6, {_compcol({$1+_ORIENT}, }$2{, }$3{, $4, $5, $6)},
		{__error(ERR_NUMPAR "{$0}" $1)}
	)dnl
})

define(xtile, {dnl
	pushdef({ground}, defn({xground}))pushdef({regular}, defn({xregular}))pushdef({glass}, defn({xglass}))pushdef({recolour}, defn({xrecolour}))pushdef({compcol}, defn({xcompcol}))pushdef({notransparency}, defn({xnotransparency}))pushdef({xyz}, defn({xxyz}))pushdef({dxdydz}, defn({xdxdydz}))dnl
	define({_ORIENT}, 0) tile($*) define({_ORIENT}, 1) tile($*)dnl
	popdef({ground})popdef({regular})popdef({glass})popdef({recolour})popdef({compcol})popdef({notransparency})popdef({xyz})popdef({dxdydz})dnl
})

define(spritelayout_ground, {ground(spr_ground)})
define(spritelayout_ground_snow, {ground(spr_ground_snow)})
define(spritelayout_ground_building, {_ground(spr_ground_building, CUSTOM, aslflags({OFFSET_SPRITE}), registers({REGISTER_MODULAR_GROUND_OFFSET+$1}))})
define(spritelayout_ground_nontrack, {_ground(spr_ground_nontrack, aslflags({OFFSET_SPRITE}), registers({REGISTER_GROUND_NONTRACK_OFFSET}))})
define(spritelayout_ground_nontrack_concrete, {_ground(spr_ground_building, CUSTOM, aslflags({OFFSET_SPRITE}), registers({REGISTER_NONE}))})

define(spritelayout_ground_road_junction, {_ground(spr_ground_road_concrete+$1, aslflags({OFFSET_SPRITE}), registers({REGISTER_NONE}))})
define(spritelayout_ground_road, {ground(spr_ground_road_concrete, aslflags({OFFSET_SPRITE}), registers({REGISTER_NONE}))})

define(spritelayout_concrete_float, {_regular(spr_ground_building, xyz(0,0,8), dxdydz(16,16,0))})
define(spritelayout_road_float, {regular(spr_ground_road_concrete, xyz(0,0,8), dxdydz(16,16,0), TTD, aslflags({OFFSET_SPRITE}), registers({REGISTER_NONE}))})

define(spritelayout_seoul_cars, {regular(spr_seoul_car, xyz($1, 0, $2), dxdydz(12, 16, 5), aslflags({SKIP, OFFSET_SPRITE}), registers({REGISTER_PASSENGER_SKIP, REGISTER_CARS_OFFSET}))})

divert