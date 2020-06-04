
(* use "hw2p5.sml" *)

fun concat(x,y) = x @ y;

fun Square(x:real) = x*x;

fun Cube(x:real) = x*x*x;

fun sum(x:real, y:real) = x + y;
fun tabulate(a:real, d:real, n, F) = if n  = ~1 then [] else concat([(a, F(a))], tabulate(sum(a,d), d, n-1, F)); 


tabulate(0.1, 2.0, 2, Square);
tabulate(0.1, 2.0, 2, Cube);
