-- create olympics database 
DROP DATABASE IF EXISTS olympics;
CREATE DATABASE IF NOT EXISTS olympics; 
USE olympics;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

-- create tables 
DROP TABLE IF EXISTS athletes,
                     countries,
                     country_stats,
                     summer_games,
					 winter_games;
                     
-- define the field types for each table 
CREATE TABLE athletes (
    id      	INT		        NOT NULL,
    name    	VARCHAR(50)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,  
    age      	INT		        NOT NULL,
    height      INT		        NOT NULL,
    weigth      INT		        NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE countries (
    id      	INT          	NOT NULL,
    country     VARCHAR(40)     NOT NULL,
    region      VARCHAR(100)    NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE country_stats (
   year   		 DATE            NOT NULL,
   country_id    INT             NOT NULL,
   gdp    		 INT             NOT NULL,
   population    INT             NOT NULL,
   nobel_prize_winners   INT     NOT NULL,
   PRIMARY KEY (country_id)
); 

CREATE TABLE summer_games (
    sport       VARCHAR(40)         NOT NULL,
    event       VARCHAR(100)        NOT NULL,
    year  		DATE            	NOT NULL,
    athlete_id  INT            		NOT NULL,
    country_id  INT					NOT NULL, 
    medal		VARCHAR(40)         NOT NULL,
    PRIMARY KEY (country_id)
);

CREATE TABLE winter_games (
    sport       VARCHAR(40)         NOT NULL,
    event       VARCHAR(100)        NOT NULL,
    year  		DATE            	NOT NULL,
    athlete_id  INT            		NOT NULL,
    country_id  INT					NOT NULL, 
    medal		VARCHAR(40)         NOT NULL,
    PRIMARY KEY (country_id)
)
;