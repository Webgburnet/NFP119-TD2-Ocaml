(* Code source pour la feuille d'ED no. 2 *)
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