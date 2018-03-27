insert into Pet(PetID,UserID,PetName,Pet_Type,Age,Status) values('P01','U01','Missy','Maltese',15,'Alive');
insert into Pet(PetID,UserID,PetName,Pet_Type,Age,Status) values('P02','U01','Victor','Maltese',9,'Alive');
insert into Pet(PetID,UserID,PetName,Pet_Type,Age,Status) values('P03','U02','Mrs Popcorn','Lion',3,'Alive');

insert into Users(UserID,Name,Address,Email) values('U01','Chris','7/Honey Locust Lane/Dix Hills/NY/11746','Something1@gmail.com');
insert into Users(UserID,Name,Address,Email) values('U02','Jacob','8/Honey Locust Lane/Dix Hills/NY/11746','Something2@gmail.com');

insert into Availability(Availability_ID,VetID) values('Weekdays 9am-5pm','V01');
insert into Availability(Availability_ID,VetID) values('Weekends 9am-5pm','V02');
insert into Availability(Availability_ID,VetID) values('Weekdays 9am-5pm','V03');

insert into Insurance(Insurance_ID,Insurance_Type) values('I01','PetCare');

insert into VetInsurance(VetInsuranceID,VetID,Insurance_ID) values('VI01','V01','I01');

insert into Vet(VetID,Name,Email,Address,Location,Phone_Number,Profile_Pic,Vet_Bio,Insurance_ID) values('V01','John Smith','JS@gmail.com','8/Honey Locust Drive/Dix Hills/NY/11746',' East Suffolk','631-111-1111','null','Can perform Cat Neutering and Dog Neutering','VI01');
insert into Vet(VetID,Name,Email,Address,Location,Phone_Number,Profile_Pic,Vet_Bio,Insurance_ID) values('V02','John Adams','JA@gmail.com','8/Honey Locust Drive/Dix Hills/NY/11746',' West Suffolk','631-222-1111','null','Can perform Cat Neutering','VI01');
insert into Vet(VetID,Name,Email,Address,Location,Phone_Number,Profile_Pic,Vet_Bio,Insurance_ID) values('V03','Smith Adams','SA@gmail.com','8/Honey Locust Drive/Dix Hills/NY/11746',' East Nassau','631-121-1111','null','Can perform Cat Neutering,Bird Checkup,Lion Checkup and Dog Neutering ','VI01');

insert into Appointment(AppointmentID,VetID,UserID,Date_Visit,Time_Visit,Service_Rendered,PetID) values('A01','V01','U01',3/12/18,'9:00AM','Neutering','P01');

insert into Invoices(InvoiceID,VetID,UserID,AppointmentID,Amount) values('I01','V01','U01','A01','$10.00');

insert into Ratings(RatingID,UserID,VetID,Rating) values('R01','U01','V01','4/5');