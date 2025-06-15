--Job Satisfaction vs. Attrition and Department Attrition Distribution
(a)Job Satisfaction vs. Attrition
SELECT 
   Attrition,
   JobSatisfaction,
FROM 
   EmployeeData
GROUP BY 
   Attrition, JobSatisfaction
ORDER BY 
   Attrition, JobSatisfaction;
   
(b)Attrition by Department
SELECT 
   Department,
   Attrition,
   COUNT(*) AS EmployeeCount
FROM 
   EmployeeData
GROUP BY 
   Department, Attrition
ORDER BY 
   Department, Attrition;
   
--Monthly Income by Department and Attrition
SELECT 
   Department,
   Attrition,
   AVG(MonthlyIncome) AS AvgMonthlyIncome,
   COUNT(*) AS Employees
FROM 
   EmployeeData
GROUP BY 
   Department, Attrition
ORDER BY 
   Department, Attrition;
   
-- Job Satisfaction by Manager and Attrition
SELECT 
   ManagerName,
   Attrition,
   AVG(JobSatisfaction) AS AvgJobSatisfaction,
   COUNT(*) AS EmployeeCount
FROM 
   EmployeeData
GROUP BY 
   ManagerName, Attrition
ORDER BY 
   ManagerName, Attrition;
