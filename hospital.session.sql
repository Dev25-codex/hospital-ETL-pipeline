select count(*)from patients;
select*from patients limit 5;
DESCRIBE patients;
show tables;
select count(*)from appointments;
select count(*)from doctors;
select count(*)from billing;
select count(*)from treatments;
select * from billing limit 5;

DESCRIBE appointments;
DESCRIBE doctors;

select a.*,p.first_name,p.last_name
from appointments a
JOIN patients p On a.patient_id = p.patient_id
LIMIT 10;

select a.*,d.*
from appointments a
JOIN doctors d ON a.doctor_id = d.doctor_id
LIMIT 10;




