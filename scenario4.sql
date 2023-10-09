DROP TABLE IF EXISTS patients CASCADE;
CREATE TABLE patients (
	id INTEGER NOT NULL,
	DOB DATE NOT NULL,
	last_name VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO patients VALUES(13, '2001-06-26', 'Richter', 'Cassie'), (17, '2001-06-26', 'Richter', 'Charlie');

select * from patients;


DROP TABLE IF EXISTS doctors CASCADE;
CREATE TABLE doctors (
	id INTEGER NOT NULL,
	last_name VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	specialty VARCHAR NOT NULL,
	PRIMARY KEY (id)
);

INSERT INTO doctors VALUES(9, 'Waterman', 'Seneth', 'Cardiology'), (23, 'Bhat', 'Khushi', 'Dermatology');

select * from doctors;


DROP TABLE IF EXISTS appointments;
CREATE TABLE appointments (
	patient_id INTEGER NOT NULL,
	doctor_id INTEGER NOT NULL,
	date_time TIMESTAMP NOT NULL,
	diagnosis VARCHAR,
	prescription_rx VARCHAR,
	PRIMARY KEY (patient_id, doctor_id, date_time),
	FOREIGN KEY (patient_id) references patients(id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT,
	FOREIGN KEY (doctor_id) references doctors(id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
);
INSERT INTO appointments VALUES(13, 9, '2023-09-13 09:15:00', 'High Blood Pressure', 'AML'), (17, 23,'2023-08-09 011:30:00', 'Eczema', 'CORT'),(17, 9,'2023-07-19 16:00:00', 'Low Blood Pressure', 'ORV') ;

select * from appointments;