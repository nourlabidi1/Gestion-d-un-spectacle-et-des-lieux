-------------------------------les tests --------------------------------------

--------------------tests des procedures----------------------------
----------- pack.spec-------------------------------------------

set serveroutput on ;
begin
PACK_spec.proc_chercher_titre('El ZIARA');

end;

set serveroutput on ;
begin
PACK_spec.proc_chercher_id(4);

end;

set serveroutput on ;
begin
PACK_spec.proc_modifier_spec(1,NULL,'20/03/23',NULL,NULL,NULL,NULL);

end;

set serveroutput on ;
begin
PACK_spec.porc_annuler_spectacle(3);

end;
 
-------------pack lieu ----------------------------------------------
set serveroutput on ;
begin
PACK_lieux.proc_recherche_nom_capacite('THÉÂTRE EL HAMRA',550);

end;

set serveroutput on ;
begin
PACK_lieux.proc_recherche_lieu(550);

end;

set serveroutput on ;
begin
PACK_lieux.proc_recherche_nom('EL TEATRO');

end;

---------------pack.rubrique
set serveroutput on ;
begin
PACK_rubrique.proc_modif_rubrique(2,NULL,5,NULL);

end;

insert into rubrique values(80,6,2,17,1,'comédie');
set serveroutput on ;
begin
PACK_rubrique.supprimer_rub(80);

end;

set serveroutput on ;
begin
PACK_rubrique.recherche_rub(3,NULL);

end;

set serveroutput on ;
begin
PACK_rubrique.recherche_rub(NULL,3);

end;

----------------------tests des triggers --------------------------



------------trig_verif_lieu_spec---------------

insert into spectacle values (20,'speccc','2/12/23',20,3,15,50);

---------trig_ajouter_rubrique------------

insert into rubrique values (seq_rubrique.nextval,1,5,21.7,1,'théâthre');
-----------trig_controle_capacite--------------

insert into lieu values(seq_id_lieu.nextval,'pathe manar','manar',5000);

--------------trig supp_lieu---------------- N
insert into lieu values (50,'pathe sousse','sousse',250);
insert into spectacle values (150,'speccc','2/12/23',20,3,15,50);
delete from lieu where idlieu=150;
--------------trig_update_lieu ------------------

update lieu set adresse='jhjfhdfh' where idlieu=1;

-------------trig verif_artiste_specialite--------
insert into rubrique values (seq_rubrique.nextval,1,5,21.7,0.3,'théâtre');

-------trig_verif_nb_rub-----------
insert into rubrique values (seq_rubrique.nextval,1,5,21.7,0.3,'théâtre');

--------------trig_verif_spec------------------(le nbr des spec ne depasse pas la cap)

insert into spectacle values(14,'ZIARA','11/12/24',21,2,500,50);

-------------trig_verif_spec_date------------
insert into lieu values (50,'pathe sousse','sousse',250);
insert into spectacle values (100,'speccc','2/12/22',20,3,15,50);
-------------trig_verif-rubrique_spectacle----------------
update spectacle set h_debut=17 where idspec=6;
--------------trig_verif-rubrique_spectacle_duree----------
update spectacle set durees=2 where idspec=6;
--------------trig_verif_duree_rubrique------------
insert into rubrique values(seq_rubrique.nextval,1,4,22,3,'théâtre');
