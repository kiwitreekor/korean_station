divert(-1)
changequote({,})
changecom({//})
define({process_act2}, {1})
syscmd(ifdef({unix},rm,del) m4_ref)
define({__echo}, {
	ifdef({unix},{
		syscmd({echo "define({$1},}$2{)" >>m4_ref})
	}, {
		syscmd({echo define({$1},}$2{) >>m4_ref})
	})
})

define({join}, {ifelse({$#}, {2}, {{$2}}, {ifelse({$2}, {}, {}, {{$2}_})$0({$1}, shift(shift($@)))})})
define({_join}, {ifelse({$#$2}, {2}, {}, {ifelse({$2}, {}, {}, {{$1$2}})$0({$1}, shift(shift($@)))})})
define({joinall}, {{$2}_$0({$1}, shift($@))})
define({_joinall}, {ifelse({$#}, {2}, {}, {{$1$3}$0({$1}, shift(shift($@)))})})

define({quote}, {ifelse({$#}, {0}, {}, {{$*}})})
define({foreachq}, {pushdef({$1})_foreachq($@)popdef({$1})})
define({_arg1}, {$1})
define({_foreachq}, {ifelse(quote($2), {}, {},{define({$1}, {_arg1($2)})$3{}$0({$1}, {shift($2)}, {$3})})})

define({_popfront_calc}, {dnl
define({tmp_str}, $1)dnl
define({tmp_ops}, {(+|-|MIN|MAX|SMIN|SMAX|/|MOD|S/|SMOD|\*|AND|OR|XOR|CMP|SCMP|ROR|<<|>>|S>>)})dnl
define({tmp_loc}, regexp(tmp_str, tmp_ops))dnl
define({tmp_op}, regexp(tmp_str, tmp_ops, {\&}))dnl
ifelse(eval(tmp_loc==-1),1,{dnl
tmp_str{}dnl
define({$1},{})dnl
},{dnl
substr(tmp_str, 0, tmp_loc)dnl
define({$1}, substr(tmp_str, eval(tmp_loc+len(tmp_op)), eval(len(tmp_str)-tmp_loc-len(tmp_op))))})dnl
})
define({foreach_calc}, {dnl
define({tmp_2}, $2)dnl
define({tmp_1}, _popfront_calc({tmp_2}))dnl
ifelse(tmp_1, {}, {}, {define({$1}, tmp_1){}$3}{$0({$1},tmp_2,{$3})})dnl
})

define({__for}, {ifelse(eval($# != 4),1,{__error(ERR_NUMPAR {forloop})},{ifelse(eval($2<=$3),1,
{pushdef({$1},$2)$4{}popdef({$1})$0({$1},incr(eval($2)),$3,{$4})})})})
define({__foreach}, {ifelse(eval($#>2),1,
{pushdef({$1},{$3}){}$2{}popdef({$1})dnl
ifelse(eval($#>3),1,{$0({$1},{$2},shift(shift(shift($@))))})})})
define({forloop}, {ifelse($#,3,{__for($1,patsubst($3,{ +\.\. +},{,}),{$2})},{__foreach($@)})})

define({act2_list}, {})
define({act2_ref}, {defn(format({{act2_ref[%s]}}, {$1}))})
define({act2_ref_add}, {
	ifdef(format({{act2_ref[%s]}}, {$1}),,{
		define({act2_list}, join({,}, act2_list, {$1}))
	})
	define(format({{act2_ref[%s]}}, {$1}), {$2})
})

define({defcnt}, 0)
define({def}, {define({defcnt}, incr(defcnt))})
define({makestation}, defn({def}) {$@})

define({ref}, {act2_ref_add($1, defcnt)})
define({sub}, {act2_ref_add($1, defcnt)})
define({subroutine}, {act2_ref_add($1, defcnt)})
define({setregisters}, {foreachq({i}, {$2}, {i})})
define({calculate}, {foreach_calc({i}, {$1}, {i})})
divert(1)
m4wrap({foreachq({act2}, {act2_list}, {__echo({refloc[}act2{]}, act2_ref(act2))})})
divert