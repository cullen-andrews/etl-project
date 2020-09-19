### September 19, 2020
### Data Analytics Class
### Project Report
### Team Members: Kristy Anderson, Cullen Andrews, Kathy Gural, Erin Hislope
<br>
<br>
**EXTRACT**
<br>
For this project, we chose the following two (2) .csv data sets:
<br>
<ul>
    <li>1000 Movies from 2006-2016 - https://www.kaggle.com/PromptCloudHQ/imdb-data which is a list of movies and their title, actors, year, director, etc.</li>
    <li>Movies and their Streaming Services - https://www.kaggle.com/ruchi798/movies-on-netflix-prime-video-hulu-and-disney which is a list of movies and the streaming services on which they can be found.</li>
</ul>
<br>
<br>
**TRANSFORM**
<br>
We cleaned the data sets which included: combining, dropping and reordering columns, extracting and creating new rows and merging data. We worked in a Jupyter Notebook and created dataframes with Pandas.
<br>
<br>
imdb_df
<br>1.	Combined fields “Year” and “Title” into one field “year_title” in order to create a unique combination, in case of duplicate movie titles.
<br>
imdb_stack_df
<br>2.	Dataframe had one field that was a list of actors separated by commas. Generated new dataframe that created a new row for each actor in each movie (with Pandas .stack function).
<br>3.	Dropped unnecessary column “level_1” that was created
<br>4.	Renamed “0” column to “Actor”
<br>
actors_df
<br>5.	Created dataframe of unique actors from imdb_stack_df and sorted on actor field
<br>
streaming_df
<br>6.	Read in .csv
<br>7.  Combined fields “Year” and “Title” into one field “year_title” in order to create a unique combination of year and title, in case of duplicate movie titles and in order to match imdb_df
<br>
merge_df
<br>8.	Merge imdb_df and streaming_df using an inner join, on year_title field, in order to have all complete data in one dataframe, resulted in 231 movies that have streamlining services data
<br>
merge_clean_df
<br>9.  Renamed two columns, dropped 11 unneeded columns and reordered columns in orer for our primary key column to be first.
<br>10.  renamed to "movies_df"
<br>
<br>
**LOAD**
<br>
We generated an Entity Relationship Diagram model including three tables: movies_df (Movies and Streaming info combined), actors_df (a list of unique actor names) and movies_actors which is a join table.
The ERD gave us a draft of the schema to use as reference.
<br>

When running code to create the database, be sure to change to your postgres username and password and update with your current port.

When creating the database in PGAdmin these tables will be related on the “actor” and "year_title" fields. This will allow the user to search for their favorite actor and return ant movies they are in. The user can also search streaming services. This might be useful if the user is trying to decide which streaming service to purchase and perhaps wanted to see which one has the most movies with actors you enjoy.
<br><br>
**STEPS REQUIRED TO REPRODUCE OUR PROCESS:**
<br><br>
In our GitHub repository https://github.com/cullen-andrews/etl-project, please find:
<br>
**File/Folder Name = What Is It**
<br>
cullen.ipynb = our Jupyter Notebook ETL code
<br>
Resources folder = two .csv data files
<br>
DatabaseDiagram.png = our Entity Relationship Diagram
<br>
schema.sql = generated from our ERD for reference
<br>
queries.sql = sample queries on how to use the data
<br>
<br>
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