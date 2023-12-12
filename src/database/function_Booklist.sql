IF OBJECT_ID (N'dbo.getbooklist', N'FN') IS NOT NULL
    DROP FUNCTION dbo.getbooklist;
GO 

CREATE FUNCTION dbo.getBookList(@id_title INT)
RETURNS @res TABLE
(
    publish_year INT,
    branch_name VARCHAR(15),
    branch_address VARCHAR(100),
    status VARCHAR(15)
)
AS
BEGIN
    INSERT INTO @res
    SELECT b.publish AS publish_year, br.name AS branch_name, br.address AS branch_address, b.status AS status
    FROM (SELECT * FROM Book WHERE id_book_title = @id_title) b
    JOIN Branch br ON b.id_branch = br.id
    RETURN
END