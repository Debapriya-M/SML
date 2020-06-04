
(* use "hw2p1.sml"; *)

fun genPoly(n) = if n=0 then []
else 1.0 :: genPoly(n-1);

val ansa1 = genPoly(3);
val ansa2 = genPoly(4);
val ansa3 = genPoly(5);



fun calculateLength(O:real list) = length(O);
fun multiply(L:real list, a:real) = if calculateLength(L) = 0 then [] else a*hd(L) :: multiply(tl(L),a);
fun evalPoly(P:real list, a:real) = if calculateLength(P) = 0 then 0.0 else hd(P) + evalPoly(multiply(tl(P), a), a); 



val ansb1 = evalPoly([3.0,2.0,1.0], 2.0);
val ansb2 = evalPoly([10.0, 3.0, 1.0], 2.0);




fun addcoeff(x:real,y:real) = x + y;

fun addPoly(P:real list,Q:real list) = if calculateLength(P) = 0 then Q else if calculateLength(Q) = 0 then P else addcoeff(hd(P), hd(Q)) :: addPoly(tl(P), tl(Q));

fun scalarMultiply(P:real list, q:real) = if calculateLength(P) = 0 then [] else (hd(P) * q)::scalarMultiply(tl(P), q);

fun multPoly(P1:real list,P2:real list) = if calculateLength(P1) = 0 orelse calculateLength(P2) = 0 then [] else addPoly(scalarMultiply(P1, hd(P2)), multPoly(0.0 :: P1,tl(P2)));



val ansc1 = multPoly([3.0,2.0,4.0], [1.0,1.0]);
val ansc2 = multPoly([~1.0, 1.0], [1.0, 1.0]);
