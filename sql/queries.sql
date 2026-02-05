-- Q1: Unicorns created each year across industries
SELECT unicorn_year, industry, COUNT(*) AS unicorn_count
FROM unicorn_startups
GROUP BY unicorn_year, industry
ORDER BY unicorn_year, unicorn_count DESC;

-- Q2: Top 3 industries in the past decade
SELECT industry, COUNT(*) AS total_unicorns
FROM unicorn_startups
WHERE unicorn_year >= 2014
GROUP BY industry
ORDER BY total_unicorns DESC
LIMIT 3;

-- Q3: Average valuation by industry and year
SELECT industry, unicorn_year,
       ROUND(AVG(valuation_usd), 2) AS avg_valuation_usd
FROM unicorn_startups
GROUP BY industry, unicorn_year
ORDER BY unicorn_year;

-- Q4: Distribution by country and industry
SELECT country, industry, COUNT(*) AS unicorn_count
FROM unicorn_startups
GROUP BY country, industry
ORDER BY country;

-- Q5: Year with maximum unicorn creation
SELECT unicorn_year, COUNT(*) AS total_unicorns
FROM unicorn_startups
GROUP BY unicorn_year
ORDER BY total_unicorns DESC
LIMIT 1;
