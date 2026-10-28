 create database hospital_db;
 use hospital_db;
 select*from patients;
 select*from doctors;
 select*from treatments;
 select*from billing;
 select*from appointments;
 show tables;
select first_name,last_name,gender
 from patients; 
 select first_name,last_name
 from patients
 where gender ='F';
 
 select first_name,last_name
 from patients
 where gender ='M';
 
 select first_name,last_name,date_of_birth,patient_id
 from patients
 where patient_id > 'P005';
 
 select first_name,last_name,gender,patient_id
 from patients
 where gender = 'F'
 and insurance_provider = 'wellnessCorp';
 
 select first_name,last_name,gender,patient_id
 from patients
 where date_of_birth > '1990-01-01';
 
 select distinct insurance_provider from patients;
 
 select first_name,last_name,insurance_provider
 from patients 
 order by first_name asc;
 
 select first_name,last_name,date_of_birth
 from patients 
 order by date_of_birth desc;
 
 select first_name,last_name,date_of_birth
 from patients
 order by date_OF_Birth desc 
 limit 5;
 
select count(*) from patients;
select count(*)
from patients 
where gender = 'F'; 
 
 select insurance_provider,count(*)
 from patients
 group by insurance_provider;
 
 select gender ,count(*)
 from patients 
 group by gender;
 
 select insurance_provider,count(*)
 from patients
 group by insurance_provider;
 
 select insurance_provider,count(*)
 from patients
 group by insurance_provider
 having count(*)>10;
 
 select avg(timestampdiff(year,date_of_birth,curdate()))
 from patients;
 
 select max(date_of_birth) from patients;
  select min(date_of_birth) from patients;
  
  select gender,count(*)
  from patients 
  group by gender
  having count(*)>20;
  
  select insurance_provider,count(*) as patient_count
  from patients 
  group by insurance_provider
  order by patient_count desc;
  
  