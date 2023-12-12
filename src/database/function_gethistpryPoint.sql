CREATE FUNCTION gethistoryPoint 
(
    @id_user INT , @date_start DATE , @date_end DATE
)
RETURNS @res TABLE 
(
    ngay DATE,
    li_do VARCHAR(255),
    id_sach INT,
    diem_thay_doi INT
)
AS 
BEGIN
    -- mua diem
    INSERT INTO @res 
    SELECT p.date ,'mua diem' , ' ', p.point 
    FROM [User] u JOIN Point_payment p ON u.id = p.id_user
    WHERE u.id = @id_user AND  p.date BETWEEN @date_start AND @date_end;


    -- gui sach
    INSERT INTO @res 
    SELECT r.date_exported ,'gui sach' , b.id , +10
    FROM Send_book sb JOIN [User] u ON sb.id_sender = u.id
                        JOIN Book b ON sb.id_book = b.id
                        JOIN Receipt r ON sb.id_send_receipt = r.id
    WHERE u.id = @id_user AND  (r.date_exported BETWEEN @date_start AND @date_end);

    -- muon sach
    INSERT INTO @res 
    SELECT r.date_exported ,'muon sach' , b.id , -2
    FROM Borrow_book bb JOIN [User] u ON bb.id_borrower = u.id
                        JOIN Book b ON bb.id_book = b.id
                        JOIN Receipt r ON bb.id_borrow_receipt = r.id
    WHERE u.id = @id_user AND  (r.date_exported BETWEEN @date_start AND @date_end);

    -- tra sach
    INSERT INTO @res 
    SELECT r.date_exported ,'tra sach' , b.id , - rb.point_penalty
    FROM Return_book rb JOIN [User] u ON rb.id_borrower = u.id
                        JOIN Book b ON rb.id_book = b.id
                        JOIN Receipt r ON rb.id_borrow_receipt = r.id
    WHERE u.id = @id_user AND  (r.date_exported BETWEEN @date_start AND @date_end);
    
        -- khong co giao dich nao
    IF NOT EXISTS (SELECT 1 FROM @res)
    BEGIN
        INSERT INTO @res
        VALUES (NULL,NULL, 'Không có hoạt đông giao dịch nào trong thời gian này', 0);
    END

    RETURN
END

-- SELECT * FROM gethistoryPoint(1, '1/1/2023' ,'30/12/2023')
-- SELECT * FROM gethistoryPoint(2, '1/1/2023' ,'30/12/2023')