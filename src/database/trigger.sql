CREATE OR ALTER TRIGGER trigger_return_book
ON Return_book 
AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	DECLARE @point_penalty INT;
	
	SELECT @point_penalty AS point_penalty
	FROM INSERTED;
	
	UPDATE User
	SET point = point - @point_penalty
	WHERE id IN (SELECT id_borrower FROM INSERTED);
END;
-----------------------------------------
CREATE OR ALTER TRIGGER trigger_borrow_book
ON Borrow_book
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Update user points, change book status, and decrement total_book
    UPDATE [User]
    SET point = point - (SELECT point_lost FROM inserted)
    WHERE id IN (SELECT id_borrower FROM inserted);

    UPDATE Book
    SET status = 'unavailable'
    WHERE id IN (SELECT id_book FROM inserted);

END;
-------------------------------------------
CREATE OR ALTER TRIGGER tr_point_payment
ON Point_payment
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Update user points based on the inserted data in Point_payment
    UPDATE [User]
    SET point = point + (SELECT point FROM inserted)
    WHERE id IN (SELECT id_user FROM inserted);
END;