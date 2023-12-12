use Assignment;
GO

SELECT author, total_book, book_title_name
FROM Book_title b
JOIN (SELECT * FROM Belongto_category WHERE name_category = 'Khoa hoc') bl ON b.id = bl.id_book;

SELECT * FROM Belongto_category;
GROUP BY name_category;