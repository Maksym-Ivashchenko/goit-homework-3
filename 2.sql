SELECT sum(d.salary), p.project_name
FROM developers AS d
INNER JOIN developers_projects AS dp ON d.id = dp.developer_id
INNER JOIN projects AS p ON dp.project_id = p.id
GROUP BY p.project_name
ORDER BY sum(d.salary) DESC 
LIMIT 1;
