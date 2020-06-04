
(* use "hw2p2.sml"; *)

fun concat(x,y) = if x=[] then y
	else hd(x)::concat(tl(x),y);

fun revCycle(L) = if L=[] then [] else concat(tl(L), [hd(L)]);

val ansa1 = revCycle([1,2,3,4,5,6]);
val ansa2 = revCycle([3,6,7,8,2,9]);



fun revCycles(L,i) = if i=0 then L else revCycles(concat(tl(L), [hd(L)]), i-1);


val ansb1 = revCycles([1,2,3,4,5,6], 1);
val ansb2 = revCycles([3,6,7,8,2,9], 4);