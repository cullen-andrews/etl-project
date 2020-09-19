### September 19, 2020
### Data Analytics Class
### ETL Project Report
### Team Members: Kristy Anderson, Cullen Andrews, Kathy Gural, Erin Hislope
<br>
<br>
### OVERVIEW
<br>
The purpose of the this project was to utilize our skills to extract data, transform it and load into a functioning database.
<br>
### FILES and FOLDERS
<br><br>
pointyspiderdreams.ipynb: our Jupyter Notebook ETL code
<br>
Resources folder: two .csv data files - imdb-movie-data.csv and MoviesOnStreamingPlatforms_updated.csv
<br>
DatabaseDiagram.jpeg: our Entity Relationship Diagram
<br>
schema.sql: generated from our ERD for reference
<br>
queries.sql: sample queries
<br>
<br>
### EXTRACT
<br>
We chose the following two (2) .csv data sets:
<br>
<ul>
    <li>1000 Movies from 2006-2016 - https://www.kaggle.com/PromptCloudHQ/imdb-data which is a list of movies and their title, actors, year, director, etc.</li>
    <li>Movies and their Streaming Services - https://www.kaggle.com/ruchi798/movies-on-netflix-prime-video-hulu-and-disney which is a list of movies and the streaming services on which they can be found.</li>
</ul>
<br>
<br>
### TRANSFORM
<br>
We cleaned the data sets which included: combining, dropping and reordering columns, extracting and creating new rows and merging data. We worked in a Jupyter Notebook and created dataframes with Pandas.
<br>
<br>
We extracted the IMDB data into <em>imdb_df</em> and combined fields “Year,” changing "Year" from an integer to a string, and “Title” into one string field “year_title” in order to create a unique column in the dataframe, in case of duplicate movie titles.
<br>
<br>
We then created <em>imdb_stack_df</em> in order to separate a compiled list of actors. This new dataframe created a unique row for each actor in each movie (using Pandas '.stack' function). We then dropped an unnecessary column “level_1” that was created from the '.stack' function and then renamed “0” column to “Actor.” This table is used as our junction table when relating the tables between movie and actors in Postgres.
<br>
<br>
Next, we created <em>actors_df</em> which is a dataframe of unique actors from the <em>imdb_stack_df</em> and then sorted alphabetically on actor field.
<br>
<br>
Then, we read in the Streaming data and combined fields “Year,” changing "Year" from an integer to a string, and “Title” into one string field “year_title” in order to create a unique combination of year and title, in case of duplicate movie titles and also in order to match to the imdb_df, which we merge on next.
<br>
<br>
Because the relationship between the <em>imdb_df</em> and <em>streaming_df</em> was one-to-one, we decided to merge them together in order to have one dataframe of complete data instead of two with several columns of repeating data. We used an inner join on <em>year_title* field.  This resulted in 231 movies.
<br>
<br>
Then, we created a new dataframe <em>merge_clean_df</em> where we renamed two columns, dropped 11 unneeded columns and reordered columns in order for our primary key column to be first. Then we renamed it to <em>movies_df</em>.
<br>
<br>
## LOAD
<br>
    We generated an Entity Relationship Diagram (ERD) model including three tables: movies_df (Movies and Streaming info combined), actors_df (a list of unique actor names) and movies_actors_df which is a join table.
The ERD gave us a draft of the schema to use as reference.
<br>
<br>
**STEPS NEEDED**
<br>To use our code:
<br>1.	if needed, download and install PGAdmin: https://www.pgadmin.org/download/
<br>2.	select pointyspiderdreams.ipynb to open the Jupyter Notebook file to view our code
<br>3.  in the code, under **LOAD**, be sure to update with your postgres username and password and your current port
<br>4.  open PGAdmin and leave running in the background
<br>5.	run all code
<br>6.	you will be able to view the query results in the Jupyter Notebook file
