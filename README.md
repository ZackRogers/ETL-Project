# ETL-Project Report

**E**xtract: your original data sources and how the data was formatted (CSV, JSON, pgAdmin 4, etc).

Data Sources:
Kaggle - COVID-19 in USA, .csv file
Data.World - Covid19India, .json file


**T**ransform: what data cleaning or transformation was required.

The Covid-19 in USA dataset has 25 columns of data that needed to be trimmed down to only include columns that relate to the Coivd India dataset. There purpose of the ETL project is pull COVID data for two different countries for comparison. Our clean dataframe included the date, positive, recovered, and death fields which the India dataset had in common. Additionally, we added the 'id' column to use as a primary key in the postgres database. Finally, we dropped all rows of data with null values.

For the India dataset, we dropped all rows of data from datesthat were not presenet in the USA dataset. The USA dataset has daily COVID data from 3/26/2020 - 12/6/2020 so we made sure filter the india data to only include these dates. We also dropped the 'daily' data columns so that we can keep common data columns for comparison. The final dataframe has the totalconfirmed, totalrecovered, and totaldeceased columns. We also added an'id' column to serve as the primary key in our database. 

**L**oad: the final database, tables/collections, and why this was chosen.


We chose Postgresql as our production database for ease of use and team comfortability with the platform. There is no direct relationship between our data so a relational database is technically not required. The final tables included in our database are named 'covid_usa' and 'coid_india'. The final cleaned data was loaded into postgresql using sqlalchemy in jupyter notebook. 

Table Names: 
'covid_usa' and 'coid_india'

Columns and Data Types: 
covid_usa
ID, integer, primary key
date, string
positive, integer
recovered, integer
death, integer

covid_india
ID, integer, primary key
date, string
totalconfirmed, integer
totalrecovered, integer
totaldeceased, integer


