----------------------------------------------LIBRARY MANAGEMENT--------------------------------------------------------------------------

--1) List books with exactly one availabe copy.
SELECT * FROM Books WHERE Available_Copies = 1;

--2) List authors whose names start with a specific letter.
SELECT * FROM Authors WHERE Author_Name LIKE 'J%';

--3) List members with no address recorded.
SELECT Member_Name from Members where Address is Null;

--4) List borrowings with a specific borrow date.
SELECT * FROM Borrowings where Borrow_Date = TO_DATE('2025-10-01','YYYY-MM-DD');

--5) List books with publication year after 2000.
SELECT * FROM Books WHERE Publication_Year > 2000;

--6) List borrowings with no fines.
SELECT * FROM Borrowings WHERE Fine = 0;

--7) List member sorted with membership date in descending order.
SELECT * FROM Members ORDER BY Membership_Date Desc;

--8. Count the total number of authors
SELECT COUNT(*) FROM Authors;

--9. List books with titles containing a specific word (eg: 'Potter')
SELECT Title FROM Books WHERE Title LIKE '%Potter%';

--10)List borrowings returned on a specific date.
SELECT * FROM Borrowings WHERE Return_Date = TO_DATE('2025-10-10','YYYY-MM-DD');

--11)List members with a specific area code in their phone number.
SELECT * FROM Members WHERE Phone LIKE '111%';

--12)List books sorted by title alphabetically.
SELECT * FROM Books ORDER BY Title;

--13)Sum the total available copies across all books;
SELECT SUM(Available_Copies) as Total_Copies FROM Books;

--14) List borrowings with a due date in a specific month.
SELECT * FROM Borrowings where TO_CHAR('2025-10','YYYY-MM');

--15) List authors with names longer than 10 charecters.
SELECT Author_Name from Authors WHERE LENGTH(Authorr_Name) > 10;



