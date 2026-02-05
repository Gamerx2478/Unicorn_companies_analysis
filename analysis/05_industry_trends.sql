WITH yearly_unicorns AS (
    SELECT
        i.industry_name,
        c.unicorn_year,
        COUNT(*) AS unicorn_count
    FROM companies c
    JOIN industries i USING (industry_id)
    GROUP BY i.industry_name, c.unicorn_year
),
industry_trends AS (
    SELECT
        industry_name,
        unicorn_year,
        unicorn_count,
        unicorn_count
          - LAG(unicorn_count) OVER (
                PARTITION BY industry_name
                ORDER BY unicorn_year
            ) AS yoy_change
    FROM yearly_unicorns
)
SELECT *
FROM industry_trends
ORDER BY industry_name, unicorn_year;
