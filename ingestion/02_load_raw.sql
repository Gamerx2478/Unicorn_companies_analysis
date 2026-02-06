DROP TABLE IF EXISTS raw_unicorns;

CREATE TABLE raw_unicorns (
    company TEXT,
    valuation TEXT,
    founded_year INT,
    industry TEXT,
    country TEXT,
    unicorn_year INT
);
COPY raw_unicorns
FROM '/Users/adhithya/Library/CloudStorage/OneDrive-Personal/1. Projects/Unicorn_companies_analysis/Unicorn_companies_analysis/data/Unicorn_Startups.csv'
DELIMITER ','
CSV HEADER;