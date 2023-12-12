
INSERT INTO Feedback (description, id_book_title, date_fb, id_user)
VALUES ('Sach hay lam moi nguoi oi!', '7', '2023-11-06', '2');

INSERT INTO Feedback (description, id_book_title, date_fb, id_user)
VALUES ('Sach hay, nhan vien than thien', '4', '2023-11-06', '9');

INSERT INTO Feedback (description, id_book_title, date_fb, id_user)
VALUES ('Sach hoi cu nhung chu van con ro net', '26', '2023-11-05', '15');

INSERT INTO Feedback (description, id_book_title, date_fb, id_user)
VALUES ('Sach hay', '20', '2023-11-06', '15');

INSERT INTO Feedback (description, id_book_title, date_fb, id_user)
VALUES ('Sach con moi lam, khong cu nhu tuong tuong', '56', '2023-11-07', '2');

INSERT INTO Feedback (description, id_book_title, date_fb, id_user)
VALUES ('Sach hay lam ', '55', '2023-11-06', '17');

INSERT INTO Feedback (description, id_book_title, date_fb, id_user)
VALUES ('Sach on', '26', '2023-11-06', '1');

INSERT INTO Feedback (description, id_book_title, date_fb, id_user)
VALUES ('Sach va con moi lam', '8', '2023-11-04', '22');

INSERT INTO Feedback (description, id_book_title, date_fb, id_user)
VALUES ('Sach hoi cu, bi rach vai trang', '53', '2023-11-06', '20');
---==Borrow_book==-------
-- Row 1
INSERT INTO Borrow_book (id_borrower, id_book, id_branch, id_borrow_receipt, point_lost, state_borrow)
VALUES (1, 1, 1, 1, 2, 'hu_hong_nang');

-- Row 2
INSERT INTO Borrow_book (id_borrower, id_book, id_branch, id_borrow_receipt, point_lost, state_borrow)
VALUES (2, 2, 1, 2, 2, 'nguyen_ven');

-- Row 3
INSERT INTO Borrow_book (id_borrower, id_book, id_branch, id_borrow_receipt, point_lost, state_borrow)
VALUES (3, 3, 3, 3, 2, 'hu_hong_nhe');

-- Row 4
INSERT INTO Borrow_book (id_borrower, id_book, id_branch, id_borrow_receipt, point_lost, state_borrow)
VALUES (4, 4, 4, 4, 2, 'hu_hong_vua');

-- Row 5
INSERT INTO Borrow_book (id_borrower, id_book, id_branch, id_borrow_receipt, point_lost, state_borrow)
VALUES (5, 5, 4, 5, 2, 'hu_hong_nang');


---- ReturnBook Table---
-- Row 1
INSERT INTO Return_book (id_borrower, id_book, id_branch, id_borrow_receipt, point_penalty, state_return)
VALUES (1, 1, 1, 1, 20, 'mat');

-- Row 2
INSERT INTO Return_book (id_borrower, id_book, id_branch, id_borrow_receipt, point_penalty, state_return)
VALUES (2, 2, 1, 2, 0, 'nguyen_ven');

-- Row 3
INSERT INTO Return_book (id_borrower, id_book, id_branch, id_borrow_receipt, point_penalty, state_return)
VALUES (3, 3, 3, 3, 4, 'hu_hong_nhe');

-- Row 4
INSERT INTO Return_book (id_borrower, id_book, id_branch, id_borrow_receipt, point_penalty, state_return)
VALUES (4, 4, 4, 4, 8, 'hu_hong_vua');

-- Row 5
INSERT INTO Return_book (id_borrower, id_book, id_branch, id_borrow_receipt, point_penalty, state_return)
VALUES (5, 5, 4, 5, 12, 'hu_hong_nang');