SELECT Project.project_id,
ROUND(AVG(experience_years ),2) AS average_years
from Employee
left join Project
on Project.employee_id = Employee.employee_id
where project_id >=1
group by project_id
ORDER BY experience_years;