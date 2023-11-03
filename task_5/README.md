# Cloud SQL instance

## Cloud SQL instance with public IP has been created on GCP.
## As network, my IP has been added.
## As a database Engine, PostgreSQL has been chosen. 
## To connect to the database, Dbeaver has been used.
## Simple table _students_ has been created within schema _dareit_ - [table results](https://github.com/IKRadwan/cloud_challenge/blob/main/task_5/students_table.txt)
## SQL query showing the average age of students (no NULL data)
`SELECT avg(age) as students_age_average
FROM dareit.students`
##### result:

students_age_average|


--------------------+

29.0000000000000000|
