
WITH skills_mentioned AS (
    SELECT 
        skill_id,
        COUNT(job_id) AS skills_count
    FROM
        skills_job_dim
    GROUP BY
        skill_id
    ORDER BY
        skills_count DESC
    )
   
SELECT 
    skills ,
    skills_mentioned.skills_count
FROM 
    skills_dim
LEFT JOIN skills_mentioned 
ON skills_mentioned.skill_id = skills_dim.skill_id

    
