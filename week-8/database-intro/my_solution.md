SELECT * FROM states;
SELECT * FROM regions;
SELECT state_name, population FROM states;
SELECT state_name, population FROM states ORDER BY population DESC;
SELECT state_name FROM states WHERE region_id = 7;
SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
SELECT state_name FROM states WHERE population > 1000000 AND population < 1500000;
SELECT state_name, region_id FROM states ORDER BY region_id ASC;
SELECT region_name FROM regions WHERE instr(region_name, 'Central') > 0;
SELECT regions.region_name, states.state_name FROM states INNER JOIN regions ON states.region_id=regions.id ORDER BY states.region_id;

