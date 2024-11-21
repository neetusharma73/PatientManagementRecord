create database patientrecordmanagementsystem;
use patientrecordmanagementsystem;
show tables;
Select * from Patient;
Select * from doctor;
Select * from appointment;
Select * from prescription;
drop table Patient;
CREATE TABLE patient (
    patientId INT PRIMARY KEY,
    pName VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(10),
    pContactNumber VARCHAR(15),
    pEmail VARCHAR(255),
    address VARCHAR(500),
    medicalHistory TEXT,
    doctorAssigned VARCHAR(255)
);

CREATE TABLE doctor (
    doctorId INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(50),
    contactNumber VARCHAR(15),
    availability VARCHAR(50)
);

CREATE TABLE appointment (
    appointmentId INT PRIMARY KEY,
    patientId INT,
    doctorId INT,
    appointmentDate DATE,
    appointmentTime TIME,
    status VARCHAR(20),
    FOREIGN KEY (patientId) REFERENCES patient(patientId),
    FOREIGN KEY (doctorId) REFERENCES doctor(doctorId)
);

CREATE TABLE prescription (
    prescriptionId INT PRIMARY KEY,
    patientId INT,
    doctorId INT,
    medicines TEXT,
    dosageInstructions TEXT,
    notes TEXT,
    FOREIGN KEY (patientId) REFERENCES patient(patientId),
    FOREIGN KEY (doctorId) REFERENCES doctor(doctorId)
);