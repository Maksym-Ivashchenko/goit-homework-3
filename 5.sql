SELECT p.project_name, min(p.cost)
FROM projects AS p
GROUP BY p.project_name
ORDER BY min(p.cost) ASC 
LIMIT 1;