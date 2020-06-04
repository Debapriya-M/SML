
(* use "hw2p4.sml"; *)

fun func1(L) =
      if L = [] then []
      else hd(L)::func4(tl(L))
and
 func2(L) =
      if L=[] then []
	  else func1(tl(L))
and
 func3(L) =
      if L=[] then []
	  else func2(tl(L))
and
 func4(L) =
      if L=[] then []
	  else func3(tl(L));


val L = [1,2,3,4,5,6,7,8,9,10,11,12,13];
val a = func1(L);
val b = func2(L);
val c = func3(L);
val d = func4(L);