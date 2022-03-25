(* Code source pour la feuille d'ED no. 2 *)
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
