DROP TABLE IF EXISTS doctors;
DROP TABLE IF EXISTS appointments;

CREATE TABLE doctors ( 
	id INTEGER NOT NULL,
	last_name VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	department VARCHAR NOT NULL,
	PRIMARY KEY(id));
	
CREATE TABLE appointments (
	patient_id INTEGER NOT NULL,
	patient_name VARCHAR NOT NULL,
	doctor_id INTEGER NOT NULL,
	date_time TIMESTAMP NOT NULL,
	diagnosis VARCHAR,
	prescription VARCHAR,
	purpose_of_visit VARCHAR,
	PRIMARY KEY(patient_id, doctor_id, date_time),
	FOREIGN KEY (doctor_id) references doctors(id)
	ON DELETE CASCADE);

INSERT INTO doctors (id, last_name, first_name, department) VALUES (23, 'Xiao', 'Kefeng', 'Cardiology');
--INSERT INTO doctors (id, last_name, first_name, specialty) VALUES (54, 'Xiao', 'Kefeng', 'Cardiology');--
INSERT INTO appointments(patient_id, patient_name, doctor_id, date_time, diagnosis, prescription, purpose_of_visit) 
	VALUES (45, 'Cassie Richter', 23, '2023-10-09 02:30:00', 'High Blood Pressure', 'Amlodipine', 'Picking up medication');
	
--dropping records from Doctors--

DELETE FROM doctors WHERE (id = 23);