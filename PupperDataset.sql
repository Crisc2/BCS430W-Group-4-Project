create table Pet(
PetID VarChar(200),
PetName VarChar(200),
Pet_type Char(200),
Age Integer,
Status VarChar(200),
constraint Pet_PK Primary Key(PetID)
);

create table Users(
UserID VarChar(200),
Name Char(200),
Address VarChar(200),
Email VarChar(200),
PetID VarChar(200),
constraint User_PK Primary Key(UserID,PetID,Address),
constraint User_Pet_FK Foreign Key(PetID) REFERENCES Pet(PetID)
);

create table PetSpeciality(
PetSpecID VarChar(200),
PetDefinition VarChar(200),
constraint PetSpec_PK Primary Key(PetSpecID)
);

create table Services(
ServiceID VarChar(200),
Service_Definition VarChar(200),
PetSpecID VarChar(200),
constraint Service_PK Primary Key(ServiceID,PetSpecID),
constraint Service_PetSpec_FK Foreign Key(PetSpecID) REFERENCES PetSpeciality(PetSpecID)
);

create table Available_times(
Available_ID VarChar(50),
Available_hours VarChar(7),
Available_Date DATE,
constraint Time_PK Primary Key(Available_ID)
);

create table Vet(
Name VarChar(200),
VetID VarChar(200),
Email VarChar(200),
Address VarChar(200),
Location VarChar(200),
PetSpecID VarChar(200),
ServiceID VarChar(200),
Phone_Number VarChar(200),
Availability VARCHAR(50),
constraint Vet_PK Primary Key(VetID),
constraint Vet_Service_FK Foreign Key(ServiceID,PetSpecID) REFERENCES Services(ServiceID,PetSpecID),
constraint Ver_Avail_FK Foreign Key(Availability) REFERENCES Available_times(Available_ID)
);

create table Appointment(
VetID VarChar(200),
UserID VarChar(200),
Date_visit Date,
Time_Visit VarChar(7),
Reason_For_visit VarChar(200),
PetID VarChar(200),
Address VarChar(200),
constraint Appt_PK Primary Key(Date_visit,Time_Visit),
constraint Appt_Vet_FK Foreign Key(VetID) REFERENCES Vet(VetID),
constraint Appt_User_FK Foreign Key(UserID,PetID,Address) REFERENCES Users(UserID,PetID,Address)
);

create table Invoices(
InvoiceID VarChar(200),
VetID VarChar(200),
UserID VarChar(200),
Services_Rendered VarChar(200),
Date_visit Date,
Time_Visit VarChar(7),
Amount VarChar(50),
constraint Inv_PK Primary Key(InvoiceID),
constraint Inv_Appt_FK Foreign Key(VetID,UserID,Services_Rendered,Date_visit,Time_Visit) REFERENCES Appointment(VetID,UserID,Reason_For_visit,Date_visit,Time_Visit)
);

create table Ratings(
RatingID VarChar(200),
UserID VarChar(200),
VetID VarChar(200),
Services_Rendered VarChar(200),
Feedback VarChar(200),
constraint Rat_PK Primary Key(RatingID),
constraint rat_inv_fk Foreign Key(UserID,VetID,Services_Rendered) REFERENCES Invoices(UserID,VetID,Services_Rendered)
);