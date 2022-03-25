(* Code source pour la feuille d'ED no. 2 *)
(* Exercice 6 *)

let  voyelle c =
 match c
 with 'a'| 'e' | 'i' | 'o' | 'u' -> true
   |   _ -> false;;

 voyelle 'b';;

 voyelle 'i';;


let  opArith c =
 match c
 with    _ -> false;;
  | '+'| '-' | '*' | '/'  -> true    

 opArith 1;;

 opArith '+';;


let sommeTriple a =
 match a
 with (x,y,z) -> x+y+z
  |   (0,0)   -> -1;;

let sommeTripleBis a =
 match a
 with  (0 ,0,0)   -> false
  |   (x,y,z) -> x+y+z

 let reponse r =
  match r
  with"oui" -> trueue
  |     "Oui" -> true
  |     "OUI" -> true;;

 reponse "oui";;

 reponse "non";;
