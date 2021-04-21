--Q1 List all Employees whose salary is between
--  1,000 AND 2,000. Show the Employee Name, 
--  Department and Salary
-- salary = SAL, employee name = ENAME 
-- Department = DEPTN0
mysql;
USE COMPANY1;
SELECT ENAME, DEPTNO, SAL FROM EMP 
    -> WHERE SAL BETWEEN 1000 AND 2000; 
 
--Q2 Count the number of people in department 30 
--who receive a salary and the number of people who
--receive a commission
-- salary = SAL, commission = COMM 
-- Department = DEPTN0
mysql;
USE COMPANY1;
SELECT COUNT(SAL), COUNT(COMM)
    -> FROM EMP
    -> WHERE DEPTNO = 30;
    
--Q3 Find the name and salary of employees in Dallas
-- salary = SAL, employee name = ENAME 
-- Department location = LOC
mysql;
USE COMPANY1;
SELECT EMP.ENAME, EMP.SAL
    ->FROM EMP JOIN DEPT USING (DEPTNO)
    ->WHERE DEPT.LOC = 'DALLAS';

--Q4 List all departments that do not have any employees
mysql;
USE COMPANY1;
--Department name = DNAME
-- Department number = DEPTN0    
SELECT DNAME,DEPTNO FROM DEPT 
    ->WHERE DEPTNO 
    ->NOT IN (select DEPTNO FROM EMP);   

--Q5 List the department number and average
-- salary of each department
--average salary = AVG(SAL)
-- Department = DEPTN0
mysql;
USE COMPANY1;
SELECT AVG(SAL), DEPTNO 
    ->FROM EMP
    -> GROUP BY DEPTNO;
