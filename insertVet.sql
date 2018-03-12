insert into Pet(PetID,PetName,Pet_Type,Age,Status) values('P01','Missy','Maltese',15,'Alive');

insert into Users(UserID,Name,Address,Email,PetID) values('U01','Chris','7/Honey Locust Lane/Dix Hills/NY/11746','Something1@gmail.com','P01');

insert into PetSpeciality(PetSpecID,PetDefinition) values('DD01','Dog');

insert into Services(ServiceID,Service_Definition,PetSpecID) values('S01N','Neutering','DD01');

insert into Available_Times(Available_ID,Available_hours,Available_Date) values('M01','9:00AM',3/12/18);

insert into Vet(Name,VetID,Email,Address,Location,PetSpecID,ServiceID,Phone_Number,Availability) values('John Smith','V01','JS@gmail.com','8/Honey Locust Drive/Dix Hills/NY/11746','Suffolk','DD01','S01N','646-254-7501','M01');

insert into Appointment(VetID,UserID,Date_Visit,Time_Visit,Reason_For_Visit,PetID,Address) values('V01','U01',3/12/18,'9:00AM','Neutering','P01','7/Honey Locust Lane/Dix Hills/NY/11746');

insert into Invoices(InvoiceID,VetID,UserID,Services_Rendered,Date_Visit,Time_Visit,Amount) values('I01','V01','U01','Neutering',3/12/18,'9:00AM','$10.00');

insert into Ratings(RatingID,UserID,VetID,Services_Rendered,Feedback) values('R01','U01','V01','Neutering','Service was good');