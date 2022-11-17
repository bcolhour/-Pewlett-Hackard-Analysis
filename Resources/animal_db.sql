CREATE TABLE cities(
	city_id SERIAL PRIMARY KEY,
	city_name VARCHAR(30),
	city_state VARCHAR (30),
	city_pop INT
);

SELECT * FROM  cities;
INSERT INTO cities (city_name, city_state, city_pop)
	VALUES 
	('Alameda', 'CA', '81584'),
	('St Joseph', 'MO', '89658'),
	('Fayetteville', 'AR', '75231'),
	('Tucson', 'AZ', '101569');

SELECT * FROM  cities WHERE city_pop <100000
AND city_pop >80000;

