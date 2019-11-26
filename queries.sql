CREATE TABLE Adopters (
    AdopterKeyNum int,
    AdopterName varchar(255),
    AdopterwCat varchar(255),
    AdopterwChildren varchar(255)
);

CREATE TABLE Cats (
    CatName varchar(255),
    CatColor varchar(255),
    CatBreed varchar(255),
    CatKeyNum int,
    CatSize int,
    CatAge int,
    CatDateofArr int,
    CatPairing varchar(255),
    CatVolunteer varchar(255),
    CatVet varchar(255),
    CatwCat varchar(255),
    CatwKid varchar(255),
    CatAdopter varchar(255)
);


CREATE TABLE Volunteers (
    VolunteerKeyNum int,
    VolunteerName varchar(255),
    VolunteerBday int,
    VolunteerExperience int,
    VolunteerTraining int
);


CREATE TABLE Vets (
    VetKeyNum int,
    VetName varchar(255),
    VetSpecialty varchar(255),
    VetClinic varchar(255)
);
