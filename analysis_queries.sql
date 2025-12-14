SELECT COUNT(*) AS total_candidates
FROM candidates;
SELECT source, COUNT(*) AS candidate_count
FROM candidates
GROUP BY source
ORDER BY candidate_count DESC;
SELECT COUNT(*) AS open_jobs
FROM jobs
WHERE close_date IS NULL;
SELECT stage, COUNT(*) AS candidates
FROM applications
GROUP BY stage
ORDER BY candidates DESC;
SELECT r.recruiter_name, COUNT(a.application_id) AS total_candidates
FROM recruiters r
JOIN applications a ON r.recruiter_id = a.recruiter_id
GROUP BY r.recruiter_name
ORDER BY total_candidates DESC;
SELECT r.recruiter_name, COUNT(*) AS joinings
FROM recruiters r
JOIN applications a ON r.recruiter_id = a.recruiter_id
JOIN offers o ON a.application_id = o.application_id
WHERE o.offer_status = 'Joined'
GROUP BY r.recruiter_name
ORDER BY joinings DESC;
SELECT 
AVG(DATEDIFF(o.joining_date, c.application_date)) AS avg_time_to_hire_days
FROM offers o
JOIN applications a ON o.application_id = a.application_id
JOIN candidates c ON a.candidate_id = c.candidate_id
WHERE o.offer_status = 'Joined';
SELECT 
COUNT(CASE WHEN offer_status = 'Joined' THEN 1 END) * 100.0 
/ COUNT(*) AS offer_to_join_percentage
FROM offers;
SELECT j.job_title, COUNT(o.offer_id) AS successful_hires
FROM jobs j
JOIN applications a ON j.job_id = a.job_id
JOIN offers o ON a.application_id = o.application_id
WHERE o.offer_status = 'Joined'
GROUP BY j.job_title;
SELECT primary_skill, COUNT(*) AS demand
FROM candidates
GROUP BY primary_skill
ORDER BY demand DESC;
