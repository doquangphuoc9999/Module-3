use classicmodels;

call getCusById();

select city from customers;

call GetCustomersCountByCity('Nantes',@total);
select(@total);
SET @counter = 1;
call SetCounter(@counter,1);
CALL SetCounter(@counter,5);

SELECT @counter;