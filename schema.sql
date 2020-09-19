-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS Movies
(
    year_title VARCHAR(110) NOT NULL,
    Title VARCHAR(100),
    Genre VARCHAR(255),
    Description VARCHAR(1000),
    Year INTEGER,
    "Runtime (Minutes)" INTEGER,
    Rating REAL(5),
    Votes INTEGER,
    "Revenue (Millions)" REAL(10),
    Metascore REAL(5),
    Age VARCHAR(5),
    "Rotton Tomatoes" VARCHAR(5),
    Netflix INTEGER,
    Hulu INTEGER,
    "Prime Video" INTEGER,
    Disney+ INTEGER,
    Country VARCHAR(55),
    Language VARCHAR(55),
    PRIMARY KEY(year_title)
);

CREATE TABLE IF NOT EXISTS Movie_actors
(
    year_title VARCHAR(110) NOT NULL,
    Actor VARCHAR(110) NOT NULL,
    PRIMARY KEY(year_title, Actor)
);

CREATE TABLE IF NOT EXISTS Actors_unique
(
    Actor VARCHAR(110) NOT NULL,
    PRIMARY KEY(Actor)
);


-- Create FKs
ALTER TABLE Movies
    ADD    FOREIGN KEY (year_title)
    REFERENCES Movie_actors(year_title)
    MATCH SIMPLE
;
    
ALTER TABLE Movie_actors
    ADD CONSTRAINT FK_Movie_actors_to_Movies
    FOREIGN KEY (year_title)
    REFERENCES Movies(year_title)
    MATCH SIMPLE
;
    
ALTER TABLE Actors_unique
    ADD    FOREIGN KEY (Actor)
    REFERENCES Movie_actors(Actor)
    MATCH SIMPLE
;
    
ALTER TABLE Movie_actors
    ADD CONSTRAINT FK_Movie_actors_to_Actors_unique
    FOREIGN KEY (Actor)
    REFERENCES Actors_unique(Actor)
    MATCH SIMPLE
;
    

-- Create Indexes

