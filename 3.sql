SELECT sum(d.salary), s.branch
FROM developers AS d
INNER JOIN developers_skills AS ds ON d.id = ds.developer_id
INNER JOIN skills AS s ON ds.skill_id = s.id
WHERE s.branch = 'Java' GROUP BY s.branch;