### September 19, 2020
### Data Analytics Class
### Final Technical Project Report
### Team Members: Kristy Anderson, Cullen Andrews, Kathy Gural, Erin Hislope


**EXTRACT**
<br>
For this project, we chose the following two (2) .csv data sets:
<br>
-1000 Movies from 2006-2016 - https://www.kaggle.com/PromptCloudHQ/imdb-data which is a list of movies and their title, actors, year, director, etc.
<br>
-Movies and their Streaming Services - https://www.kaggle.com/ruchi798/movies-on-netflix-prime-video-hulu-and-disney which is a list of movies and the streaming services on which they can be found.
<br><br>
**TRANSFORM**
<br>
We will need to clean the data sets which will include: combine and drop columns, extract and create new rows and merge data. We will work in a Jupyter Notebook and create dataframes with Pandas.
<br><br>
imdb_df
<br>1.	Combined fields “Year” and “Title” into one field “year_title” in order to create a unique combination, in case of duplicate movie titles.
<br>2.	?Dropped unneeded columns (3)? Are we?
<br>
imdb_stack_df
<br>3.	Original dataframe had a list of actors separated by commas within one field. Generate new dataframe that created a new row for each actor in each movie (with pandas .stack function).
<br>4.	Dropped unnecessary column “level_1” that was created
<br>5.	Renamed “0” column to “Actor”
<br>
actors_df
<br>6.	Create dataframe of unique actors from imdb_stack_df
<br>
streaming_df
<br>7.	Combined fields “Year” and “Title” into one field “year_title” in order to create a unique combination of year and title, in case of duplicate movie titles and in order to match imdb_df
<br>
merge_df
<br>8.	Merge imdb_df and streaming_df using an inner join, on year_title field, in order to have all complete data in one dataframe, resulted in 231 movies that have streamlining services data
<br><br>
**LOAD**
<br>
<em>the final database, tables/collections and why this was chosen</em>
<br>
ERD model includes two tables: merge_df (Movies and Streaming info combined) and actors_df (a list of unique actor names).
Generating the ERD will draft the schema.sql.
<br>
When importing into PGAdmin, we will relate these two tables on the “actor” field. This will allow the user to search for their favorite actor and find which streaming service their movies can be viewed on. This might be useful if the user is trying to decide which streaming service to purchase and perhaps wanted to see which one has the most movies with actors you enjoy.
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
ERD.png = our Entity Relationship Diagram
<br>
schema.sql = schema to load into PGAdmin
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