(* Code source pour la feuille d'ED no. 2 *)
(* Exercice 2  *)

let rec fact n =
     if n=1 then 1 else n*fact(n-1);;

 let rec fact n =
     if n<=1 then 1 else n*fact(n+1);;

let rec f n = f(n-1);;

let rec g n = 
    if n<=0 then g(n-1) else g(n+1);;
