--Query 1: Top 5 job titles for entry-level (most openings)

SELECT
    job_title,
    COUNT(*) AS number_of_jobs,
    ROUND(AVG(salary_in_usd), 0) AS avg_salary_usd
FROM salaries_cleaned
WHERE experience_level = "EN"
GROUP BY job_title
ORDER BY number_of_jobs DESC
LIMIT 5;

--Query 2: Top 5 countries with most entry-level data jobs

SELECT 
    company_location AS country,
    COUNT(*) AS job_count,
    ROUND(AVG(salary_in_usd), 0) AS avg_salary_usd
FROM salaries_cleaned
WHERE experience_level = "EN"
GROUP BY company_location
ORDER BY job_count DESC
LIMIT 5;

--Query 3: Remote vs On-site salary comparison for entry-level

SELECT
    remote_ratio,
    CASE
        WHEN remote_ratio = 100 THEN 'Fully Remote'
        WHEN remote_ratio = 50 THEN 'Hybrid'
        ELSE 'On-site'
    END AS work_style,
    COUNT(*) AS job_count,
    ROUND(AVG(salary_in_usd), 0) AS avg_salary_usd
FROM salaries_cleaned
WHERE experience_level = "EN"
GROUP BY remote_ratio
ORDER BY avg_salary_usd DESC;
