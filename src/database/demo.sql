use Assignment;
GO

SELECT id, author, total_book, book_title_name
FROM Book_title b
JOIN (SELECT * FROM Belongto_category WHERE name_category = 'Khoa hoc') bl ON b.id = bl.id_book;

SELECT * FROM Belongto_category;
GROUP BY name_category;

SELECT TOP 1 * FROM [User] WHERE email = 'huonghoang@outlook.com';


SELECT * FROM getbooklist(65);