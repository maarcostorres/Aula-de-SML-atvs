(*Atividade 1*)

fun menorDeDois(x, y) =
 if x < y then x
else y;
menorDeDois(2, 6);

(*Atividade 2*)

fun pertence(x, []) = false
  | pertence(x, y::ys) = if x = y then true else pertence(x, ys);
val teste1 = pertence (1, [3,7,4,2]);

(*Atividade 3*)

fun contaOcorrencias(n, []) = 0
  | contaOcorrencias(n, x::xs) = if n = x then 1 + contaOcorrencias(n, xs) else contaOcorrencias(n, xs);

val teste1 = contaOcorrencias (1, [1, 2, 3, 1, 4, 1, 5]);

(*Atividade 4*)

fun unicaOcorrencia n lista = 
 if contaOcorrencias (n, lista) = 1 then true else false;

unicaOcorrencia 1 [2, 3, 4];
unicaOcorrencia 1 [2, 1, 3, 4];
unicaOcorrencia 1 [2, 1, 3, 1, 4];

unicaOcorrencia #"i" [#"V", #"i", #"n", #"i", #"c", #"i", #"u", #"s"];