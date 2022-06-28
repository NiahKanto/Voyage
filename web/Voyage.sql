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

alter table Hotel add lat float;
alter table Hotel add lng float;

insert into region(nom) values('Tana');
insert into region(nom) values('Tamatave');
insert into region(nom) values('Sainte-Marie');
insert into region(nom) values('Nosy Be');
insert into region(nom) values('Majunga');
insert into region (nom) values ('Antsirabe'); 

# Region Tana
insert into Hotel(idregion,lat,lng,nom) values (2,-18.93455859707296, 47.58987496577852,'Le Hintsy Hotel');
insert into Hotel(idregion,lat,lng,nom) values (2,-18.935800129643887, 47.56582260131836,'Sky blue Hotel');
insert into Hotel(idregion,lat,lng,nom) values (2,-18.91044794961824, 47.54339933395386,'Hotel Panorama');

# Region Toamasina
insert into Hotel(idregion,lat,lng,nom) values (3,-18.150256067127984, 49.41328525543213,'Calypso Hotel');
insert into Hotel(idregion,lat,lng,nom) values (3,-18.16190856344819, 49.42081689834595,'Blue Hotel Restaurant');
insert into Hotel(idregion,lat,lng,nom) values (3,-18.15499667777166, 49.40179467201233,'Friends Hotel');

# Region Sainte Marie
insert into Hotel(idregion,lat,lng,nom) values (4,-16.887612640931465, 49.87894356250763,'Masoandro Lodge');
insert into Hotel(idregion,lat,lng,nom) values (4,-16.902246498943935, 49.87238824367523,'Le Rocher');
insert into Hotel(idregion,lat,lng,nom) values (4,-16.82060373676711, 49.92818355560303,'Sainte Marie Lodge');

# Region Nosy Be
insert into Hotel(idregion,lat,lng,nom) values (5,-13.339849868246288, 48.27641487121582,'Nosy Be Lodge');
insert into Hotel(idregion,lat,lng,nom) values (5,-13.331999343961305, 48.185176849365234,'Kintana Hotel');
insert into Hotel(idregion,lat,lng,nom) values (5,-13.248634467566495, 48.190927505493164,'Andilana Beach Resort');

# Rehion Majunga
insert into Hotel(idregion,lat,lng,nom) values (6,-15.67403146286629, 46.32342338562012,'Coco Beach');
insert into Hotel(idregion,lat,lng,nom) values (6,-15.678163371741048, 46.33659839630127,'Sunny Hotel Majunga');
insert into Hotel(idregion,lat,lng,nom) values (6,-15.668122687907259, 46.32406711578369,'Zahamotel');

# Region Antsirabe
insert into Hotel(idregion,lat,lng,nom) values (7,-19.82824093579678, 47.057790756225586,'Hotel Restaurant Vohisoa');
insert into Hotel(idregion,lat,lng,nom) values (7,-19.872279645332373, 46.9769811630249,'Hotel Laza');