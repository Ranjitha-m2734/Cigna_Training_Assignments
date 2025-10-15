CREATE DATABASE OFFICE

CREATE TABLE DEPT (
deptno NUMBER PRIMARY KEY,
dept_name VARCHAR2(30) NOT NULL,
Loc VARCHAR2(30) NOT NULL
);
CREATE TABLE Emp(
  empno NUMBER PRIMARY KEY,
  emp_name VARCHAR2(30) NOT NULL,
  Job VARCHAR2(30) NOT NULL,
  Salary NUMBER NOT NULL,
  deptno NUMBER NOT NULL,
  CONSTRAINT fk_Dept FOREIGN KEY (deptno) REFERENCES DEPT(deptno)
);

INSERT INTO DEPT (deptno, dept_name, Loc) VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT (deptno, dept_name, Loc) VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO DEPT (deptno, dept_name, Loc) VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO DEPT (deptno, dept_name, Loc) VALUES (40, 'OPERATIONS', 'BOSTON');


INSERT INTO EMP (empno, emp_name, Job, salary, deptno) VALUES (1001, 'JOHN', 'MANAGER', 50000, 10);
INSERT INTO EMP (empno, emp_name, job, salary, deptno) VALUES (1002, 'ALICE', 'CLERK', 25000, 10);
INSERT INTO EMP (empno, emp_name, job, salary, deptno) VALUES (1003, 'BOB', 'ANALYST', 40000, 20);
INSERT INTO EMP (empno, emp_name, job, salary, deptno) VALUES (1004, 'CAROL', 'SALESMAN', 30000, 30);
INSERT INTO EMP (empno, emp_name, job, salary, deptno) VALUES (1005, 'DAVID', 'SALESMAN', 28000, 30);
INSERT INTO EMP (empno, emp_name, job, salary, deptno) VALUES (1006, 'EMILY', 'OPERATOR', 35000, 40);

SELECT * FROM DEPT;
SELECT * FROM EMP;

---------------------------------------------------------------------------------------------------

--1)Single-row Subquery
SELECT emp_name, Salary 
FROM EMP 
WHERE Salary > (SELECT AVG(Salary) FROM EMP);

--2)Multi-row Subquery
 SELECT emp_name, deptno 
FROM EMP
WHERE deptno IN (SELECT deptno FROM DEPT WHERE Loc= 'NEW YORK');

--3)Multi-column Subquery
 SELECT empno, emp_name, Job, deptno 
FROM Emp
WHERE (Job, deptno) IN 
      (SELECT Job, deptno FROM Emp WHERE empno = 7839); 

--4)Correlated Subquery
SELECT e.emp_name, e.Salary, e.deptno 
FROM Emp e 
WHERE e.Salary > (SELECT AVG(Salary) 
FROM Emp
WHERE deptno = e.deptno); 

--5) In the WHERE Clause
 SELECT * 
FROM Emp
WHERE deptno IN (SELECT deptno FROM DEPT WHERE Loc= 'CHICAGO'); 

--6) In the HAVING Claus
 SELECT deptno, AVG(Salary) 
FROM Emp 
GROUP BY deptno 
HAVING AVG(Salary) > (SELECT AVG(Salary) FROM Emp);

--7) In the SELECT Clause
SELECT e.emp_name, 
       (SELECT dept_name FROM DEPT d WHERE d.deptno = e.deptno) AS department 
FROM Emp e;



