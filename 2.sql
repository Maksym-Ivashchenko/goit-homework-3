SELECT sum(d.salary), p.project_name
from developers as d
inner join developers_projects as dp on d.id = dp.developer_id
inner join projects as p on dp.project_id = p.id
group by p.project_name
order by sum(d.salary) desc 
limit 1;