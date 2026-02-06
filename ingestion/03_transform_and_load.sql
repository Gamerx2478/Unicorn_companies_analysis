-- Insert industries
INSERT INTO industries (industry_name)
SELECT DISTINCT industry
FROM raw_unicorns
WHERE industry IS NOT NULL;

-- Insert countries
INSERT INTO countries (country_name)
SELECT DISTINCT country
FROM raw_unicorns
WHERE country IS NOT NULL;

INSERT INTO companies (
    company_name,
    founded_year,
    unicorn_year,
    valuation_usd_bn,
    industry_id,
    country_id
)
SELECT
    r.company,
    r.founded_year,
    r.unicorn_year,
    CAST(REPLACE(REPLACE(r.valuation, '$', ''), ',', '') AS NUMERIC),
    i.industry_id,
    c.country_id
FROM raw_unicorns r
JOIN industries i
    ON r.industry = i.industry_name
JOIN countries c
    ON r.country = c.country_name;
