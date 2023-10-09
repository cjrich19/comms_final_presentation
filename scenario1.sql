DROP Table Patients;

CREATE TABLE Patients(
Name VARCHAR(50) NOT NULL,
Birthday Date NOT NULL,
Address VARCHAR(50) NOT NULL,
Height FLOAT NOT NULL,
Diagnosis VARCHAR(50) NOT NULL,
Medicine INT NOT NULL)

INSERT INTO Patients Values('Cassie','2001-6-26','101 Howard St', 5.7, 'High Blood Pressure',1)
INSERT INTO Patients Values('Cassie', '2001-6-26', '101 Howard St', 5.7, 'Low Blood Pressure',2)

SELECT * FROM Patients