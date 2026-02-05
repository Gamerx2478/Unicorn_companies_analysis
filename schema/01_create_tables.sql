CREATE TABLE industries (
    industry_id SERIAL PRIMARY KEY,
    industry_name TEXT UNIQUE NOT NULL
);

CREATE TABLE countries (
    country_id SERIAL PRIMARY KEY,
    country_name TEXT UNIQUE NOT NULL
);

CREATE TABLE companies (
    company_id SERIAL PRIMARY KEY,
    company_name TEXT NOT NULL,
    founded_year INT,
    unicorn_year INT,
    valuation_usd_bn NUMERIC,
    industry_id INT REFERENCES industries(industry_id),
    country_id INT REFERENCES countries(country_id)
);
