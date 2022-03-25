(* Code source pour la feuille d'ED no. 2 *)
(* Exercice 3  *)

let rec puissance x b =
	if b<=0 then 1 else x * puissance x (b-1);;
