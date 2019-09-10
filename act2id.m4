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
divert(1)
m4wrap({foreachq({act2}, {act2_list}, {__echo({refloc[}act2{]}, act2_ref(act2))})})
divert