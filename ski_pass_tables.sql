--create table to display data from the current ski season
CREATE TABLE new_currentseason(
Location VARCHAR(50),
Resort VARCHAR(50),
Pass VARCHAR(50),
Month VARCHAR(50),
"Average Snowfall" NUMERIC,
"Snowfall Days" NUMERIC,
"Average Base Depth" NUMERIC,
"Average Summit Depth" NUMERIC,
"Max Base Depth" NUMERIC,
"Biggest Snowfall" NUMERIC
);

--create data to display data from the past ski seasons
CREATE TABLE new_annualsnow(
Location VARCHAR(50),
Resort VARCHAR(50),
Pass VARCHAR(50),
Year INT,
"Total Snowfall" NUMERIC,
"Snowfall Days" NUMERIC,
"Average Base Depth" NUMERIC,
"Average Summit Depth" NUMERIC,
"Max Base Depth" NUMERIC,
"Biggest Snowfall" NUMERIC
);

--create table to display data about the ski resorts
CREATE TABLE new_skiresorts(
Location VARCHAR(50),
Resort VARCHAR(50),
Pass VARCHAR(50),
"Limited or unlimited" VARCHAR(50),
"Total Lifts" NUMERIC,
"Summit height" NUMERIC,
"Vertical Drop" NUMERIC,
"Base Elevation" NUMERIC,
"Longest Run" NUMERIC,
"Skiable Terrain" NUMERIC,
"Projected Days Open" NUMERIC,
"Days Open Last Year" NUMERIC,
"Years Open" NUMERIC,
"Average Snowfall" NUMERIC,
"Beginners Runs" NUMERIC,
"Intermediate Runs" NUMERIC,
"Advanced Runs" NUMERIC,
"Expert Runs" NUMERIC,
"Night Skiing" NUMERIC
);

--psql command to copy current ski season data to postgres
\COPY "new_currentseason" FROM 'C:\Users\ehane\OneDrive - UMGC\Documents\new_currentseason.csv' DELIMITER ',' CSV HEADER;

--psql command to copy past season data to postgres
\COPY "new_annualsnow" FROM 'C:\Users\ehane\OneDrive - UMGC\Documents\new_annualsnow.csv' DELIMITER ',' CSV HEADER;

--psql command to copy ski resort data to postgres
\COPY "new_skiresorts” FROM 'C:\Users\ehane\OneDrive - UMGC\Documents\new_skiresorts.csv' DELIMITER ',' CSV HEADER;


