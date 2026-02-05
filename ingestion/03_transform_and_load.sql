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
