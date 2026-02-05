-- 1. Row counts (basic integrity)
SELECT COUNT(*) AS company_count FROM companies;
SELECT COUNT(*) AS raw_count FROM raw_unicorns;

-- 2. Time-to-unicorn must be non-negative
SELECT *
FROM companies
WHERE unicorn_year < founded_year;

-- 3. Unrealistic founding years
SELECT *
FROM companies
WHERE founded_year < 1950 OR founded_year > EXTRACT(YEAR FROM CURRENT_DATE);

-- 4. Unrealistic unicorn years
SELECT *
FROM companies
WHERE unicorn_year < 2000 OR unicorn_year > EXTRACT(YEAR FROM CURRENT_DATE);

-- 5. Missing foreign keys (should be zero rows)
SELECT *
FROM companies
WHERE industry_id IS NULL OR country_id IS NULL;

-- 6. Valuation sanity
SELECT
    MIN(valuation_usd_bn) AS min_val,
    MAX(valuation_usd_bn) AS max_val
FROM companies;
