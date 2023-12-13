-- ham tinh tua sach co feebback thuojc top n
use Assignment;
GO

CREATE OR ALTER FUNCTION getBook_Top_nth_Feedback 
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
    RETURN
END

SELECT * FROM getBook_Top_nth_Feedback( 10, '2023-11-29' , '2023-11-30'  )
