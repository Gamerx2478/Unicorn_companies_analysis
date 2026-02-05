CREATE OR REPLACE VIEW valuation_concentration AS
SELECT
    i.industry_name,
    COUNT(*) AS unicorn_count,
    ROUND(AVG(c.valuation_usd_bn), 2) AS avg_valuation,
    PERCENTILE_CONT(0.5)
        WITHIN GROUP (ORDER BY c.valuation_usd_bn) AS median_valuation,
    MAX(c.valuation_usd_bn) AS max_valuation
FROM companies c
JOIN industries i USING (industry_id)
GROUP BY i.industry_name;
