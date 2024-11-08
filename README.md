# HR_Data_Attrition

## Table of Contents
- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Tools Used](#tools-used)
- [Data Columns](#data-columns)
- [Data Cleaning and Preparation](#data-cleaning-and-preparation)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Data Analysis](#data-analysis)
- [Data Visualization](#data-visualization)
- [Key Insights](#key-insights)
- [Recommendations](#recommendations)

---

## Project Overview
In this project, I explored HR attrition data to understand what factors lead to employee turnover, assess job satisfaction, and spot trends in workforce demographics. My goal is to provide HR teams with insights that can help them create a more engaging and supportive work environment.

## Data Sources
The data includes a range of HR metrics, covering attrition status, job satisfaction, employee demographics, and job roles.

## Tools Used
- **Excel**: For data cleaning, preparation, and basic analysis.
- **Power BI**: To create interactive visualizations and dashboards for in-depth exploration.

## Data Columns
- **Attrition**: Whether an employee has left the company.
- **Business Travel**: Frequency of employee business travel.
- **CF_age_band**: Age categorized into specific groups for easy analysis.
- **CF_Attrition Label**: Label indicating attrition status (e.g., "Active" or "Exited").
- **Department**: Department where the employee works.
- **Educational Field**: Field of study for the employee.
- **Employee Number**: Unique ID for each employee.
- **Gender**: Employee’s gender.
- **Job Role**: Employee’s job title or position.
- **Marital Status**: Marital status of the employee.
- **Overtime**: Whether the employee regularly works overtime.
- **CF_Current Employee**: Current employment status.
- **Employee Count**: Total number of employees.
- **Employee Satisfaction**: Self-reported overall satisfaction score.
- **Job Satisfaction Rating**: Job-specific satisfaction score.

## Data Cleaning and Preparation
In Excel, I:
- **Removed duplicates and empty rows** to keep the data clean.
- **Standardized categorical data** (like Gender and Department) to maintain consistency.
- **Calculated new metrics** such as attrition rates per department.
- **Created additional columns** for clearer analysis, like age bands to categorize employees by age groups.

## Exploratory Data Analysis
To better understand the dataset, I:
- Calculated attrition rates by department, age band, and job role.
- Analyzed satisfaction averages by role and department.
- Reviewed employee demographics across factors like gender, department, and marital status.

## Data Analysis
Key metrics and calculations include:
- **Attrition Rate Calculation**: \( \text{Attrition Rate} = \frac{\text{Attrition Count}}{\text{Total Employees}} \times 100 \)
- **Satisfaction Scores**: Using `AVERAGEIF` functions to assess job and employee satisfaction by role and department.
- **Demographic Analysis**: Breaking down employee data by department, age, gender, and marital status.

## Data Visualization
### Dashboard Elements
In Power BI, I designed an interactive dashboard with the following key elements:
- **Attrition Overview**:
  - Bar charts show attrition rates by department, age band, and gender, while a donut chart highlights attrition by gender.
  - Line charts track changes in attrition over time.
- **Satisfaction Analysis**:
  - Heatmaps display satisfaction scores across departments and roles, while bar charts compare satisfaction scores among departments.
- **Employee Demographics**:
  - Pie charts show marital status distribution, and stacked bar charts represent educational backgrounds.
- **Overtime Analysis**:
  - Dual bar charts help see the link between overtime and attrition rates.

### Interactive Features
- **Slicers**: Allow filtering by Department, Age Band, Gender, Marital Status, and Job Role.
- **Drill-Down Options**: Users can explore specific departments or job roles for a deeper look at attrition and satisfaction.

## Key Insights
After exploring the data, I uncovered several interesting findings:
- **Attrition Trends**: Some departments and roles have notably higher turnover rates, which suggests these areas may need special attention.
- **Satisfaction Insights**: Certain departments and job roles have lower satisfaction scores, hinting at potential engagement issues that could be contributing to attrition.
- **Demographic Patterns**: Trends in attrition rates by age, marital status, and gender indicate that particular demographic groups may need targeted support.
- **Overtime Impact**: There is a clear correlation between working overtime and higher attrition rates. This suggests that employees who frequently work extra hours might feel more burnt out, leading to a higher likelihood of leaving the company.

## Recommendations
Based on the insights gained, here are my recommendations:
- **Focus on Retention**: Prioritize retention strategies in departments and roles with the highest turnover to better support these teams.
- **Address Satisfaction Gaps**: Identify and implement engagement initiatives in areas with lower satisfaction scores to boost morale and reduce turnover.
- **Reevaluate Overtime Practices**: Given the link between overtime and attrition, consider adjusting workloads or providing more flexible scheduling options to reduce burnout.
- **Monitor Demographic Trends**: Regularly review demographic-based attrition data to ensure HR policies are inclusive and supportive of all groups.

## Conclusion
This project provides a comprehensive look into employee attrition, satisfaction, and demographics. By using Excel for initial data prep and Power BI for dynamic visualizations, I’ve created a powerful tool for HR teams to understand and address employee turnover. These insights can help the organization make proactive, data-driven decisions to improve employee retention and engagement.
