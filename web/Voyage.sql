CREATE TABLE Region (
  id SERIAL PRIMARY KEY,
  nom varchar
);

CREATE TABLE Hotel (
  id SERIAL PRIMARY KEY,
  idRegion int,
  nom varchar,
  repas int,
  prixJournalierParPersonne double precision,
    foreign key (idRegion) references Region(id)
);

CREATE TABLE Cooperative (
  id SERIAL PRIMARY KEY,
  nom varchar,
  prixParKm double precision
);

CREATE TABLE Kilometrage (
  id SERIAL PRIMARY KEY,
  idRegion1 int,
  idRegion2 int,
  km double precision,
foreign key (idRegion1) references Region(id),
foreign key (idRegion2) references Region(id)
);

CREATE TABLE Activite (
  id SERIAL PRIMARY KEY,
  descri varchar,
  idRegion int,
foreign key (idRegion) references Region(id)
);

CREATE TABLE ActivitesVoyage (
  id SERIAL PRIMARY KEY
);

CREATE TABLE ListeActivites (
  id SERIAL PRIMARY KEY,
  idActivitesVoyage int,
  idActivite int,
   foreign key (idActivitesVoyage) references ActivitesVoyage(id),
    foreign key (idActivite) references Activite(id)
);

CREATE TABLE Voyage (
  id SERIAL PRIMARY KEY,
  idRegionDest int,
  idRegionDepart int,
  idHotel int,
  idCooperative int,
  idActivitesVoyage int,
  nbreVoyageurs int,
  nbreJours int,
foreign key (idRegionDest) references Region(id),
foreign key (idRegionDepart) references Region(id),
foreign key (idHotel) references Hotel(id),
foreign key (idCooperative) references Cooperative(id),
foreign key (idActivitesVoyage) references ActivitesVoyage(id)
);

CREATE TABLE Pack (
  id SERIAL PRIMARY KEY,
  idRegionDest int,
  idHotel int,
  idCooperative int,
  idActivitesVoyage int,
  nbreVoyageurs int,
  prix double precision,
foreign key (idRegionDest) references Region(id),
foreign key (idHotel) references Hotel(id),
foreign key (idCooperative) references Cooperative(id),
foreign key (idActivitesVoyage) references ActivitesVoyage(id)
);
alter table Pack add nbreJours int;
create view Pack_et_hotel as (select Pack.id idpack,Hotel.nom nom_hotel,Pack.idCooperative cooperat,Pack.nbreVoyageurs,Pack.prix,Pack.idRegionDest idlieu,Pack.nbreJours from Pack join Hotel on Pack.idHotel = Hotel.id );
create view Lieu_et_pack as (select Pack_et_hotel.idpack,Pack_et_hotel.nom_hotel,Pack_et_hotel.cooperat,Pack_et_hotel.nbreVoyageurs,Pack_et_hotel.prix,region.nom lieu,Pack_et_hotel.nbreJours from Region join Pack_et_hotel on Region.id = Pack_et_hotel.idlieu);
create view DetailsparPack as (select idpack,lieu,nom_hotel Hotel,Cooperative.nom cooperative,nbreVoyageurs,nbrejours,prix from Lieu_et_pack join Cooperative on Lieu_et_pack.cooperat=Cooperative.id);
test_donner(
    insert into region (nom) values ('Antsirabe'); 
    insert into Cooperative (nom,prixParKm) values ('Cotisse',75)
    insert into hotel (idregion,nom,repas,prixJournalierParPersonne) values (1,'Milay',2,1500)
    insert into pack (idRegionDest,idHotel,idCooperative,nbreVoyageurs,nbrejours,prix) values (1,1,1,5,4,150000);
)