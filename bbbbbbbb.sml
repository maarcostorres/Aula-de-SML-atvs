4+3;
it;
4 - 3;
(*
 Operador - é para subtração apenas
 Operador ~ serve para indicar um numero é negativo
*)
4 + ~3;
true;
false;
1.4;
"Programação";
"a";
#"a";
10.0 / 2.0;
10 div 5;
7 mod 3; 
~1 + 2 - 3 * 4 div 5 mod 6;
(((~1) + 2) - (((3 * 4) div 5) mod 6));
"Marcos" ^ " Vinicius " ^ "Torres";
2 < 3;
1.0 <= 2.0;
#"d" > #"b";
"abcd" > "abd";
1 < 2 orelse 3 > 4;
true orelse 3 > 4;
1 < 2 andalso 3 > 4;
1 = 2;
1 = 1;
"Marcos" = "Marcos";

(*LAZY EVALUATION*)
5 > 3 orelse 1 div 0 = 0;
5 < 3 andalso 1 div 0 = 0;

if 1 < 2 then "verdade" else "falso";
if 1 > 2 then "verdade" else "falso";

1 + (if 1 < 2 then 1 else 2);

(*Operadores sobrecarregados*)
1 * 2;
1.0 * 2.0;

(* 1 * 2.0; Não realiza conversão implícita*)
1 * floor(2.0);
real(1) * 2.0; (*Conversão explícita*)

"a" ^"b";
(* #"a" ^"b"; - - Não concatena char com string *)

str #"a" ^"b";

4+3;
it;

val x = 10;
x + 1;
x;

val y = 1 + 2 * 3;
val a = "abc";
val b = a ^"def";

val x = 1;

fun quadrado x = x * x;
fun quadrado x:real = x * x;

val v1 = 2.0;
quadrado v1;

quadrado (2.0 + 3.0);
quadrado 2.0 + 3.0;
(* associatividade à esquerda *)
quadrado (quadrado 2.0);

(*TUPLAS*)
val tp1 = (1+2, 1.0+3.0, "verde");
val tp2 = (8, tp1);

#1 tp2;
#2 tp2;

#1 (#2 tp2);
#3 (#2 tp2);

val tp3 = (1, (2, 3));
val tp4 = ((1, 2), 3);

#1 (#2 tp3);
#2 (#1 tp4);

(*LISTAS*)
val lst1 = [1, 2, 3];
(* val lst2 = [1, 2.0, "azul"]; Listas são
homogêneas"*)
val lst2 = [];
nil;
null [];
null lst1;
null lst2;

fun verificaLista l = if null l then "tá vazio" else 
"tem valor";

verificaLista lst1;
verificaLista lst2;

hd; (*Head da lista - Primeiro valor*)
tl; (*Tall da lista (cauda) -- Lista sem o primeiro valor*)
val valores = [1, 2, 3, 4];
hd valores;
tl valores;

(* List constructor and Operator*)
val valores = 0::valores;

val valores = 0::1::2::3::4::[];
(*Associativa à direita - representação interna*)
val valores = 0::(1::(2::(3::(4::[]))));

(*List append - Inserção no final da lista*)
val valores = valores @ [5];
val valores = valores @ [6, 7, 8];

Real.compare(2.0, 3.0);

val nome = "Marcos";
explode nome;

fun primeiraLetra (s:string) = hd (explode s);

primeiraLetra nome;