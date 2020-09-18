September 19, 2020
Data Analytics Class
Final Technical Project Report
Team Members: Kristy Anderson, Cullen Andrews, Kathy Gural, Erin Hislope


EXTRACT
For this project, we chose the following two (2) .csv data sets:
>	1000 Movies from 2006-2016 - https://www.kaggle.com/PromptCloudHQ/imdb-data which is a list of movies and their title, actors, year, director, etc.
>	Movies and their Streaming Services - https://www.kaggle.com/ruchi798/movies-on-netflix-prime-video-hulu-and-disney which is a list of movies and the streaming services on which they can be found.

TRANSFORM
what data cleaning or transformation was required
We will need to clean the data sets which will include: combine and drop columns, extract and create new rows and merge data. We will work in a Jupyter Notebook and create dataframes with Pandas.

imdb_df
1.	Combined fields “Year” and “Title” into one field “year_title” in order to create a unique combination, in case of duplicate movie titles.
2.	?Dropped unneeded columns (3)? Are we?
imdb_stack_df
3.	Original dataframe had a list of actors separated by commas within one field. Generate new dataframe that created a new row for each actor in each movie (with pandas .stack function).
4.	Dropped unnecessary column “level_1” that was created
5.	Renamed “0” column to “Actor”
actors_df
6.	Create dataframe of unique actors from imdb_stack_df
streaming_df
7.	Combined fields “Year” and “Title” into one field “year_title” in order to create a unique combination of year and title, in case of duplicate movie titles and in order to match imdb_df
merge_df
8.	Merge imdb_df and streaming_df using an inner join, on year_title field, in order to have all complete data in one dataframe, resulted in 231 movies that have streamlining services data

LOAD
the final database, tables/collections and why this was chosen
ERD model includes two tables: merge_df (Movies and Streaming info combined) and actors_df (a list of unique actor names).
Generating the ERD will draft the schema.sql.

When importing into PGAdmin, we will relate these two tables on the “actor” field. This will allow the user to search for their favorite actor and find which streaming service their movies can be viewed on. This might be useful if the user is trying to decide which streaming service to purchase and perhaps wanted to see which one has the most movies with actors you enjoy.

STEPS REQUIRED TO REPRODUCE OUR PROCESS:

In our GitHub repository https://github.com/cullen-andrews/etl-project, please find:
File/Folder Name	What Is It
cullen.ipynb	our Jupyter Notebook ETL code
Resources folder	two .csv data files
ERD.png	our Entity Relationship Diagram
schema.sql	schema to load into PGAdmin
queries.sql	sample queries on how to use the data
	
	
	


To view/use our data:
1.	select cullen.ipynb to open the Jupyter Notebook file to view our beautiful code
2.	download and install PGAdmin with this link https://www.pgadmin.org/download/
3.	once in PGAdmin, select Servers then right click on Databases and Create > Database
4.	x
5.	x
6.	x
7.	x
8.	x
9.	x
