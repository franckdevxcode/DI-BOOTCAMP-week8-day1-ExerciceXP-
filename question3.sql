ALTER TABLE public.etudiants 
ADD COLUMN ID serial NOT NULL ,
ADD COLUMN FirstName character varying NOT NULL,
ADD COLUMN Name character varying NOT NULL,
ADD COLUMN birth_day date;