/* Assignment-1: Calculate Simple Interest 
Objective:     Use variables and arithmetic expressions inside a PL/SQL block. 
Requirements: 
1. Declare three variables: 
o p (principal) 
o r (rate of interest) 
o t (time in years) 
2. Compute Simple Interest using: 
SI=(𝒑∗𝒓∗𝒕)/𝟏𝟎𝟎 
 
3. Display the result using DBMS_OUTPUT.PUT_LINE. 
*/

DECLARE 
    P NUMBER;
    R NUMBER;
    T NUMBER;
    SI NUMBER;
    
BEGIN
    P:= 1000;
    R:=5;
    T:=2;
    
    SI := (P*T*R)/100;
    
    DBMS_OUTPUT.PUT_LINE('Simple Interest is ' || SI);
    
END;

-----------------------------------------------------

/* Assignment 2: Employee Bonus Calculation 
Objective:     Practice variable declaration and IF conditions. 
Requirements: 
1. Declare variables: 
o emp_name VARCHAR2(50) 
o salary NUMBER 
o bonus NUMBER 
2. Assign values to emp_name and salary. 
3. Use conditions: 
o If salary > 50000 → bonus = 0.10 × salary 
o Else → bonus = 0.15 × salary 
4. Display employee name, salary, and bonus.
*/

DECLARE
    emp_name VARCHAR(50);
    salary NUMBER;
    bonus NUMBER;
    
BEGIN 
    emp_name := 'Roshan';
    salary := 60000;
    IF salary > 50000 THEN
        bonus := salary*0.1;
    ELSE
        bonus := salary*0.15;
    END IF;
    
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || emp_name);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || salary);
    DBMS_OUTPUT.PUT_LINE('Employee Bonus: ' || bonus);
    
END;

-----------------------------------------------------------------

/* Assignment-3:    Retrieve and Display Department Details 
Objective:      Use %ROWTYPE with a WHERE clause. 
Requirements: 
1. Declare a variable v_dept of type DEPARTMENTS%ROWTYPE. 
2. Take a sample department ID in variable 
3. Fetch the corresponding record into v_dept. 
4. Display department name and location
*/

DECLARE
    v_dept Dept%ROWTYPE;   -- Variable of type DEPARTMENTS%ROWTYPE
    v_dept_id Dept.Deptno%TYPE;  -- Variable to hold department ID
BEGIN
-- Assign a sample department ID
    v_dept_id := 10;
-- Retrieve department details
SELECT *
INTO v_dept
FROM Dept
WHERE Deptno = v_dept_id;

-- Display department name and location
DBMS_OUTPUT.PUT_LINE('Department Name: ' || v_dept.Dname);
DBMS_OUTPUT.PUT_LINE('Location ID: ' || v_dept.Loc); 

END;
