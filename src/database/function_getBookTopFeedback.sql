-- ham tinh tua sach co feebback thuojc top n
CREATE FUNCTION getBook_Top_nth_Feedback 
( @nth INT, @date_start DATE, @date_end DATE )
RETURNS @Result TABLE
    (
        id INT,
        book_title_name NVARCHAR(255),
        feedback_count INT
    )
AS
BEGIN

    INSERT INTO @Result
    SELECT TOP(@nth) bt.id, bt.book_title_name, COUNT(f.id) FROM Book_title bt 
    JOIN Feedback f ON bt.id = f.id_book_title
    WHERE f.date_fb >= @date_start AND f.date_fb <= @date_end
    GROUP BY bt.id, bt.book_title_name
    ORDER BY COUNT(f.id) DESC;

    IF NOT EXISTS (SELECT 1 FROM @Result)
    BEGIN
        INSERT INTO @Result (id, book_title_name, feedback_count)
        VALUES (NULL, 'Không có quyển nào được feedback', 0);
    END

    RETURN
END

-- SELECT * FROM getBook_Top_nth_Feedback( 4, '2023-11-01' , '2023-11-30'  )
