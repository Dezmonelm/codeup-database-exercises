SELECT * FROM albums;
SELECT * FROM albums WHERE release_date < 1980;
SELECT * FROM albums WHERE artists = 'Michael Jackson';

UPDATE albums SET sales = sales * 10;
SELECT * FROM albums;

UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT * FROM albums;

UPDATE albums SET artists = 'Peter Jackson' WHERE artists = 'Michael Jackson';
SELECT * FROM albums WHERE artists = 'Peter Jackson';

