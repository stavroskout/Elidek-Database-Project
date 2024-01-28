# Elidek-Database-Project
Database and frontend for Elidek, an organization that manages funds for researches.

To setup the database simply import it from the backup file or run the sql scripts in the following order:
1. schema_script
2. index
3. triggers
4. dummyinsertions

Before running the server, fill the .env.local file with the right credentials for your database. Then, run "npm install" to download all the required packages for the server and start the server with "npm start".

The ER Diagram of the database:
![image](https://github.com/stavroskout/Elidek-Database-Project/assets/101260626/27b8bb53-8bc4-4cc9-b8fe-276c958344fb)
