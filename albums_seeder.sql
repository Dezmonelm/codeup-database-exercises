USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums(artists, name, release_date, genre, sales)
VALUES ('Michael Jackson', 'Thriller', 1982, 'pop, post-disco, funk, rock', 48.9),
       ('Olivia Newton-John', 'Grease: The Original Soundtrack from the Motion Picture', 1978, 'Rock and roll', 14.4),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 'Hard rock, heavy metal, folk rock', 29.0),
       ('Michael Jackson', 'Bad', 1987, 'Pop, rhythm and blues, funk and rock', 20.7),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 'Alternative rock', 24.3),
       ('Michael Jackson', 'Dangerous', 1991, 'New jack swing, R&B and pop', 17.0),
       ('Celine Dion', 'Falling into You', 1996, 'Pop, soft rock', 21.1),
       ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 'Rock', 18.2),
       ('Bill Medley', 'Dirty Dancing', 1987, 'Pop, rock, R&B', 17.9),
       ('Adele', '21', 2011, 'Pop, soul', 26.4),
       ('Celine  Dion', 'Lets Talk About Love', 1997, 'Pop, soft rock', 19.3),
       ('Metallica', 'Metallica', 1991, 'Metallica', 25.2),
       ('The Beatles', '1', 2000, 'Rock', 23.5),
       ('The Beatles', 'Abbey Road', 1969, 'Rock', 14.4),
       ('ABBA', 'Gold: Greatest Hits', 1992, 'Pop, disco', 23.0),
       ('Bruce Springsteeen', 'Born in the USA', 1984, 'Rock', 19.6),
       ('Madonna', 'The Immaculate Collection', 1990, 'Pop, dance', 19.5),
       ('Pink Floyd', 'The Wall', 1979, 'Progressive rock', 18.7),
       ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 'Soundtrack', 18.1),
       ('Dire Straits', 'Brothers in Arms', 1985, 'Rock', 17.7),
       ('Nirvana', 'Nevermind', 1991, 'Grunge, alternative rock', 16.7),
       ('Santana', 'Supernatural', 1999, 'Latin Rock', 20.5),
       ('Guns N Roses', 'Appetite for Destruction', 1987, 'Heavy metal, hard rock', 21.9),
       ('Elton John', 'Goodbye Yellow Brick Road', 1973, 'rock, pop rock, glam rock', 8.5);