-- selection des elements

--1 Récupérer toutes les données de la table.
 select * from public.etudiants
 
 --- 2 Récupérer tous les prénoms et noms de famille des étudiants .
 
 select "FirstName", "Name" from public.etudiants
 
 -- 3 Pour les questions suivantes, récupérez uniquement les prénoms et noms de famille des élèves.
 
 -- 3.1 Récupérer l'étudiant dont l'id est égal à 2.
  select "FirstName","Name" from public.etudiants where  "ID" = 2
  
  -- 3.2 Récupérez l'élève dont le nom est Benichou ET le prénom est Marc.
    
	select "FirstName","Name" from public.etudiants where  "Name" ='Bénichou' and "FirstName"='Marc'
	
	-- 3.3 Récupérez les étudiants dont le nom de famille est Benichou OU dont le prénom est Marc.
	select "FirstName","Name" from public.etudiants where  "Name" ='Bénichou' or "FirstName"='Marc'
	
	-- 3.4 Récupérez les étudiants dont les prénoms contiennent la lettre a .
	
	select "FirstName","Name" from public.etudiants where  "FirstName" like '%a%'
	
	--3.5 Récupérez les étudiants dont le prénom commence par la lettre a .
	select "FirstName","Name" from public.etudiants where  "FirstName" like 'a%'
	
	--3.6 Récupérer les étudiants dont les prénoms se terminent par la lettre a .
	
	select "FirstName","Name" from public.etudiants where  "FirstName" like '%a'
	
	-- 3.7 Récupérer les étudiants dont l'avant-dernière lettre de leur prénom est a
	select "FirstName","Name" from public.etudiants where left(right("FirstName",2),1)='a'
	 
	-- 3.8 Récupérer les étudiants dont les identifiants sont égaux à 1 AND 3 
	
	select "FirstName","Name" from public.etudiants where  "ID" in(1,3)
	
	-- 4 Récupérez les étudiants dont la date de naissance est égale ou postérieure au 01/01/2000. (afficher toutes leurs informations).
	
	select * from public.etudiants where birth_day >= '01-01-2000'