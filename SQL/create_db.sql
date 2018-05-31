use woodytoys;

CREATE TABLE Client
(
id_Client int not null,
Nom text not null,
Adresse text not null,
Localite text not null,
Compte decimal(7,2) not null,
primary key (id_Client)
);

CREATE TABLE Produit
(
id_Produit int not null,
Labelle text not null,
Prix decimal(7,2) not null,
Quantite int not null,
primary key (id_Produit)
) ;

CREATE TABLE Commande
(
id_Commande int not null,
id_Client int not null,
Date_Commande datetime not null,
PRIMARY KEY (id_Commande, id_Client),
FOREIGN KEY (id_Client) REFERENCES Client(id_Client)
) ;

create table Detail
(
id_Commande int not null,
id_Produit int not null,
quantiteCommande int not null,
primary key (id_Commande,id_Produit),
foreign key (id_Commande) references Commande(id_Commande),
foreign key (id_Produit) references Produit(id_Produit)
) ;

CREATE TABLE Employe
(
id_Employe int not null,
Nom text not null,
Adresse text not null,
Localite text not null,
Date_Debut datetime not null,
PRIMARY KEY (id_Employe)
) ;