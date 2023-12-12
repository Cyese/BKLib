use Assignment;

-- Procedure 1: Find book by title/author's name
CREATE PROCEDURE findBook @search_term VARCHAR(40)
AS
BEGIN
    SELECT book_title_name, total_book, status, id_branch, publish
    FROM Book_title as t JOIN Book as b ON t.id = b.id_book_title
    WHERE LOWER(book_title_name) LIKE LOWER(CONCAT('%', @search_term, '%'))
       OR LOWER(author) LIKE LOWER(CONCAT('%', @search_term, '%'));
END;

-- EXEC findBook @search_term = 'Harry'

-- Procedure 2: Find user send/borrow most

-- Send book
CREATE OR ALTER PROCEDURE FindTopDonorInPeriod @start_date DATE, @end_date DATE
AS
BEGIN
	DECLARE @result TABLE (id_sender INT, counts INT)
	INSERT INTO @result
	SELECT	id_sender, COUNT(id_send_receipt) AS counts
	FROM	(Send_book as s JOIN Receipt as r ON s.id_send_receipt = r.id) 
	WHERE	r.date_exported BETWEEN @start_date AND @end_date 
	GROUP BY id_sender

	SELECT	[User].fname, [User].minit, [User].lname
	FROM	[User] JOIN @result ON [User].id = id_sender
	WHERE	counts IN (	SELECT	MAX(counts)
							FROM	@result
							);				
END;
-- EXEC FindTopDonorInPeriod @start_date='2023-11-05', @end_date='2023-11-07'

-- Borrow book
CREATE OR ALTER PROCEDURE FindTopBorrowInPeriod @start_date DATE, @end_date DATE
AS
BEGIN
	DECLARE @result TABLE (id_borrower INT, counts INT)
	INSERT INTO @result
	SELECT	id_borrower, COUNT(id_borrow_receipt) AS counts
	FROM	(Borrow_book as b JOIN Receipt as r ON b.id_borrow_receipt = r.id) 
	WHERE	r.date_exported BETWEEN @start_date AND @end_date 
	GROUP BY id_borrower

	SELECT	[User].fname, [User].minit, [User].lname
	FROM	[User] JOIN @result ON [User].id = id_borrower
	WHERE	counts IN (	SELECT	MAX(counts)
							FROM	@result
							);			
END;
-- EXEC FindTopBorrowInPeriod @start_date='2023-11-05', @end_date='2023-11-07'