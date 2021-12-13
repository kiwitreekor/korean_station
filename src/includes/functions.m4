define(_stringid, 0)
define(setstringid, {define({$1}, _stringid) define({_stringid}, incr(_stringid))})
define(setlangid, {ifdef({_langid}, {define({_langid}, {$1})}, {define({_langid}, {ALL})})})
define(defgrftextlang, {ifdef({$1}, {defgrftext($1,defn({_langid}),{UTF8 }$2)}, {defgrftext(_stringid,ALL,{UTF8 }$2) setstringid({$1})})})

define(_append, {define({$1},defn({$1}){, $2})})
define(defstr, {ifdef({$1}, {_append({$1},defn({_langid}){, UTF8 $2})}, {define({$1},{ALL, UTF8 $2})})})

define({show}, {{$1}
})

define({file_index}, 0)

define({defstationname}, {stationnames($1, {_langid, UTF8 {$2}})})
define({defclassname}, {classnames($1, {_langid, UTF8 {$2}})})

define(__signedbyte, {ifelse(eval($1<0),1,__byte(256 + $1),__byte($1))})
pushdef({xyz}, {__signedbyte($1) __signedbyte($2) __signedbyte($3)})