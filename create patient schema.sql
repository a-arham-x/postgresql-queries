SET search_path TO public;

DROP TABLE exams;
ALTER TABLE visits DROP COLUMN appointment_id;
DROP TABLE appointments;
DROP TABLE visits;
DROP TABLE patients;
DROP TABLE doctors;
DROP TABLE admin;

CREATE TABLE IF NOT EXISTS admin(
	id SERIAL PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	created_by INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS doctors(
	id SERIAL PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	created_by INTEGER REFERENCES admin(id) NOT NULL,
	deleted VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS patients(
	id SERIAL PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	created_by INTEGER REFERENCES admin(id) NOT NULL,
	deleted VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS appointments(
	id SERIAL PRIMARY KEY,
	patient_id INTEGER REFERENCES patients(id) NOT NULL,
	doctor_id INTEGER REFERENCES doctors(id) NOT NULL,
	start_time TIMESTAMP NOT NULL,
	end_time TIMESTAMP NOT NULL,
	status VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS visits(
	id SERIAL PRIMARY KEY,
	patient_id INTEGER REFERENCES patients(id) NOT NULL,
	doctor_id INTEGER REFERENCES doctors(id) NOT NULL,
	start_time TIMESTAMP NOT NULL,
	end_time TIMESTAMP NOT NULL
);

CREATE TABLE IF NOT EXISTS exams(
	id SERIAL PRIMARY KEY,
	visit_id INTEGER REFERENCES visits(id) NOT NULL
);

ALTER TABLE appointments
ADD COLUMN visit_id INTEGER REFERENCES visits(id);

ALTER TABLE visits
ADD COLUMN appointment_id INTEGER REFERENCES appointments(id)
