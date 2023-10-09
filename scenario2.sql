DROP TABLE IF EXISTs Appointments;
DROP TABLE IF EXISTs patienthealthhistory;
DROP TABLE IF EXISTs patient_health_history;

-- Creating the PatientHealthInfo table
CREATE TABLE Patient_Health_History (
    Patient_Name VARCHAR(50) PRIMARY KEY,
    Allergy VARCHAR(50)
);

-- Inserting data into PatientHealthInfo
INSERT INTO Patient_Health_History (Patient_Name, Allergy)
VALUES
('Cassie Richter', 'Amoxicillin'),
('Khushi Bhat', 'Penicillin'),
('Kefeng Xiao', 'None');

-- Creating the Appointments table with a Foreign Key relationship
CREATE TABLE Appointments (
    Appointment_ID int PRIMARY KEY,
	Date DATE NOT NULL,
    Patient_Name VARCHAR(50),
    Diagnosis VARCHAR(50),
    Prescribed_Medicine VARCHAR(50),
    FOREIGN KEY (Patient_Name) 
	REFERENCES Patient_Health_History(Patient_Name)
);



-- Inserting data into Appointments
INSERT INTO Appointments (Appointment_ID, Date, Patient_Name, Diagnosis, Prescribed_Medicine)
VALUES
(111, '2023-10-10','Cassie Richter', 'Strep Throat', 'Amoxicillin'),
(112, '2023-10-10', 'Khushi Bhat', 'Flu', 'Tamiflu'),
(113, '2023-10-10', 'Kefeng Xiao', 'Sinus Infection', 'Amoxicillin');

SELECT * 
FROM Patient_Health_History

SELECT * 
FROM Appointments

SELECT appointment_id, a.patient_name, diagnosis, 
		prescribed_medicine, allergy
FROM Patient_Health_History as p
JOIN Appointments as a ON a.patient_name = p.patient_name



