create database medicallaboratoeysystem;
use medicallaboratoeysystem;

create table if not exists laboratorian (
laboratorian_ID int,
Fname varchar(20) not null,
phone int,
Address varchar(100),
PRIMARY KEY(laboratorian_ID)
);

create table patient (
 patient_ID int,
 name varchar(20) not null,
 phone int,
Address varchar(100),
birth_Date date,
job varchar(60),
PRIMARY KEY(patient_ID)
);

create table components (
component_ID int,
name varchar(30) not null,
Available_quantity int,
minimum_quantity int,
PRIMARY KEY(component_ID)
);

create table Medicaltest (
test_ID int,
name varchar(40) not null,
price int,
related_components varchar(70),
PRIMARY KEY(test_ID)
);

create table testresult (
test_ID int,
Date_of_result date,
patient_ID int,
laboratorian_ID int,
Result varchar(30),
FOREIGN KEY (test_ID)REFERENCES Medicaltest(test_ID),
FOREIGN KEY (patient_ID) REFERENCES patient(patient_ID),
FOREIGN KEY (laboratorian_ID) REFERENCES laboratorian(laboratorian_ID)
);

create table testcomponent (
test_ID int,
component_ID int,
FOREIGN KEY (test_ID) REFERENCES Medicaltest(test_ID),
FOREIGN KEY (component_ID) REFERENCES components(component_ID),
PRIMARY KEY (test_ID,component_ID)
);

INSERT INTO laboratorian VALUES(101,'Marie',102455678,'6047 Douglas Av.');
INSERT INTO laboratorian VALUES(102,'Brian',111678945,'782 First Street');
INSERT INTO laboratorian VALUES(103,'Francis',176359024,'Rambla de Cataluña, 23');
INSERT INTO laboratorian VALUES(104,'Rosie',154586239,'3 Hagalim Blv.');
INSERT INTO laboratorian VALUES(105,'Gina',165783356,'2793 Furth Circle');
INSERT INTO laboratorian VALUES(106,'Taylor',167863546,'120 Hanover Sq.');
INSERT INTO laboratorian VALUES(107,'Brian',158490205,'6251 Ingle Ln.');
INSERT INTO laboratorian VALUES(108,'Marie',190432370,'Forsterstr. 57');
INSERT INTO laboratorian VALUES(109,'Jay',158943203,'20093 Cologno Monzese');
INSERT INTO laboratorian VALUES(110,'Francis',150528927,'1785 Second Street');
INSERT INTO laboratorian VALUES(111,'Steven',456289014,'Smagsloget 45');
INSERT INTO laboratorian VALUES(112,'Thompson',842649015,'43 rue St. Laurent');
INSERT INTO laboratorian VALUES(113,'Jean',592310453,'Crowther Way 23');

INSERT INTO patient VALUES(12521,'Violeta',674390645,'8 Johnstown Road','2001-07-16','Mechanical engineer');
INSERT INTO patient VALUES(12522,'Mendel',459823674,'5290 North Pendale Street','1983-04-19','Pharmacist');
INSERT INTO patient VALUES(12523,'Choi',831058260,'Kirchgasse 6','1988-02-27','Software Engineer');
INSERT INTO patient VALUES(12524,'Sven',031267559,'Walserweg 21','1995-05-08','Programmer');
INSERT INTO patient VALUES(12525,'Martha',729036728,'Åkergatan 24','2006-02-19','Graphic Designer');
INSERT INTO patient VALUES(12526,'Alexander',036286158,'5905 Pompton St.','1970-11-29','Electrician');
INSERT INTO patient VALUES(12527,'Rita',905315789,'25, rue Lauriston','1992-01-13','Architect');
INSERT INTO patient VALUES(12528,'Sarah',421689536,'Hansastr. 15','1999-09-15','Marketing Coordinator');
INSERT INTO patient VALUES(12529,'Viktor',742157894,'3086 Ingle Ln.','1997-12-25','Figure Skater');
INSERT INTO patient VALUES(12530,'Steve',853157098,'3675 Furth Circle','2005-06-18','Physician Assistant');

INSERT INTO components VALUES(01,'graduated cylinder',5,7);
INSERT INTO components VALUES(02,'volumetric flask',13,9);
INSERT INTO components VALUES(03,'lab centrifuge',2,4);
INSERT INTO components VALUES(04,'test tube',15,20);
INSERT INTO components VALUES(05,'microscope',20,15);
INSERT INTO components VALUES(06,'thermal cycler',2,1);
INSERT INTO components VALUES(07,'autoclave',3,3);
INSERT INTO components VALUES(08,'Spectrophotometer',3,2);
INSERT INTO components VALUES(09,'Hematlogy analyzer',2,3);
INSERT INTO components VALUES(10,'chromatography systems',3,2);

INSERT INTO Medicaltest VALUES(001,'CBC',95.00,'3-part hematology analyzer');
INSERT INTO Medicaltest VALUES(002,'glucose test',45.00,'glucometer,lancet & test strips');
INSERT INTO Medicaltest VALUES(003,'hormone test',70.00,'immunoassay & mass spectrometry');
INSERT INTO Medicaltest VALUES(004,'coagulogram',100.00,'handheld analyzers, test strips, capillary tubes, and cuvettes');
INSERT INTO Medicaltest VALUES(005,'creatinine test',79.00,'small needle & creatinine analyzer');
INSERT INTO Medicaltest VALUES(006,'immunological test',130.00,'DNA electrophoresis system ,UV illuminator ,Nanodrop UV-spectrophotometer & ELISA reader');
INSERT INTO Medicaltest VALUES(007,'Urinalysis test',150.00,'gloves, paper towels & bottle with reagent test strips');
INSERT INTO Medicaltest VALUES(008,'bone marrow aspiration',120.00,'sterile drapes, syringes, aspiration needle, biopsy needle, specimen containers & specimen slides');
INSERT INTO Medicaltest VALUES(009,'erythrocyte sedimentation rate',160.00,'blood collection syringes, westergren tube & micropippetes');
INSERT INTO Medicaltest VALUES(010,'aminocentesis',200.00,'skin disinfectant, spinal needle, sterile syringes & ultrasound wand');

INSERT INTO testresult VALUES(001,'05-08-2024',12525,106,'WBCs=5000 cells/mcL, RBCs=5000000 cells/mcL & hemoglobin=16 mg/dL');
INSERT INTO testresult VALUES(001,'03-12-2023',12528,101,'blood glucose level=155 mg/dL');
INSERT INTO testresult VALUES(006,'07-11-2021',12523,104,'IgG=700 mg/dL , IgM=100 mg/dL');
INSERT INTO testresult VALUES(001,'01-05-2024',12521,105,'WBCs=5789 cells/mcL, RBCs=4500000 cells/mcL & hemoglobin =16.5 mg/dL');
INSERT INTO testresult VALUES(001,'02-16-2022',12527,107,'WBCs=7045 cells/mcL , RBCs=4300000 cells/mcL & Hemoglobin =15.7 mg/dL');
INSERT INTO testresult VALUES(008,'10-18-2023',12527,111,'45% hematopoietic cells');
INSERT INTO testresult VALUES(004,'08-10-2024',12527,104,'PT:12.8 seconds, PTR:1.0 & APTT:38 seconds');
INSERT INTO testresult VALUES(009,'04-06-2021',12522,112,'10 mm/hr');
INSERT INTO testresult VALUES(007,'09-14-2023',12526,113,'Turbidity: clear, PH:7, protein : negative, glucose: negative, ketone: negative & blood; negative');
INSERT INTO testresult VALUES(005,'11-26-2021',12530,109,'GFR:45, creatinine level: 15 mg/dL');

INSERT INTO testcomponent VALUES(001,09);
INSERT INTO testcomponent VALUES(002,05);
INSERT INTO testcomponent VALUES(003,04);
INSERT INTO testcomponent VALUES(004,10);
INSERT INTO testcomponent VALUES(005,07);
INSERT INTO testcomponent VALUES(006,03);
INSERT INTO testcomponent VALUES(007,10);
INSERT INTO testcomponent VALUES(008,05);
INSERT INTO testcomponent VALUES(009,07);
INSERT INTO testcomponent VALUES(010,05);


SELECT DISTINCT name
FROM patient
JOIN testresult ON patient.patient_ID = testresult.patient_ID
JOIN Medicaltest ON testresult.test_ID = Medicaltest.test_ID
WHERE Medicaltest.name = 'CBC' AND strftime('%Y', testresult.Date_of_result) = strftime('%Y' , 'now' ,'-1 year');

SELECT name
FROM components
WHERE Available_quantity < mininmum_quantity;

SELECT SUM(Medicalresult.price)
FROM testresult
JOIN Medicaltest ON testresult.test_ID = Medicaltest.test_ID
WHERE testresult.patient_ID = 12527
AND testresult.Date_of_result >= date('now' ,'-3 years');

CREATE VIEW Expensive_tests_results AS
SELECT 
    testresult.test_ID,
    Medicaltest.name AS test_name,
    Medicaltest.price,
    patient.name AS patient_name,
    laboratorian.Fname AS laboratorian_name,
    testresult.Date_of_result,
    testresult.Result
FROM 
    testresult 
JOIN 
    Medicaltest  ON testresult.test_ID = Medicaltest.test_ID
JOIN 
    patient  ON testresult.patient_ID = patient.patient_ID
JOIN 
    laboratorian  ON testresult.laboratorian_ID = laboratorian.laboratorian_ID
WHERE 
    Medicaltest.price > 100;
