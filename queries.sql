SELECT * FROM actors;

SELECT a.actor, m.title FROM actors AS a INNER JOIN movie_actors AS ma ON a.actor = ma.actor
INNER JOIN movie AS m ON ma.year_title = m.year_title
WHERE a.actor = 'Brad Pitt';

SELECT * FROM movie;

SELECT * FROM movie_actors;

SELECT title FROM movie 
WHERE disney_plus = 1;

