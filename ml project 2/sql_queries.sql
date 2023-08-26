USE covid_analysis;

SELECT * FROM cleaned_covid_dataset;

# Q.1 Find the number of corona patients who faced shortness of breath.

select count(Ind_Id) as No_Of_Patients
from cleaned_covid_dataset
where Corona = "positive" 
and Shortness_of_breath = "TRUE";

/*
Conclusion :- There are 1164 corona patients who faced shortness of breath.
*/

# Q.2 Find the number of negative corona patients who have fever and sore_throat. 

select count(Ind_Id) as NoOfPatients
from cleaned_covid_dataset 
where Corona = "negative" 
and Fever = "TRUE" 
and Sore_throat = "TRUE";

/*
Conclusion :- There are 142 corona negative patients who have fever and Sore throat.
*/

# Q.3 Group the data by month and rank the number of positive cases.

 SELECT Month,
        COUNT(Ind_ID) AS positivecases,
        RANK() over(ORDER BY COUNT(Ind_ID) DESC ) AS  rank_wise
        FROM cleaned_covid_dataset
 WHERE Corona = 'positive'
 GROUP BY Month;


/* 
Conclusion :- In April we found most number of corona positive cases 8881 
And in march 5848 corona positive cases.
*/

# Q.4 Find the female negative corona patients who faced cough and headache.

select COUNT(*) as female_patients from cleaned_covid_dataset
where Sex = "female" 
and Corona = "negative" 
and Cough_symptoms = "TRUE" 
and Headache = "TRUE";

/*
Conclusion :- 69 female negative corona patients who faced cough and headache.
*/

# Q.5 How many elderly corona patients have faced breathing problems?

select count(*) as aged_people
from cleaned_covid_dataset
where Age_60_above = "Yes"
and Shortness_of_breath = "TRUE"
and corona = "positive";

/* 
Conclusion :- 263 elderly corona patients have faced breathing problems.
*/

# Q.6 Which three symptoms were more common among COVID positive patients?

select 
	(select count(*) from cleaned_covid_dataset  where Cough_symptoms = "TRUE" and corona = "positive") as Cough_count,
    (select count(*) from cleaned_covid_dataset  where Fever = "TRUE" and corona = "positive") as Fever_count,
    (select count(*) from cleaned_covid_dataset   where Sore_throat = "TRUE" and corona = "positive") as Sore_count,
    (select count(*) from cleaned_covid_dataset    where Shortness_of_breath = "TRUE" and corona = "positive") as shortBreath_count,
    (select count(*) from cleaned_covid_dataset   where Headache = "TRUE" and corona = "positive") as headache_count,
    (select count(*) from cleaned_covid_dataset   where corona = "positive") as positive_count
from cleaned_covid_dataset
limit 1;

/* 
Conclusion :- Cough_Symptoms, Fever and Headache are the most common symptoms among Corona positive patients.
*/

# Q.7 Which symptom was less common among COVID negative people?

select 
	(select count(*) from cleaned_covid_dataset  where Cough_symptoms = "TRUE" and corona = "negative") as Cough_count,
    (select count(*) from cleaned_covid_dataset where Fever = "TRUE" and corona = "negative") as Fever_count,
    (select count(*) from cleaned_covid_dataset where Sore_throat = "TRUE" and corona = "negative") as Sore_count,
    (select count(*) from cleaned_covid_dataset where Shortness_of_breath = "TRUE" and corona = "negative") as shortBreath_count,
    (select count(*) from cleaned_covid_dataset where Headache = "TRUE" and corona = "negative") as headache_count,
    (select count(*) from cleaned_covid_dataset where corona = "negative") as negative_count
from cleaned_covid_dataset
limit 1;

/*
Conclusion :- Headache was less common among COVID negative people.
*/

# Q.8 What are the most common symptoms among COVID positive males whose known contact was abroad? 

select 
	(select count(*) from cleaned_covid_dataset where Cough_symptoms = "TRUE" and sex="male"and corona = "positive" and Known_contact like '%Abroad%') as Cough_count,
    (select count(*) from cleaned_covid_dataset where Fever = "TRUE" and sex="male"and corona = "positive" and Known_contact like '%Abroad%') as Fever_count,
    (select count(*) from cleaned_covid_dataset where Sore_throat = "TRUE" and sex="male"and corona = "positive" and Known_contact like '%Abroad%') as Sore_count,
    (select count(*) from cleaned_covid_dataset where Shortness_of_breath = "TRUE" and sex="male"and corona = "positive" and Known_contact like '%Abroad%') as shortBreath_count,
    (select count(*) from cleaned_covid_dataset where Headache = "TRUE" and sex="male"and corona = "positive" and Known_contact like '%Abroad%') as headache_count,
    (select count(*) from cleaned_covid_dataset where corona = "positive"  and sex="male"and Known_contact like '%Abroad%') as positive_Abroad
from cleaned_covid_dataset
limit 1;

/*
Conclusion :- Cough and Fever are the most common symptoms among COVID positive males whose known contact was abroad.
*/
