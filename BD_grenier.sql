
-- creation de la table  contributeur (utilisateurs inscrits)

CREATE TABLE IF NOT EXISTS Contributeur
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nom VARCHAR(30) NOT NULL,
    prenom VARCHAR(30) NOT NULL,
    date_inscription DATETIME NOT NULL, 
    code_postal SMALLINT(5),
    commune VARCHAR(30) NOT NULL,
    email VARCHAR(50),
    tel_fixe CHAR(10),                   -- les numero de tel et l'email ne sont pas obligatoires mais fortement conseillés pour les contacts entre utilisateurs 
    tel_port CHAR(10),
    numero_ip VARCHAR(40),               --en prévision d'une utilisation statistique
    espece_id INT UNSIGNED NOT NULL
)
ENGINE =INNODB;


/* creation de la table de refrence que l'on peut enrichir avec environ 15000 espèces européennes
cette table servira de vérification des enregistrements  des contributeurs*/

CREATE TABLE IF NOT EXISTS Espece_ref
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nom_commun VARCHAR(30) NOT NULL,
    nom_latin VARCHAR(30),
    categorie_id VARCHAR(30) NOT NULL,
        
    PRIMARY KEY(id)
)
ENGINE = INNODB;

/* creation d'une table categorie comprenant les categorie végétale prédéfinie qui seront visibles
dans un menu déroulant lors de l'enregistrement des dépots d'espèces*/ 

CREATE TABLE IF NOT EXISTS Categorie
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nom VARCHAR(30) NOT NULL,
    description VARCHAR (150) NOT NULL,
    PRIMARY KEY(id)
)
ENGINE = INNODB;


