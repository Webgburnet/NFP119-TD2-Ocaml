(* Code source pour la feuille d'ED no. 2 *)
(* Exercice 8 *)

type employe = {nom: string; salaire: float; dateArrivee: date};;

type duree = {n_mois: int; n_annees: int};;

let anciennete aujourd’hui {dateArrivee = e} =
	let soustrait_dates d1 d2 =
		if d1.annee = d2.annee then {n_mois = d1.mois - d2.mois; n_annees = 0}
		else if d1.mois = d2.mois
			then {n_mois = 0; n_annees = d1.annee-d2.annee}
		else if d1.mois > d2.mois
			then {n_mois = d1.mois - d2.mois; n_annees = d1.annee-d2.annee}
		else {n_mois = (12-d2.mois)+ d1.mois; n_annees = d1.annee-d2.annee-1}
	in soustrait_dates aujourd’hui e;;

let sep2000 = {jour =5; mois=9; annee = 2000};;

let martin = {nom = "Martin"; salaire = 2200.50; dateArrivee=sep2000};;
val martin : employe = {nom = "Martin"; salaire = 2200.5; dateArrivee = {jour = 5; mois = 9; annee = 2000}}

anciennete aujourd’hui martin;;

let plus_paye e1 e2 = if e1.salaire > e2.salaire then e1 else e2;;
