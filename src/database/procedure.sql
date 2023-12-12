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
	-- Tạo bảng result chứa số lượng gửi sách của User
	DECLARE @result_sender TABLE (id_sender INT, counts INT)
	INSERT INTO @result_sender
	SELECT	id_sender, COUNT(id_send_receipt) AS donation_count
	FROM	Send_book 
	GROUP BY id_sender;
	-- Xuất tên của User đó
	SELECT	[User].fname, [User].minit, [User].lname
	FROM	[User]
	WHERE	[User].id IN (	SELECT	MAX(id_sender)
							FROM	@result_sender
							);				
END;
-- EXEC FindTopDonorInPeriod @start_date='10/12/2023', @end_date='25/12/2023'

-- Borrow book
CREATE OR ALTER PROCEDURE FindTopBorrowInPeriod @start_date DATE, @end_date DATE
AS
BEGIN
	-- Tạo bảng result chứa số lượng gửi sách của User
	DECLARE @result_borrow TABLE (id_borrower INT, counts INT)
	INSERT INTO @result_borrow
	SELECT	id_borrower, COUNT(id_borrow_receipt) AS borrow_count
	FROM	Borrow_book 
	GROUP BY id_borrower;
	-- Xuất tên của User đó
	SELECT	[User].fname, [User].minit, [User].lname
	FROM	[User]
	WHERE	[User].id IN (	SELECT	MAX(id_borrower)
							FROM	@result_borrow
							);				
END;
-- EXEC FindTopDonorInPeriod @start_date='10/12/2023', @end_date='25/12/2023'