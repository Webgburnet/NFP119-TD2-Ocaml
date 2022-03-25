(*                                        *)
(* Code source pour la feuille d'ED no. 2 *)
(*                                        *)

(* Exercice 1 *) 

let rec sommeN n =
     if n<=0  then 0 else n + sommeN(n-1);;


let rec fact n =  
     if n<=1 then 1  else n*fact (n-1);;  

(* Exercice 2  *)

let rec fact n =
     if n=1 then 1 else n*fact(n-1);;

 let rec fact n =
     if n<=1 then 1 else n*fact(n+1);;

let rec f n = f(n-1);;

let rec g n = 
    if n<=0 then g(n-1) else g(n+1);;



(* Exercice 4 *) 


let lettre c = ('a' <= c && c<= 'z') or ('A'<=c && c<= 'Z');;

let rec motI (s,i) =
   if i<=0 then true
   else (lettre (s.[i])) && motI (s,(i-1));;

 motI ("abcd456",3);;

 motI ("abcd456",5);;

(* Question 1 *)
(* A comparer avec motI *)

let  est_mot s =
 let lettre c = ('a' <= c && c<= 'z') or ('A'<=c && c<= 'Z') in
 let rec parcours i =
   if i>= String.length s then true
   else (lettre (s.[i])) && parcours (i+1)
 in parcours 0;;

est_mot "abc";;

est_mot "687678";;

(* tracer la fonction parcours *) 

 let lettre c = ('a' <= c && c<= 'z') or ('A'<=c && c<= 'Z') ;;

 let rec parcours i =
       if i>= String.length s then true
       else (lettre (s.[i])) && parcours (i+1);;
    val parcours : int -> bool = <fun>

#trace parcours;;

parcours 0;;

(* Exercice 5 *) 

 let f(x,y) = (y,x);;

 let f(x,y) = x^y;;

 let f(x,y) = (x+y, x-y, x*y);;

 let f x = fst x;;

 let f(x,y) = fst x +  fst y;;

 let f(x,y) = (x, fst y);;

 let f(x,y) = (fst x, fst y);;

 let g x y = (x,y);;

 let g x y = (x,y,x&&y);;

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
