use Abundance6
go 
select * from [HR-Employee-Attrition]


1) total income paid in a month
select sum(monthly_income) as Total_monthly_salary from [HR-Employee-Attrition]

2) Employee with highest salary
select gender, Marital_status, Job_role, Job_level, department, education_field, monthly_income from [HR-Employee-Attrition]
where Monthly_income = (select max(monthly_income) from [HR-Employee-Attrition])

3) Employee that earns the lowest salary
select gender, Marital_status, Job_role, Job_level, department, education_field, monthly_income from [HR-Employee-Attrition]
where monthly_income = (select min( monthly_income) from [HR-Employee-Attrition]) 

4) Lowest salary from each department
select department, MIN( monthly_income) as monthly_income from [HR-Employee-Attrition]
group by Department
order by min(monthly_income)

5) highest salary from each department
select department, Max( monthly_income) as monthly_income from [HR-Employee-Attrition]
group by Department
order by min(monthly_income)

6) employees that have left their jobs before (voluntarily)
select gender, age, education_field, department,attrition from [HR-Employee-Attrition]
where Attrition = 1

7) employee that has worked in several companies than the others
select gender, marital_status, Job_role, Number_of_companies_worked from [HR-Employee-Attrition]
where Number_of_companies_worked = (select max(Number_of_companies_worked) from [HR-Employee-Attrition])

8) employees that has never worked in a company
select gender, marital_status, Job_role, Number_of_companies_worked from [HR-Employee-Attrition]
where Number_of_companies_worked = (select min(Number_of_companies_worked) from [HR-Employee-Attrition])

9) employees that has worked in only one company
select gender, marital_status, Job_role, Number_of_companies_worked from [HR-Employee-Attrition]
where Number_of_companies_worked = 1

10) The youngest employee
select min(age) as age, gender from [HR-Employee-Attrition]
group by gender

11) the oldest employee
select max(age) as age, gender from [HR-Employee-Attrition]
group by gender

12) employees that rarely travel
select age, department, education_field, gender, business_travel from [HR-Employee-Attrition]
where Business_travel ='Travel Rarely'

13) Employee that has spent the highest number of years in a company
select age, gender, job_role, years_at_company from [HR-Employee-Attrition]
where years_at_company = (select max(years_at_company) from [HR-Employee-Attrition])
order by gender

14) employees that has spent atleast 10 years in their current role
select age, gender, Department, job_role, Years_in_current_role from [HR-Employee-Attrition]
where Years_in_current_role >= 10
order by Age

15) employees that has spent more years with current manager
select age, gender, department, job_role, years_with_current_manager from [HR-Employee-Attrition]
where Years_with_current_manager = (select max( years_with_current_manager) from [HR-Employee-Attrition])
order by age

16) employees that were promoted two years ago
select age, gender, department, job_role, Years_since_last_promotion from [HR-Employee-Attrition]
where Years_since_last_promotion = 2

17) employee with the highest performance rating
select gender, job_role, department, performance_rating from [HR-Employee-Attrition]
where Performance_rating = ( select max(performance_rating) from [HR-Employee-Attrition])


18) employees whose saleries have been increased by 20%
select gender, job_role, department, education_field, percent_salary_hike from [HR-Employee-Attrition]
where percent_salary_hike = 20





