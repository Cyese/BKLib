use Assignment;
SELECT l.fname, l.lname, l.email, l.sex, b.name, b.address
FROM Librarian as l
JOIN 
    Branch as b 
    ON l.id = b.id_librarian;
GO
SELECT * FROM Book_title;
SELECT * FROM Belongto_category;
GO

UPDATE Category SET name = 'Self-help' where name = 'Tu giup';
SELECT * FROM Category;
GO

-- UPDATE Category SET name = 'Kich tinh' where name = 'Hoi hop';
use Assignment;
SELECT * 
FROM Belongto_category;


use Assignment;
SELECT * 
FROM [User]
JOIN Phone_number
ON [User].id = Phone_number.id_user;
GO

SELECT * FROM Receipt;

USE [Assignment]
GO

SELECT id, id_branch FROM Book;