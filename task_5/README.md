## Task 5: Create Cloud SQL

</br>

### Goals 🎯 </br> 
  :white_check_mark: To create Cloud SQL instance and configure the firewall for the database </br>
  :white_check_mark: To find out more about networking </br>
  
</br>

💪 **Task steps**

</br>

**Step 1** Download and install DBeaver - a tool used to connect to the database

</br>

**Step 2** Go to *SQL* section on GCP and *CREATE INSTANCE*

</br>

  -  *Choose PostgreSQL* for the dababase Engine
  -  *Instance ID* - dareit-pg (it needs to be unique within the GCP project)
  -  *Password* - it can be later changed from GCP console
  -  *Database version* - PostgreSQL 14 (version of the engine)
  -  *Configuration to start with* - Sandbox 

</br>

**Step 3** Choose *Connections* to customize the instance

</br>

  - Instance should have a Public IP </br>
  - *ADD NETWORK*:
    - *Network* - paste the ipv4 of your IP followed by /32
  -Save the instance and wait few minutes
  
</br>

**Step 4** Click on the instance ->  *General* (how to connect to the instance) and copy the Public IP Address

</br>

**Step 5** Open Dbeaver and test the connection

</br>

  - On the left hand side in the white space use right click and then choose *Create* -> *New Folder* -> DareIT
  - Right-click on the folder and choose Create Connection
  - Choose PostgreSQL
  - *Host* - the Public IP of the Cloud SQL instance
  - *Database* - the database name to which the connection will be established
  - *Port* - 5432 (the port that is used for connecting to Postgres database)
  - *Username* - postgres (the deafult name of the user created on the instance)
  - Password - the password provided for the admin user of the Cloud SQL instance

</br>

👉Connection established = *postgres* user (*Users* section) visible on dareit-pg instance on GCP

</br>

**Step 6** Create a schema in the database (DBeaver)

  - *Schemas* -> Create New Schema
  - *Schema name* - dareit
  - Right-click on the schema, go to SQL Editor, choose the New SQL script, paste the below SQL code in the editor and execute the script

  ```
CREATE TABLE students (
    id int,
    lastName varchar(255),
    firstName varchar(255),
    email varchar(255),
    city varchar(255)
);
```
    - the newly created Table visible in the Navigator once schema refreshed 
    - use SQL Generator to play with some simple scripts (table -> *Generate SQL*; INSERT INTO, UPDATE)

</br>

**Step 7** Add one more column to the students table called *age* with type int

</br>

**Step 8** Add 5 more rows to the table with some proper data about 5 more students

</br>

**Step 9** Prepare a query that will answer the question what is average age of the students in the class? 

```
SELECT avg(age) as students_age_average
FROM dareit.students
```

↪️ Result: 


students_age_average|


--------------------+

29.0000000000000000|

</br>

**Step 10** Extract to txt data from the students table

</br>

**Step 11** Create a new folder in cloud_challenge repo with name task_5 , commit the [txt file](https://github.com/IKRadwan/cloud_challenge/blob/main/task_5/students_table.txt) there and add a readme.md with the answer to question from **Step 9**

