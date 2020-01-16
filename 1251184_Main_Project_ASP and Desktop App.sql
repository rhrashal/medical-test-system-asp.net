/***********************Medical test billing System************************************/ 

/******create  Database for Medical test and billing system AS 'MedicalTestDB'---------*/
Go
Use master;
GO
--If DB_ID('MedicalTestDB') IS NOT NULL
DROP DATABASE  IF EXISTS MedicalTestDB;

GO

CREATE DATABASE MedicalTestDB;

GO
USE MedicalTestDB;

GO
CREATE TABLE Doctor(
						DoctorID 		INT IDENTITY PRIMARY KEY,
						DoctorName 	VARCHAR(60),
						Email varchar(200),
						Mobile 		VARCHAR(11),
						DepartmentName 	VARCHAR(40)
						);



						
/***********************Insert into Doctor Table***********************/
GO
INSERT INTO Doctor VALUES ('Abul Haidar', 'AbulHaidar@gmail.com', '01722363361', 'Cardiology'), ('Abdur Roshid','AbRoshid@hotmail.com', '01722363362', 'Burn'),
							('Dripty Sarkar','Drpy@gmail.com',  '01722363363','Neurology'), ('Sohidul Islam', 'Shodiul@gmail.com',    '01722363364','Coronary'),
							('Anayet Ullah', 'AnayetUllah@gmail.com',  '01722363365', 'Gynecology'), ('Selina Akter', 'Selina@gmail.com',  '01722363366', 'Haematology'),
							('kepayet Hossain', 'kafayet@yahoo.com',  '01722363367','Radiology'),
							('kepayet Hossain', 'kafayet@yahoo.com',  '01722363367','Radiology'),
							('Dripty Sarkar','Drpy@gmail.com',  '01722363363','Neurology'),
							('Anayet Ullah', 'AnayetUllah@gmail.com',  '01722363365', 'Gynecology');


/***********************Patient Table***********************/
GO
CREATE TABLE Patient(
						PatientID 		INT IDENTITY PRIMARY KEY,
						PatientName 		VARCHAR(60),
						Age 			INT DEFAULT 1,
						DoctorID 		INT REFERENCES Doctor(DoctorID) ON DELETE NO ACTION,
						MobileNumber	VARCHAR(11)						
						);


/***********************Insert into Patient Table***********************/
GO
INSERT INTO Patient 
				VALUES ('Kawsar Hossain', 35, 1,  '01721454530'),
						('Alauddin Hossain', 26, 2, '01721454531'),
						('Mohib Ullah', 28, 3, '01721454533'),
						('Masud Hasan', 20, 4, '01721454534'),
						('Emran Hosen', 25, 5,'01721454535'),
						('Sarmin Akter', 23, 6, '01721454536'),
						('Benjir Akter', 30, 7, '01721454537'),
						('Rokya Akter', 19, 1, '01721454538'),
						('Alauddin Jafor', 22, 2, '01721454539'),
						('Arif Hossain', 26, 3,'01721454540' ),
						('Sorif Ahmed', 13, 4, '01721454541'),
						('Nila Choydury', 19, 5, '01721454542'),
						('Henry aliba', 31, 6, '01721454543'),
						('Rojario Mithi', 45, 7,  '01721454544'),
						('Arjit Singh', 25, 1, '01721454545');
						

/***********************Particular Table***********************/
GO
CREATE TABLE Particular(
						ParticularID 	INT IDENTITY PRIMARY KEY,
						ParticularName 	VARCHAR(200),
						ImageUrl		VARCHAR(MAX),
						Rate 			MONEY DEFAULT 50
						);


/***********************Insert into Particular Table***********************/
GO
INSERT INTO Particular VALUES	('Computer Axial Tomography (CT)', '~/Image/CT.jpg', 870),
								('Magnetic Resonance Imaging (MRI)', '~/Image/MRI.jpg', 3600),
								('Complete Blood Count (CBC)', '~/Image/CBC.jpg', 500), 
								('Prothrombin Time (PT)', '~/Image/PT.jpg', 300),
								('Electrocardiogram (EKG)', '~/Image/EKG.jpg', 120), 
								('Prostate Specific Antigen (PSA Test)', '~/Image/PSA.jpg', 1350),
								('Prostate Specific Antigen (PSA Test)', '~/Image/PSA.jpg', 1350),
								('Prostate Specific Antigen (PSA Test)', '~/Image/PSA.jpg', 1350);

/***********************Service Table***********************/
CREATE TABLE Service(
						ServiceID 	INT IDENTITY PRIMARY KEY,
						PatientID 		INT REFERENCES Patient(PatientID)ON DELETE NO ACTION,
						ParticularID 	INT REFERENCES Particular(ParticularID)ON DELETE NO ACTION
						);

/***********************Insert into Service Table***********************/
GO
INSERT INTO Service VALUES (1, 1), ( 1, 2), ( 1, 4), ( 2, 4), ( 2, 3), 
							( 3, 4), ( 3, 3), ( 3, 6), ( 4, 6), ( 4, 5), 
							( 5, 1), ( 5, 3), ( 5, 5), ( 6, 2), ( 6, 3), (7, 6), 
							( 7, 4), ( 8, 5), ( 9, 2),( 10,2),( 11,3), ( 12,4),
							(13,6), (14,3);


go
/***********************WindowUser Table  for Window Application***********************/

CREATE TABLE WindowUser(
						UserID 		INT IDENTITY PRIMARY KEY,
						UserName 	VARCHAR(60),
						Email varchar(200),
						Password 		VARCHAR(100)
						);
go


insert into WindowUser values ('user', 'user@gmail.com', 'user'), ('admin', 'admin@gmail.com', 'admin');

go

CREATE TABLE DoctorInfo(
						DoctorID 		INT IDENTITY PRIMARY KEY,
						DoctorName 	VARCHAR(60),
						Email varchar(200),
						Mobile 		VARCHAR(11),
						DepartmentName 	VARCHAR(40)
						);
go

INSERT INTO DoctorInfo VALUES ('Abul Haidar', 'AbulHaidar@gmail.com', '01722363361', 'Cardiology'),
								('Dripty Sarkar','Drpy@gmail.com',  '01722363363','Neurology'),
								('Dripty Sarkar','Drpy@gmail.com',  '01722363363','Neurology'),
								('Dripty Sarkar','Drpy@gmail.com',  '01722363363','Neurology');
go

CREATE TABLE PatientInfo(
						PatientID 		INT IDENTITY PRIMARY KEY,
						PatientName 	VARCHAR(60),
						Age 			INT DEFAULT 1,
						DoctorID 		INT REFERENCES DoctorInfo(DoctorID) ON DELETE NO ACTION,
						ImageUrl		VARCHAR(MAX) null					
						);
go

INSERT INTO PatientInfo VALUES ('Kawsar Hossain', 35, 1,  'D:\Capture.JPG');

go
/*---------------------------------------------------------------------------------*/

PRINT ('This Script Successfully Executed');

/*----------------------------------------------------*/
GO

/**********************1251184- Robiul Hossain************************************/



--SELECT Patient.PatientID, 
--		Patient.PatientName,
--		Patient.Age,
--		Patient.MobileNumber,
--		Doctor.DoctorName,
--		Doctor.DepartmentName,
--		Particular.ParticularName,
--		Particular.ImageUrl,
--		Particular.Rate
--FROM [Patient] join Doctor on Patient.DoctorID = Doctor.DoctorID
--				join Service on Service.PatientID = Patient.PatientID 
--				join Particular on Particular.ParticularID = Service.ParticularID;

--select Service.ServiceID, Service.PatientID, Service.ParticularID,  Patient.PatientName, Particular.ParticularName 
--                            from Patient join Service on Patient.PatientID = Service.PatientID
--			                            join Particular on Particular.ParticularID = Service.ParticularID;

--SELECT  Patient.PatientID, 
--		Patient.PatientName,
--		Patient.Age,
--		Patient.MobileNumber,
--		Doctor.DoctorName,
--		Doctor.DepartmentName,
--		Particular.ParticularName,
--		Particular.Rate
--FROM [Patient] join Doctor on Patient.DoctorID = Doctor.DoctorID
--				join Service on Service.PatientID = Patient.PatientID 
--				join Particular on Particular.ParticularID = Service.ParticularID
--				WHERE Patient.PatientID = @patientID;

--SELECT  Patient.PatientID, Patient.PatientName, Patient.Age, Patient.MobileNumber,
--		Doctor.DoctorName, Doctor.DepartmentName, Particular.ParticularName, Particular.ImageUrl, Particular.Rate
--            FROM Doctor join [Patient]  on Patient.DoctorID = Doctor.DoctorID
--				join Service on Service.PatientID = Patient.PatientID 
--				join Particular on Particular.ParticularID = Service.ParticularID 
--				WHERE (Patient.PatientID = @PatientID1)