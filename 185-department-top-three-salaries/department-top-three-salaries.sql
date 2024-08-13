SELECT 
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary
FROM 
    (SELECT 
        name,
        departmentId,
        salary,
        DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS salary_rank
    FROM 
        Employee) e
JOIN Department d ON d.id = e.departmentId
WHERE e.salary_rank <= 3
ORDER BY d.name, e.salary DESC, e.name;