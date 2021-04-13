# Pewlett-Hackard-Analysis
Module 7: Employee Database with SQL
## Overview
- We are helping Bobby with SQL and with cleaning and navigating through employee databases. We are now trying to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. We will also use this data to prepare Bobby’s manager for the “silver tsunami” as a lot of the employees are reaching retirement age.

## Results
![retirement_titles](https://user-images.githubusercontent.com/79118630/114598155-9163e000-9c5f-11eb-939f-b6d2f32f8476.png)

- First observation is that when helping this company with analyzing employee data, there were many duplicates within the data. As we can see here, employees like “Christian Koblik” and “Kyoichi Maliniak” have been analyzed marked down twice. In trying to analyze retirement data that involves finding their ending titles, both of these people started at the base level and were promoted to senior levels, which will corrupt the data.

![retiring_titles](https://user-images.githubusercontent.com/79118630/114598202-9fb1fc00-9c5f-11eb-8fce-52649a529008.png)

- We need to compile the data to make sure to only count their ending title, and as we can observe, there are more than three times retiring staff and engineers as compared to senior staff and senior engineer members. What this shows is that the chances of moving up in the company takes a lot of competition, that they are very selective who they promote, which can be good and bad. It encourages people to compete and be the best but can also discourage those from trying to succeed in the company because of the slim chances and just use this position as a place-holder or just a resume builder.
- Another thing to note is that there are only 2 managers retiring, which is a lot less than all the other positions that are retiring. This makes sense since a manager is essentially at the top but only 2 managers for all of these employees is very hard to control and manage. 
- Finally, when looking at those who qualify for the mentorship program, using an infinite `to_date` is helpful for filtering but not really helpful for observing, it just jumbles the table by adding unnecessary data.  

## Summary
- As we can see from the total amount of people retiring from each role, there is an overwhelming amount of people retiring, making it a true “silver tsunami”. If we add up all the employees, we can see there is at least 70,000 employees looking to retire. If we look at those who are eligible to be mentored, there are less than 2,000 rows, so there will be plenty of people to pick from to mentor those who need it. But there is an overwhelming amount of people retiring as compared to those who are eligible to for the mentorship program. This company will want to look into spacing out their hiring and/or hiring a variety of ages/experiences for future purposes so that a future ‘tsunami’ is avoided.
- Another query that we can run is to look at salaries of those retiring. As we can see at the table, staff members have the highest retiring amounts followed by the engineer roles, then the technique leaders and ending with manager. If manager is the highest position, then why do they have the lowest average salary. This does not make much sense and salary expectations and results should be further investigated.

![avg_salary](https://user-images.githubusercontent.com/79118630/114598232-aa6c9100-9c5f-11eb-9d57-5008929b88bc.png)

- Another group of queries that we can run is to see when the company hired the retiring employees so they can get a general gist on how many employees they hired during certain time periods and get a general idea of when employees tend to retire from these roles. The range of the hiring dates for those retiring go from January 1, 1985 to January 28, 2000 (1985-01-01 to 2000-01-28). Here we can look at the different queries and gauge how long employees will stay in their roles by grouping them together by five year chunks (the last one is slightly longer just cause employees were hired a month into January in 2000). After running, we can see that both of the managers that are retiring were hired sometime between 1985-1990. Also the first two query groups stay the same in terms of ascending order of employee count retirees, but the most recent observed group that was hired and retiring had some of their titles flipped around. These queries can be found in the Employee_Database_Challenge.sql file
