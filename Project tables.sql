CREATE TABLE Employer
(
   Name VARCHAR(100) NOT NULL,
  
   Employer_ID INT NOT NULL,
  
   Mail VARCHAR(50) NOT NULL,
  
   Password VARCHAR(50) NOT NULL,
  
   Gender VARCHAR(10) NOT NULL,

   Birthdate VARCHAR(50) NOT NULL,

   Num_of_Positions INT NOT NULL,

   Contact_number INT NOT NULL,
  
   Company_name VARCHAR(50) NOT NULL,
  
   PRIMARY KEY (Employer_ID),
  
   UNIQUE (Mail),
  
   UNIQUE (Contact_number)
);

CREATE TABLE Job_Vacancy
(
  Job_type VARCHAR(50) NOT NULL,

  Salary FLOAT NOT NULL,

  Number_of_applicants INT NOT NULL,

  Skills VARCHAR(100) NOT NULL,

  Age_ INT NOT NULL,

  Gender VARCHAR(10) NOT NULL,

  Experience VARCHAR(255) NOT NULL,

  Location VARCHAR(255) NOT NULL,

  Job_Name VARCHAR(100) NOT NULL,

  Job_ID INT NOT NULL,

  Date DATE NOT NULL,

  PRIMARY KEY (Job_ID),

);

CREATE TABLE Job_Seeker
(
  Name VARCHAR(100) NOT NULL,

  Location VARCHAR(255) NOT NULL,

  Birthdate VARCHAR(50) NOT NULL,

  Nationality VARCHAR(20) NOT NULL,

  Mail VARCHAR(50) NOT NULL,

  Jobseeker_ID INT NOT NULL,

  Password VARCHAR(50) NOT NULL,

  Gender VARCHAR(10) NOT NULL,

  Contact_number INT NOT NULL,

  No_of_jobs INT NOT NULL,

  Date DATE NOT NULL,

  Employer_ID INT NOT NULL,

  PRIMARY KEY (Jobseeker_ID),

  FOREIGN KEY (Employer_ID) REFERENCES Employer(Employer_ID),

  UNIQUE (Mail),

  UNIQUE (Contact_number)
);

 CREATE TABLE Apply_Save
(
  Jobseeker_ID INT NOT NULL,

  Job_ID INT NOT NULL,

  PRIMARY KEY (Jobseeker_ID, Job_ID),

  FOREIGN KEY (Jobseeker_ID) REFERENCES Job_Seeker(Jobseeker_ID),

  FOREIGN KEY (Job_ID) REFERENCES Job_Vacancy(Job_ID)
);

create table Announcements
(
   Employer_ID int NOT null,

   Announcement_ID int not null,

   Announcement_Date date not null,

   primary key (Announcement_ID),

   foreign key (Employer_ID) references Employer(Employer_ID)
);

Alter table Announcements 
ADD Available_positions INT

Alter table Announcements 
ADD Job_ID INT
FOREIGN KEY (Job_ID) REFERENCES Job_Vacancy(Job_ID)

Alter table Announcements 
ADD Hide bit

