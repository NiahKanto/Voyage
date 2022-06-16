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