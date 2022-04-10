# Overview

This repository focuses on building a PostgreSQL database given a number of Excel files containing employee data for the company Pewlett Hackard. From this newly migrated database of past and present employee information, we have been tasked with determining how many of the Company's employees are soon to be eligible for retirement to prepare for their offboarding and find eligible members for a novel mentorship program between incoming and outgoing employees. From the data provided, we have compiled two lists of upcoming retirees and mentorship hopefuls as the included unique_titles.csv and mentorship_eligibility.csv. 

# Results

Key findings:

- 24% of Pewlett Hackard's employees are approaching retirement

	- ![Total employees and retiring employees]()
	- A large percentage of PH's workforce is coming up on retirement age according to PH's retirement threshold of employees born between 1961 and 1965. Determining which positions will need to be replaced and which positions could be condensed or retired in the coming years is of the utmost importance. 

- 39% of retiring employees are Senior Engineers or Senior Staff
	
	-![Retiring positions]()
	- A bulk of employees leaving the company will be leaving as Senior Staff or Senior Engineers. These positions will require the largest number of incoming replacements, and therefore should be a priority when designing onboarding processes. Mentors in either of these positions would be in high demand. 

- The mentorship eligibility pool should be widened to include younger Senior Engineers or older Engineers. 

	- ![Mentorship Titles]()
	- The current pool of eligible mentors may not meet the demand to replace Senior Engineers. To ensure the number of mentors is appropriate for the number of apprentices, some less experienced Senior Engineers or more tenured Engineers should be considered when building a mentorship program. 

- 63% of Retirees will come from the Development, Production, and Sales departments

	- ![Retirees per Department]()
	- After filtering our data for retirees per department, we see that Development, Production, and Sales will lose the most employees. These departments will require the most consolidation and mentors to accomodate incoming replacements. Thankfully, these departments also have the widest pool of potential mentors to teach incoming hires. 
	- ![Mentors per Department]()

# Analysis 

As was originally hypothesized by management, Pewlett Hackard faces an upcoming 'Silver Tsunami,' or bolus of employee retirements from workers born during the 'Baby Boom' period of 1945 - 1965. With 24% of their workforce approaching retirement age in the next four years, onboarding staff should be a priority of the company's short term agenda. Of the employees coming up on retirement, a significant percentage will be Senior Engineers and Senior Staff from the Development, Production, and Sales departments. If a mentorship program is put in place - as explored by management - these titles and departments should be the highest priority. The current pool of eligible mentors does limit the availability of mentors; the Development department with a 100% mentorship rate among those eligible for example would have one mentor per 46 incoming employees. Expansion of the eligibility pool would ensure appropriate time and attention can be committed by each mentor to their mentee. This is especially important when replacing Senior Engineers, as many are due for retirement with a comparatively small pool of eligible mentors. Internal promotion of Engineers to Senior Engineers could bridge this gap. 