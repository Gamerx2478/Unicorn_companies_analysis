CREATE OR REPLACE VIEW industry_growth AS
WITH yearly_unicorns AS (
    SELECT
        i.industry_name,
        c.unicorn_year,
        COUNT(*) AS unicorn_count
    FROM companies c
    JOIN industries i USING (industry_id)
    GROUP BY i.industry_name, c.unicorn_year
)
SELECT
    industry_name,
    unicorn_year,
    unicorn_count,
    unicorn_count
      - LAG(unicorn_count) OVER (
            PARTITION BY industry_name
            ORDER BY unicorn_year
        ) AS yoy_change
FROM yearly_unicorns;
