
(* use "hw2p3.sml"; *)

fun concat(x,y) = if x=[] then y
else hd(x)::concat(tl(x),y);


val L= [1, 2, 3, 4];
val x= 2;
val tmp= [];


fun partition(L, x, tmp) = if L= [] then tmp else( if hd(L) = x then tmp  else partition(tl(L), x, concat(tmp, [hd(L)])));

fun rem (L, x) = if L=[] then [] else (if hd(L) =x then tl(L) else rem(tl(L), x));

fun removeFst(x,L) = concat(partition(L, x, tmp), rem(L,x))

val ansa1 = removeFst(2,[1, 2, 3, 4, 5]);
val ansa2 = removeFst(4,[1, 2, 3, 4, 5, 2, 1]);
val ansa3 = removeFst(#"b",[#"a",#"b",#"c",#"d",#"e"]);

fun reverse(L) =
      if L = nil then nil
      else reverse(tl(L)) @ [hd(L)];

fun removeLst(x,L) = reverse(concat(partition(reverse(L), x, tmp), rem(reverse(L),x)));

val ansb1 = removeLst(2,[1, 2, 3, 4, 5, 2, 1]);
val ansb2 = removeLst(4,[1, 2, 3, 4, 5, 2, 1, 4]);
val ansb3 = removeLst(#"b",[#"a",#"b",#"c",#"d",#"b",#"e"]);