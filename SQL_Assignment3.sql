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

SELECT emp_name, Salary 
FROM EMP 
WHERE Salary > (SELECT AVG(Salary) FROM EMP);
