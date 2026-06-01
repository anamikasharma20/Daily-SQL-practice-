SELECT CEIL(AVG(salary) - AVG(REPLACE(salary, '0', ''))) as mistaken
FROM EMPLOYEES;
SELECT product_id from Products where low_fats='Y' and recyclable='Y';
