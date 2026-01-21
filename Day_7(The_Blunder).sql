SELECT CEIL(AVG(salary) - AVG(REPLACE(salary, '0', ''))) as mistaken
FROM EMPLOYEES;
