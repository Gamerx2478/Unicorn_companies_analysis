CREATE OR REPLACE VIEW industry_speed AS
SELECT
    i.industry_name,
    ROUND(AVG(c.unicorn_year - c.founded_year), 2) AS avg_years_to_unicorn,
    PERCENTILE_CONT(0.5)
        WITHIN GROUP (ORDER BY (c.unicorn_year - c.founded_year)) AS median_years_to_unicorn,
    COUNT(*) AS unicorn_count
FROM companies c
JOIN industries i USING (industry_id)
GROUP BY i.industry_name
HAVING COUNT(*) >= 3;
