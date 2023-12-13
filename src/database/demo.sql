use Assignment;
GO

SELECT * FROM Book_title;

SELECT * FROM Receipt;

UPDATE Book_title
SET total_book = (SELECT COUNT(id) FROM Book WHERE Book.id_book_title = Book_title.id);
GO
SELECT id, author, total_book, book_title_name
FROM Book_title b
JOIN (SELECT * FROM Belongto_category WHERE name_category = 'Khoa hoc') bl ON b.id = bl.id_book;

SELECT * FROM Belongto_category;
GROUP BY name_category;

SELECT * FROM [User];

UPDATE Category SET name = 'Kich tinh' WHERE name = 'Hoi hop';


SELECT * FROM getbooklist(65);
SELECT * FROM Book;
SELECT * FROM Receipt_borrow_book


USE [Assignment]
GO
SELECT * FROM [User]
SELECT b.publish AS publish_year, br.name AS branch_name, br.address AS branch_address, b.status AS status FROM (SELECT * FROM Book WHERE id_book_title = 3) b JOIN Branch br ON b.id_branch = br.id;
SELECT * FROM Book_title
SELECT TOP 1 * FROM [User] WHERE email = 'huonghoang@outlook.com'
