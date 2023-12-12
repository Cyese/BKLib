------------- Book and relevant Book---------------
CREATE OR ALTER PROCEDURE SendBook
    @BookTitleName VARCHAR(40),
	@author VARCHAR(40),
	@publish INT,
    @BranchId INT
AS
BEGIN
    IF @publish IS NOT NULL AND @publish < 0 AND @publish > YEAR(GETDATE())
    BEGIN
        RAISERROR('Năm xuất bản không hợp lệ!', 5, 1);
        RETURN;
    END
    -- Check if the book title exists
    DECLARE @BookTitleId INT
    SELECT @BookTitleId = id FROM Book_Title WHERE book_title_name = @BookTitleName
    
    -- If the book title does not exist, create a new record
    IF @BookTitleId IS NULL
    BEGIN
        RAISERROR('Tên tựa sách không tồn tại! Vui lòng nhập lại!', 16, 1);
        RETURN;
    END
    ELSE
    BEGIN
        -- If the book title exists, update the total number of books
        UPDATE Book_Title
        SET total_book = total_book + 1
        WHERE id = @BookTitleId
    END

    -- Add a new record for the book
    INSERT INTO Book (id_branch, status, publish, id_book_title)
    VALUES (@BranchId, 'available', @publish, @BookTitleId)
END

---------- update book's status 
CREATE OR ALTER PROCEDURE UpdateStatus
	@id INT,
	@id_branch INT,
	@status VARCHAR(15)
AS
BEGIN
	UPDATE Book
	SET status = @status
	WHERE id = @id AND id_branch = @id_branch
END
----------- change book's info
CREATE OR ALTER PROCEDURE UpdateBookTitle
    @id INT,
    @author	VARCHAR(40),
    @book_title_name VARCHAR(40),
    @min_age INT = 13
AS 
BEGIN
    UPDATE Book_Title
    SET author = @author, book_title_name = @book_title_name, min_age = @min_age
    WHERE id = @id
END

----------- delete book
CREATE OR ALTER PROCEDURE DeleteBook
	@id INT,
	@id_branch INT
AS 
BEGIN
    DECLARE @BookID INT
    SELECT @BookID = id FROM Book WHERE id = @id AND id_branch = @id_branch
    
    -- If the book title does not exist, create a new record
    IF @BookID IS NULL
    BEGIN
        RAISERROR('Quyển sách đó không tồn tại trong cơ sở dữ liệu!', 16, 1);
        RETURN;
    END

	DELETE FROM Book
	WHERE id = @id AND @id_branch = @id_branch
	---update total book in book_title
	DECLARE @BookTitleId INT
    SELECT @BookTitleId = id_book_title FROM Book WHERE id = @id AND id_branch = @id_branch

	UPDATE Book_Title
    SET total_book = total_book - 1
    WHERE id = @BookTitleId
	---check total_book if it's <= 0 then delete the book title
	DECLARE @totalBook INT
	SELECT @totalBook = total_book FROM Book_Title WHERE id = @BookTitleId
	IF @totalBook < 0
    BEGIN
        DELETE FROM Book_Title
		WHERE id = @BookTitleId
    END
END

------------------------------------------------------User----------------------
CREATE OR ALTER PROCEDURE SignUp
    @FirstName VARCHAR(15),
    @MiddleInitial CHAR(1),
    @LastName VARCHAR(15),
    @BirthDate DATE,
    @Address VARCHAR(30),
    @Email VARCHAR(50),
    @IsSender BIT = 0,
    @IsBorrower BIT = 0
AS
BEGIN
    IF (@BirthDate > GETDATE())
    BEGIN
        RAISERROR('Ngày sinh không thể lớn hơn ngày hiện tại!', 5, 1);
        RETURN;
    END

    INSERT INTO [User] (fname, minit, lname, bdate, address, email, is_sender, is_borrower)
    VALUES (@FirstName, @MiddleInitial, @LastName, @BirthDate, @Address, @Email, @IsSender, @IsBorrower);
END

CREATE OR ALTER PROCEDURE UpdateUserInfo
    @UserId INT,
    @FirstName VARCHAR(15),
    @MiddleInitial CHAR(1),
    @LastName VARCHAR(15),
    @BirthDate DATE,
    @Address VARCHAR(30),
    @Email VARCHAR(50),
    @IsSender BIT = 0,
    @IsBorrower BIT = 0
AS
BEGIN
    IF (@BirthDate > GETDATE())
    BEGIN
        RAISERROR('Ngày sinh không thể lớn hơn ngày hiện tại!', 5, 1);
        RETURN;
    END

    UPDATE [User]
    SET
        fname = @FirstName,
        minit = @MiddleInitial,
        lname = @LastName,
        bdate = @BirthDate,
        address = @Address,
        email = @Email,
        is_sender = @IsSender,
        is_borrower = @IsBorrower
    WHERE id = @UserId;
END

CREATE OR ALTER PROCEDURE DeleteUser
    @UserId INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM [User] WHERE id = @UserId)
    BEGIN
        RAISEERROR('Người dùng không tồn tại!', 16, 1);
        RETURN;
    END

    DELETE FROM [User] WHERE id = @UserId;
END


