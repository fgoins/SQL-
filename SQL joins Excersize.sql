/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 select products.Name as "Product Name" , categories.Name as "Category Name"
 from products
 inner join categories
 on products.CategoryID = categories.CategoryID
 where categories.Name like "$computer%";
 
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 select p.name, p.Price, r.rating
 from product as p
 inner join reviews as r
 on r.ProductID = p.productID
 where r.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select e.FirstName, e.LastName, sum(s.quantiy) as total
from sales as s
inner join employees as e
on e.EmployeeID = s.EmployeeID
group	by e.EmployeeID
order by total desc
limit 2;


/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.name as 'Department Name', c.name as 'Category Name'
from departments as d
inner join caterogies AS c On c.DepartmentID = d.DepartmentID
where c.name = 'appliances' or c.name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
Select p.name, sum(s.quanity) as 'Total units Sold',
Sum(s.quanity *s.PricePerUnit) as 'total Price'
from products as p
inner join  sales as s
on s.ProductID = 97;
-- verification:
select * from products where ProductID = 97;


/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.name, r.reviewer, r.rating,
r.comment from products as p
inner join reviews as r
on r.ProductID = p.ProductID
where p.ProductID = 857 and r.rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */