(* Code source pour la feuille d'ED no. 2 *)
(* Exercice 7 *)

(* Question 1 *)
type date = {jour:int; mois:int; annee: int};;

(*Question 2 *)
let bissextile a = (a mod 4 =0) && (not (a mod 100 = 0) or (a mod 400 = 0));;

bissextile 2000;;
bissextile 1900;;
bissextile 2004;;

(* Question 3 *)
let joursMois m a = 
match m 
with 4 | 6 | 9 | 11 -> 30
 | 2 -> if bissextile a then 29 else 28
 | _ -> 31

joursMois 2 2004;;

joursMois 2 2005;;

joursMois 3 2006;;

(* Question 4 *)
let lendemain d =
  if d.jour < joursMois d.mois d.annee
    then {jour= d.jour+1; mois=d.mois; annee = d.annee}
  else if d.mois < 12
    then {jour= 1; mois=d.mois+1; annee = d.annee}
  else {jour= 1; mois= 1; annee = d.annee+1}

let aujourd’hui = {jour=27; mois=2; annee = 2006};;

lendemain aujourd’hui;;
