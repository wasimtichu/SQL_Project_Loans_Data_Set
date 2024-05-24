/*Practice Questions:
1. Find the loan's age for the approved loans.
2. Show the loan age in number of months. 
3. Show the loan age in number of years and extra months. Eg: 
   LoanID  | Yr | Month
   LP00011 | 3  | 9 
   */
  
SELECT 
    loan_id,
    TIMESTAMPDIFF(DAY,
        appdate,
        CURRENT_DATE()) AS LoanAgeInDays
FROM
    loans_data;


SELECT 
    loan_id,
    TIMESTAMPDIFF(MONTH,
        appdate,
        CURRENT_DATE()) AS LoanAgeInMonths
FROM
    loans_data;

SELECT 
    loan_id,
    TIMESTAMPDIFF(YEAR,
        appdate,
        CURRENT_DATE()) AS Years,
    TIMESTAMPDIFF(MONTH,
        appdate,
        CURRENT_DATE()) MOD 12 AS Months
FROM
    loans_data;