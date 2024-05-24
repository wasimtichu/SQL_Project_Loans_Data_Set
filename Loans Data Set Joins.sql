-- 1. List of all the customers who have high credit card balance. Also, show the list of amount of deposit they have made (if any).

select h.CustID, h.CCBalance, d.DepositAmt
from highcreditcardbalancecustomers h left join depositcustomers d on h.custid = d.custid;

-- 2. List the customers who have both high cc balance as well as deposited money.
 
select h.CustID, h.CCBalance, d.DepositAmt
from highcreditcardbalancecustomers h join depositcustomers d on h.custid = d.custid
order by ccbalance desc;

-- 3. List all the deposit customers. Show they credit card balance amount also if they have.

select d.CustID, d.DepositAmt, h.CCBalance
from depositcustomers d left join highcreditcardbalancecustomers h on d.custid = h.custid;

-- List all the customers and the loanAmount they have taken. Also, show their deposit amount and credit card balance, if any.

select l.Loan_ID, l.LoanAmount, c.custID, h.CCBalance, d.DepositAmt
from loans_data l left join customers c on l.loan_id = c.loan_id left join highcreditcardbalancecustomers h on c.custid = h.custid left join depositcustomers d on h.custid = d.custid;

