DROP DATABASE IF EXISTS AdoptACat;
CREATE DATABASE AdoptACat;

CREATE TABLE Adopters (
    AdopterKeyNum int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    AdopterName varchar(255) NOT NULL,
    AdopterwCat boolean NOT NULL,
    AdopterwChildren boolean NOT NULL,
    AdoptCat int FOREIGN KEY (Cats.CatKeyNum)
);

CREATE TABLE Cats (
    CatKeyNum int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CatName varchar(255) NOT NULL,
    CatColor varchar(255) NOT NULL,
    CatBreed varchar(255),
    CatSize varchar(255) NOT NULL,
    CatAge int,
    CatDateofArr date NOT NULL,
    CatPairing int FOREIGN KEY (CatKeyNum),
    CatVolunteer int FOREIGN KEY (Volunteers.VolunteerKeyNum),
    CatVet int FOREIGN KEY (Vets.VetKeyNum),
    CatwCat boolean NOT NULL,
    CatwKid boolean NOT NULL,
    CatAdopter int FOREIGN KEY (Adopters.AdopterKeyNum)
);


CREATE TABLE Volunteers (
    VolunteerKeyNum NOT NULL AUTO_INCREMENT PRIMARY KEY,
    VolunteerName varchar(255) NOT NULL,
    VolunteerBday date NOT NULL,
    VolunteerExperience int NOT NULL,
    VolunteerTraining boolean NOT NULL
    VolunteerCat int FOREIGN KEY (Cats.CatKeyNum)
);


CREATE TABLE Vets (
    VetKeyNum NOT NULL AUTO_INCREMENT PRIMARY KEY,
    VetName varchar(255) NOT NULL,
    VetSpecialty varchar(255),
    VetClinic varchar(255),
    VetCat int FOREIGN KEY (Cats.CatKeyNum)
);

CREATE TABLE Cat_Adopters(
  CatID int,
  AdoptID int
)

CREATE TABLE Cat_Vets(
  CatID int,
  VetID int
)

CREATE TABLE Cat_Volunteers(
  CatID int,
  VolunteerID int
)





INSERT INTO Adopters (AdopterName, AdopterwCat, AdopterwChildren) VALUES ('Gary McGary', '0', '1');
INSERT INTO Adopters (AdopterName, AdopterwCat, AdopterwChildren) VALUES ('Barry McBarry', '1', '1');
INSERT INTO Cats (CatName, CatColor, CatSize, CatAge, CatDateofArr, CatVolunteer, CatVet, CatwKid) VALUES ('FluffyPants','white','large','5','2019-03-04','Gary McGary','Dr. Amazing', '1');
INSERT INTO Volunteers (VolunteerName, VolunteerBDay, VolunteerExperience, VolunteerTraining) VALUES ('Gary McGary', '2001-04-06', '5', '1');
INSERT INTO Vets (VetName, VetSpecialty, VetClinic) VALUES ('Dr. Amazing', 'asthma', 'Paws Clinic');

UPDATE Adopters SET AdopterName = 'Perry McPerry' WHERE AdopterKeyNum='1';
DELETE FROM Adopters WHERE AdopterName = 'Barry McBarry';

SELECT Cats.CatAdopter, Adopters.AdoptCat FROM Cats JOIN Cat_Adopters ON Cats.CatKeyNum=Cat_Adopters.CatID JOIN Adopters ON Cat_Adopters.AdoptID = Adopters.AdopterKeyNum;
SELECT Cats.CatVet, Vets.VetCat FROM Cats JOIN Cat_Vets ON Cats.CatKeyNum=Cat_Vets.CatId JOIN Vets ON Cat_Vets.VetID=Vets.VetKeyNum;
SELECT Cats.CatVolunteer, Volunteers.VolunteerCat FROM Cats JOIN Cat_Volunteers ON Cats.CatKeyNum=Cat_Volunteers.CatID JOIN Volunteers ON Cat_Volunteers.VolunteerID=Volunteers.VolunteerKeyNum;
