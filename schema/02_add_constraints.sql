ALTER TABLE companies
ADD CONSTRAINT chk_years_valid
CHECK (unicorn_year >= founded_year);

ALTER TABLE companies
ADD CONSTRAINT chk_valuation_positive
CHECK (valuation_usd_bn > 0);
