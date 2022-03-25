(*                                        *)
(* Code source pour la feuille d'ED no. 2 *)
(*                                        *)

(* Exercice 1 *) 

let rec sommeN n =
     if n<=0  then 0 else n + sommeN(n-1);;


let rec fact n =  
     if n<=1 then 1  else n*fact (n-1);;  