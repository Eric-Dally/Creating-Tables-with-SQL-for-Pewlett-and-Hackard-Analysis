# Pewlett-Hackard-Analysis

## Overview of analysis:

### Purpose:
The purpose of this project was to identify employees that will be retireing so that Pewlett_Hackard can start planning to fill vacant positions. 

## Results:
### Retirement Title Table:

<img width="793" alt="retirement_titles" src="https://user-images.githubusercontent.com/82424250/121816637-5d4a7280-cc42-11eb-817c-6bf7156815ff.png">

### Unique Titles Table:

<img width="566" alt="unique_titles" src="https://user-images.githubusercontent.com/82424250/121816644-68050780-cc42-11eb-9621-036c401588ef.png">

### Retiring Titles Table:

<img width="248" alt="retiring_titles" src="https://user-images.githubusercontent.com/82424250/121816652-72270600-cc42-11eb-95a0-70c76c049996.png">

### Mentorship Eligibility Table:

<img width="831" alt="mentorship_eligibility" src="https://user-images.githubusercontent.com/82424250/121816660-810db880-cc42-11eb-8345-7ffd21c3a807.png">


## Summary:

Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

** How many roles will need to be filled as the "silver tsunami" begins to make an impact?

By summing up the retiring_titles counts, one can see that 90,398 total roles will need to be filled in the comming years.

<img width="403" alt="SUM_Of_Title_Counts" src="https://user-images.githubusercontent.com/82424250/121818250-9c30f600-cc4b-11eb-9ff2-d2f25faaf819.png">


** Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Considering that about 1,500 employees are listed as mentorship eligible and 90,398 jobs will open up, I would say no. A 1 to 9 mentorship ratio is difficult to cover. That being said, the eligible mentors is not entirely accurate. It only includes mentors whos birth date is 1965 and there are plenty of employess from 1965 through 1980 who have the capability to mentor. To show this, I ran another query creating a new mentorship eligible list to express this point. 

<img width="594" alt="Eligable Mentors from 1960-1965" src="https://user-images.githubusercontent.com/82424250/121818921-ddc3a000-cc4f-11eb-8f0a-e8b02aa967f2.png">

As you can see, including employees from 1960 through 1965 provides enough eligable mentors for new roles. In this case the new role to mentor ration is closer to 1 to 1 rather than 1 to 9.
