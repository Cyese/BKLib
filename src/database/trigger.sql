CREATE OR ALTER TRIGGER trigger_return_book
ON Return_book 
AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;
	
	UPDATE [User]
	SET point = point - (SELECT point_penalty FROM INSERTED)
	WHERE id IN (SELECT id_borrower FROM INSERTED);
END;
GO
-----------------------------------------
CREATE OR ALTER TRIGGER trigger_borrow_book
ON Borrow_book
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Update user points, change book status, and decrement total_book
    UPDATE [User]
    SET point = point - (SELECT point_lost FROM INSERTED)
    WHERE id IN (SELECT id_borrower FROM INSERTED);

    UPDATE Book
    SET status = 'unavailable'
    WHERE id IN (SELECT id_book FROM INSERTED);

END;
GO
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
GO
-----------GO-------------------------
CREATE OR ALTER TRIGGER trigger_send_book
ON Send_book 
AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON;	
	UPDATE [User]
	SET point = point + 10
	WHERE id IN (SELECT id_sender FROM INSERTED);
END;
