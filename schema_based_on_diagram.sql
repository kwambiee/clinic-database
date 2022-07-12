/* Database schema to keep the structure of entire database. */


CREATE TABLE medical_histories (
    ID INT PRIMARY KEY,
    ADMITTED_AT TIMESTAMP,
    PATIENT_ID INT,
    STATUS VARCHAR);

CREATE TABLE patients (ID INT PRIMARY KEY,name VARCHAR,Date_of_Birth DATE);

CREATE TABLE treatments (id INT PRIMARY KEY,type VARCHAR,name VARCHAR);
CREATE TABLE invoices (id INT PRIMARY KEY,total_amount DECIMAL,generated_at TIMESTAMP,payed_at TIMESTAMP,medical_history_id INT);

CREATE TABLE invoice_items (id INT PRIMARY KEY,unit_price DECIMAL,quantity INT,total_price DECIMAL,invoice_id INT,treatment_id INT);


ALTER TABLE medical_histories ADD CONSTRAINT fk_patientID FOREIGN KEY(patient_id) REFERENCES patients(id);
ALTER TABLE medical_histories ADD CONSTRAINT fk_treatmentID FOREIGN KEY(id) REFERENCES treatments(id);