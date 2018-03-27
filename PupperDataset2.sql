create table Users(
UserID VarChar(200),
Name Char(200),
Address VarChar(200),
Email VarChar(200),
constraint User_PK Primary Key(UserID)
);


create table Pet(
PetID VarChar(200),
UserID VarChar(200),
PetName VarChar(200),
Pet_type Char(200),
Age Integer,
Status VarChar(200),
constraint Pet_PK Primary Key(PetID),
Constraint Pet_user_fk Foreign Key(UserID) REFERENCES Users(UserID)
);


create table Insurance(
Insurance_ID VarChar(200),
Insurance_Type VarChar(200),
constraint Insurance_pk Primary Key(Insurance_ID)
);

create table VetInsurance(
VetInsuranceID VarChar(200),
VetID VarChar(200),
Insurance_ID VarChar(200),
constraint VetInsurance_pk Primary Key(VetInsuranceID),
constraint VetInsurance_Vet_fk Foreign Key(VetID) REFERENCES Vets(VetID),
constraint VetInsurance_Insurance_fk Foreign Key(Insurance_ID) REFERENCES Insurance(Insurance_ID)


);

create table Vet(
Name VarChar(200),
VetID VarChar(200),
Email VarChar(200),
Address VarChar(200),
Location VarChar(200),
Profile_Pic LONGBLOB,
Vet_Bio VarChar(200),
Phone_Number VarChar(200),
Insurance_ID VARCHAR(50),
constraint Vet_PK Primary Key(VetID),
constraint Vet_Insurance_FK Foreign Key(Insurance_ID) REFERENCES VetInsurance(VetInsuranceID)
);

create table PreferredVets(
UserID VarChar(200),
RankOneVet VarChar(200),
RankTwoVet VarChar(200),
RankThreeVet VarChar(200),
constraint PreferredVets_PK Primary Key(UserID),
constraint PreferredVets_RankO_fk FOREIGN KEY(RankOneVet) REFERENCES Vet(VetID),
constraint PreferredVets_Ranktwo_fk FOREIGN KEY(RankTwoVet) REFERENCES Vet(VetID),
constraint PreferredVets_Rankthree_fk FOREIGN KEY(RankThreeVet) REFERENCES Vet(VetID)
);

create table Availability(
Availability_ID VarChar(200),
VetID VarChar(200),
constraint Time_PK Primary Key(Availability_ID,VetID),
constraint Time_vet_fk Foreign Key(VetID) REFERENCES Vet(VetID)
);



create table Appointment(
AppointmentID VarChar(200),
VetID VarChar(200),
UserID VarChar(200),
Date_visit Date,
Time_Visit VarChar(7),
Service_Rendered VarChar(200),
PetID VarChar(200),
constraint Appt_PK Primary Key(AppointmentID),
constraint Appt_Vet_FK Foreign Key(VetID) REFERENCES Vet(VetID),
constraint Appt_User_FK Foreign Key(UserID) REFERENCES Users(UserID),
constraint Appt_Pet_FK Foreign Key(PetID) REFERENCES Pet(PetID)
);

create table Invoices(
InvoiceID VarChar(200),
VetID VarChar(200),
UserID VarChar(200),
AppointmentID VarChar(200),
Amount VarChar(50),
constraint Inv_PK Primary Key(InvoiceID),
constraint Inv_Appt_FK Foreign Key(VetID,UserID,AppointmentID) REFERENCES Appointment(VetID,UserID,AppointmentID)
);

create table Ratings(
RatingID VarChar(200),
UserID VarChar(200),
VetID VarChar(200),
Rating VarChar(200),
constraint Rat_PK Primary Key(RatingID),
constraint rat_inv_fk Foreign Key(UserID,VetID) REFERENCES Invoices(UserID,VetID)
);