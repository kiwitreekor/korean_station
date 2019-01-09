define(passenger_graphic, {
	tile(
		ground($5+1)
		$1
	)
	tile(
		ground($5)
		$2
	)
forloop(X, {
	tile(
		ground($5+1)
		$1
		$3
	)
	tile(
		ground($5)
		$2
		$4
	)
}, 0 .. 3)
})

define(passenger_graphic_A_base, {
	passenger_graphic($1,$2,
		{regular(spr_passengers+4*X,   xyz( 0, 0,$3), dxdydz(16, 6,6))},
		{regular(spr_passengers+1+4*X, xyz( 0, 0,$3), dxdydz( 6,16,6))},
		$4
	)
})

define(passenger_graphic_B_base, {
	passenger_graphic($1,$2,
		{regular(spr_passengers+2+4*X, xyz( 0,10,$3), dxdydz(16, 6,6))},
		{regular(spr_passengers+3+4*X, xyz(10, 0,$3), dxdydz( 6,16,6))},
		$4
	)
})

define(passenger_graphic_C_base, {
	passenger_graphic($1,$2,
		{regular(spr_passengers+4*X,   xyz( 0, 0,$3), dxdydz(16, 6,6))}
		{regular(spr_passengers+2+4*X, xyz( 0,10,$3), dxdydz(16, 6,6))},
		{regular(spr_passengers+1+4*X, xyz( 0, 0,$3), dxdydz( 6,16,6))}
		{regular(spr_passengers+3+4*X, xyz(10, 0,$3), dxdydz( 6,16,6))},
		$4
	)
})

define(passenger_graphic_A, {
	passenger_graphic_A_base($1,$2,$3,spr_ground)
})

define(passenger_graphic_B, {
	passenger_graphic_B_base($1,$2,$3,spr_ground)
})

define(passenger_graphic_C, {
	passenger_graphic_C_base($1,$2,$3,spr_ground)
})


define(passenger_graphic_A_snow, {
	passenger_graphic_A_base($1,$2,$3,spr_ground_snow)
})

define(passenger_graphic_B_snow, {
	passenger_graphic_B_base($1,$2,$3,spr_ground_snow)
})

define(passenger_graphic_C_snow, {
	passenger_graphic_C_base($1,$2,$3,spr_ground_snow)
})

define(roofA_A1_base, {
	regular($3, xyz(0,0,$1), dxdydz(16,0,10))
	regular($2, xyz(0,0,10+$1), dxdydz(16,6,3))
})

define(roofA_A2_base, {
	regular($3+1, xyz(0,0,$1), dxdydz(0,16,10))
	regular($2+1, xyz(0,0,10+$1), dxdydz(6,16,3))
})

define(roofA_B1_base, {
	regular($3+2, xyz(0,16,$1), dxdydz(16,0,10))
	regular($2+2, xyz(0,10,10+$1), dxdydz(16,6,3))
})

define(roofA_B2_base, {
	regular($3+3, xyz(16,0,$1), dxdydz(0,16,10))
	regular($2+3, xyz(10,0,10+$1), dxdydz(6,16,3))
})

define(roofB_A1_base, {
	regular($3+4, xyz(0,3,$1), dxdydz(16,0,10))
	regular($2+4, xyz(0,0,10+$1), dxdydz(16,6,3))
})

define(roofB_A2_base, {
	regular($3+5, xyz(3,0,$1), dxdydz(0,16,10))
	regular($2+5, xyz(0,0,10+$1), dxdydz(6,16,3))
})

define(roofB_B1_base, {
	regular($3+6, xyz(0,13,$1), dxdydz(16,0,10))
	regular($2+6, xyz(0,10,10+$1), dxdydz(16,6,3))
})

define(roofB_B2_base, {
	regular($3+7, xyz(13,0,$1), dxdydz(0,16,10))
	regular($2+7, xyz(10,0,10+$1), dxdydz(6,16,3))
})

define(roofA_A1, {roofA_A1_base($1, spr_roofs, spr_poles)})
define(roofA_A2, {roofA_A2_base($1, spr_roofs, spr_poles)})
define(roofA_B1, {roofA_B1_base($1, spr_roofs, spr_poles)})
define(roofA_B2, {roofA_B2_base($1, spr_roofs, spr_poles)})

define(roofB_A1, {roofB_A1_base($1, spr_roofs, spr_poles)})
define(roofB_A2, {roofB_A2_base($1, spr_roofs, spr_poles)})
define(roofB_B1, {roofB_B1_base($1, spr_roofs, spr_poles)})
define(roofB_B2, {roofB_B2_base($1, spr_roofs, spr_poles)})

define(roofA_A1_snow, {roofA_A1_base($1, spr_roofs_snow, spr_poles)})
define(roofA_A2_snow, {roofA_A2_base($1, spr_roofs_snow, spr_poles)})
define(roofA_B1_snow, {roofA_B1_base($1, spr_roofs_snow, spr_poles)})
define(roofA_B2_snow, {roofA_B2_base($1, spr_roofs_snow, spr_poles)})

define(roofB_A1_snow, {roofB_A1_base($1, spr_roofs_snow, spr_poles)})
define(roofB_A2_snow, {roofB_A2_base($1, spr_roofs_snow, spr_poles)})
define(roofB_B1_snow, {roofB_B1_base($1, spr_roofs_snow, spr_poles)})
define(roofB_B2_snow, {roofB_B2_base($1, spr_roofs_snow, spr_poles)})


define(crossing_A,{
	passenger_graphic_A_base(
		regular(spr_crossing, xyz(7,0,0), dxdydz(3,16,0))
		regular($1, xyz(0,0,0), dxdydz(16,6,1))
		$2,
		regular(spr_crossing+1, xyz(0,7,0), dxdydz(16,3,0))
		regular($1+1, xyz(0,0,0), dxdydz(6,16,1))
		$3,
		1, $4
	)
	passenger_graphic_A_base(
		regular(spr_crossing, xyz(13,0,0), dxdydz(3,16,0))
		regular($1+4, xyz(0,0,0), dxdydz(16,6,1))
		$2,
		regular(spr_crossing+1, xyz(0,13,0), dxdydz(16,3,0))
		regular($1+5, xyz(0,0,0), dxdydz(6,16,1))
		$3,
		1, $4
	)
	passenger_graphic_A_base(
		regular(spr_crossing, xyz(0,0,0), dxdydz(3,16,0))
		regular($1+8, xyz(0,0,0), dxdydz(16,6,1))
		$2,
		regular(spr_crossing+1, xyz(0,0,0), dxdydz(16,3,0))
		regular($1+9, xyz(0,0,0), dxdydz(6,16,1))
		$3,
		1, $4
	)
})

define(crossing_B,{
	passenger_graphic_B_base(
		regular(spr_crossing, xyz(7,0,0), dxdydz(3,16,0))
		regular($1+2, xyz(0,10,0), dxdydz(16,6,1))
		$2,
		regular(spr_crossing+1, xyz(0,7,0), dxdydz(16,3,0))
		regular($1+3, xyz(10,0,0), dxdydz(6,16,1))
		$3,
		1, $4
	)
	passenger_graphic_B_base(
		regular(spr_crossing, xyz(13,0,0), dxdydz(3,16,0))
		regular($1+6, xyz(0,10,0), dxdydz(16,6,1))
		$2,
		regular(spr_crossing+1, xyz(0,13,0), dxdydz(16,3,0))
		regular($1+7, xyz(10,0,0), dxdydz(6,16,1))
		$3,
		1, $4
	)
	passenger_graphic_B_base(
		regular(spr_crossing, xyz(0,0,0), dxdydz(3,16,0))
		regular($1+10, xyz(0,10,0), dxdydz(16,6,1))
		$2,
		regular(spr_crossing+1, xyz(0,0,0), dxdydz(16,3,0))
		regular($1+11, xyz(10,0,0), dxdydz(6,16,1))
		$3,
		1, $4
	)
})

define(crossing_C,{
	passenger_graphic_C_base(
		regular(spr_crossing, xyz(7,0,0), dxdydz(3,16,0))
		regular($1, xyz(0,0,0), dxdydz(16,6,1))
		regular($1+2, xyz(0,10,0), dxdydz(16,6,1))
		$2,
		regular(spr_crossing+1, xyz(0,7,0), dxdydz(16,3,0))
		regular($1+1, xyz(0,0,0), dxdydz(6,16,1))
		regular($1+3, xyz(10,0,0), dxdydz(6,16,1))
		$3,
		1, $4
	)
	passenger_graphic_C_base(
		regular(spr_crossing, xyz(13,0,0), dxdydz(3,16,0))
		regular($1+4, xyz(0,0,0), dxdydz(16,6,1))
		regular($1+6, xyz(0,10,0), dxdydz(16,6,1))
		$2,
		regular(spr_crossing+1, xyz(0,13,0), dxdydz(16,3,0))
		regular($1+5, xyz(0,0,0), dxdydz(6,16,1))
		regular($1+7, xyz(10,0,0), dxdydz(6,16,1))
		$3,
		1, $4
	)
	passenger_graphic_C_base(
		regular(spr_crossing, xyz(0,0,0), dxdydz(3,16,0))
		regular($1+8, xyz(0,0,0), dxdydz(16,6,1))
		regular($1+10, xyz(0,10,0), dxdydz(16,6,1))
		$2,
		regular(spr_crossing+1, xyz(0,0,0), dxdydz(16,3,0))
		regular($1+9, xyz(0,0,0), dxdydz(6,16,1))
		regular($1+11, xyz(10,0,0), dxdydz(6,16,1))
		$3,
		1, $4
	)
})