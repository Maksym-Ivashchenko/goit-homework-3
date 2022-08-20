SELECT avg(d.salary) AS avg_devs_salary, p.project_name
FROM developers AS d
INNER JOIN developers_projects AS dp ON d.id = dp.developer_id
INNER JOIN projects AS p ON p.id = dp.project_id
WHERE p.project_name = (SELECT p.project_name
    FROM projects AS p
    GROUP BY p.project_name
    ORDER BY min(p.cost) ASC
    LIMIT 1)
GROUP BY p.project_name;