create database medical_data;
use medical_data;
select first_name,last_name,gender from patientsdata where gender="M";
select * from provincedata2;
select first_name,last_name from patientsdata where allergies is not null;
select first_name,last_name from patientsdata where allergies is null or trim(allergies)='';
select allergies, count(*) as total from patientsdata GROUP BY allergies;

select first_name from patientsdata where first_name like 'C%';

select first_name,last_name from patientsdata where weight>=100 and weight<=120;

SELECT * FROM patientsdata WHERE allergies = '' OR allergies IS NULL   OR TRIM(allergies) = '';
   SET SQL_SAFE_UPDATES =1;

UPDATE patientsdata SET allergies = 'NKA' WHERE allergies IS NULL OR TRIM(allergies) = '';

select concat(first_name,' ',last_name)as fullname from patientsdata;

select  p.first_name,p.last_name,r.province_name from patientsdata p join provincedata2 r on p.province_id = r.province_id;

select count(*) as total_paisentes from patientsdata  where year(birth_date)=2010;

select first_name,last_name,height from patientsdata where height=(select max(height) from patientsdata);

select * from patientsdata where patient_id in (1,45,534,879,1000);

select count(*) from admissiondata;

select * from admissiondata where admission_date=discharge_date;

select count(*) from admissiondata where patient_id=579;

select distinct city from patientsdata where province_id="NS";

select first_name,last_name, birth_date from patientsdata where  height >160 and weight >70;

select distinct year(birth_date) as y from patientsdata order by y asc;

select first_name from patientsdata group by first_name having count(*)=1; 

select patient_id,first_name from patientsdata where first_name like "S%s" and length(first_name)>=6; 

select p.patient_id,p.first_name,p.last_name from patientsdata p join admissiondata d on p.patient_id=d.patient_id where d.diagnosis="Dementia";

select first_name from patientsdata order by length(first_name),first_name;

select sum(case when gender="M" then 1 else 0 end) as male,sum(case when gender="F" then 1 else 0 end)as female from patientsdata;

select sum(case when gender="M" then 1 else 0 end) as male,sum(case when gender="F" then 1 else 0 end)as female from patientsdata; 

select patient_id,diagnosis from admissiondata group by patient_id,diagnosis having count(*)>1;

select city,count(*)as sai from patientsdata group by city order by sai desc,city asc; 

select first_name,last_name,"Patient"as roll from patientsdata union select first_name,last_name,"Doctor"as roll from doctordata;

select allergies,count(*)as tp from patientsdata where allergies is not null group by allergies order by tp desc;

select first_name,last_name,birth_date from patientsdata where birth_date >="1970-01-01" and birth_date < "1980-01-01" order by birth_date asc;

select concat(upper(last_name),',',lower(first_name))as f from patientsdata order by lower(first_name) desc;

select province_id,sum(height)as a from patientsdata group by province_id having sum(height)>=7000;

select max(weight)-min(weight) as b from patientsdata where last_name="MARONI";

select day(admission_date) as c, count(*)as d from admissiondata group by day(admission_date) order by d desc;

select floor(weight/10)*10 as e,count(*)as f from patientsdata group by e order by e desc;

select patient_id,weight,height,case when weight/power(height/100,2)>=30 then 1 else 0 end as isObese from patientsdata;

select p.first_name,p.last_name,p.patient_id,b.specialty from patientsdata p join admissiondata a on p.patient_id=a.patient_id join doctordata b on a.attending_doctor_id=b.doctor_id where a.diagnosis="Epilepsy" and b.first_name="Lisa";


			
			





