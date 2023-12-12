--use Assignment;
-- ==== Librarian ====
INSERT INTO Librarian (fname, minit, lname, email, sex)
VALUES ('Vu', 'S', 'Trang', 'vustrang@outlook.com', 'F');

INSERT INTO Librarian (fname, minit, lname, email, sex)
VALUES ('Hoang', 'G', 'Giang', 'hoangggiang@hotmail.com', 'M');

INSERT INTO Librarian (fname, minit, lname, email, sex)
VALUES ('Bui', 'V', 'Van', 'buivvan@hcmut.edu.vn', 'M');

INSERT INTO Librarian (fname, minit, lname, email, sex)
VALUES ('Vu', 'D', 'Thao', 'vudthao@hcmut.edu.vn', 'F');

INSERT INTO Librarian (fname, minit, lname, email, sex)
VALUES ('Tran', 'D', 'Yen', 'trandyen@yahoo.com', 'M');

INSERT INTO Phone_number_librarian
VALUES (1, '0937572420');

INSERT INTO Phone_number_librarian
VALUES (2, '01415996136');

INSERT INTO Phone_number_librarian
VALUES (3, '0808426769237');

INSERT INTO Phone_number_librarian
VALUES (4, '032988556289');

INSERT INTO Phone_number_librarian
VALUES (5, '0348402223');

INSERT INTO Phone_number_librarian
VALUES (1, '070287360678');

INSERT INTO Phone_number_librarian
VALUES (4, '0894621071');
GO
-- ==== Branch ====

INSERT INTO Branch (name, address, id_librarian)
VALUES ('Ho Chi Minh', '18 Cach mang thang 8, Quan 1, TP Ho Chi Minh', 1);

INSERT INTO Branch (name, address, id_librarian)
VALUES ('Da Nang', '2 Thang 9, Hai Chau, Da Nang', 2);

INSERT INTO Branch (name, address, id_librarian)
VALUES ('Ha Noi', '18 Nguyen Du, Hai Ba Trung, Ha Noi', 3);

INSERT INTO Branch (name, address, id_librarian)
VALUES ('Hue', '1 Le Loi, Hue', 4);

INSERT INTO Branch (name, address, id_librarian)
VALUES ('Nha Trang', '2 Nguyen Thien Thuat, Nha Trang', 5);
GO
-- ==== Book ====

INSERT INTO Category (name)
VALUES ('Khoa hoc vien tuong');

INSERT INTO Category (name)
VALUES ('Fantasy');

INSERT INTO Category (name)
VALUES ('Lang man');

INSERT INTO Category (name)
VALUES ('Lich su');

INSERT INTO Category (name)
VALUES ('Kinh di');

INSERT INTO Category (name)
VALUES ('Kich tinh');

INSERT INTO Category (name)
VALUES ('Bi an');

INSERT INTO Category (name)
VALUES ('Trinh tham');

INSERT INTO Category (name)
VALUES ('Tieu su');

INSERT INTO Category (name)
VALUES ('Self-help');

INSERT INTO Category (name)
VALUES ('Suc khoe');

INSERT INTO Category (name)
VALUES ('Huong dan');

INSERT INTO Category (name)
VALUES ('Du lich');

INSERT INTO Category (name)
VALUES ('Tre em');

INSERT INTO Category (name)
VALUES ('Ton giao');

INSERT INTO Category (name)
VALUES ('Khoa hoc');
GO 
-- ==== BookTitle ====
-- Science Fiction:
INSERT INTO Book_title (author, book_title_name)
VALUES ('Frank Herbert', 'Dune');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Orson Scott Card', 'Ender''s Game');

INSERT INTO Book_title (author, book_title_name)
VALUES ('William Gibson', 'Neuromancer');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Ursula K. Le Guin', 'The Left Hand of Darkness');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Neal Stephenson', 'Snow Crash');
-- Fantasy: 
INSERT INTO Book_title (author, book_title_name)
VALUES ('J.R.R. Tolkien', 'The Hobbit');

INSERT INTO Book_title (author, book_title_name)
VALUES ('J.K. Rowling', 'Harry Potter and the Sorcerer''s Stone');

INSERT INTO Book_title (author, book_title_name)
VALUES ('George R.R. Martin', 'A Game of Thrones');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Patrick Rothfuss', 'The Name of the Wind');

INSERT INTO Book_title (author, book_title_name)
VALUES ('J.R.R. Tolkien', 'The Fellowship of the Ring');
-- Romance:
INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Jane Austen', 'Pride and Prejudice', 18);

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Diana Gabaldon', 'Outlander', 18);

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Nicholas Sparks', 'The Notebook', 18);

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Jojo Moyes', 'Me Before You', 18);

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Gail Honeyman', 'Eleanor Oliphant Is Completely Fine', 18);
-- Historical Fiction:
INSERT INTO Book_title (author, book_title_name)
VALUES ('Markus Zusak', 'The Book Thief');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Anthony Doerr', 'All the Light We Cannot See');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Kristin Hannah', 'The Nightingale');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Ken Follett', 'The Pillars of the Earth');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Hilary Mantel', 'Wolf Hall');
-- Horror:
INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Stephen King', 'The Shining', 16);

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Stephen King', 'It', 16);

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('William Peter Blatty', 'The Exorcist', 16);

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Bram Stoker', 'Dracula', 16);

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Josh Malerman', 'Bird Box', 16);
-- Thriller:
INSERT INTO Book_title (author, book_title_name)
VALUES ('Stieg Larsson', 'The Girl with the Dragon Tattoo');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Gillian Flynn', 'Gone Girl');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Dan Brown', 'The Da Vinci Code');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Thomas Harris', 'The Silence of the Lambs');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Paula Hawkins', 'The Girl on the Train');
-- Mystery:
INSERT INTO Book_title (author, book_title_name)
VALUES ('Arthur Conan Doyle', 'The Hound of the Baskervilles');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Tana French', 'In the Woods');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Liane Moriarty', 'Big Little Lies');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Carlos Ruiz Zafón', 'The Shadow of the Wind');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Dennis Lehane', 'Gone Baby Gone');
-- Biography:
INSERT INTO Book_title (author, book_title_name)
VALUES ('Agatha Christie', 'Murder on the Orient Express');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Alexander McCall Smith', 'The No. 1 Ladies'' Detective Agency');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Robert Galbraith', 'The Cuckoo''s Calling');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Michael Connelly', 'The Poet');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Dashiell Hammett', 'The Maltese Falcon');
-- 
INSERT INTO Book_title (author, book_title_name)
VALUES ('Walter Isaacson', 'Steve Jobs');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Anne Frank', 'The Diary of a Young Girl');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Laura Hillenbrand', 'Unbroken');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Rebecca Skloot', 'The Immortal Life of Henrietta Lacks');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Jeannette Walls', 'The Glass Castle');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Stephen R. Covey', 'The 7 Habits of Highly Effective People');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Dale Carnegie', 'How to Win Friends and Influence People');

INSERT INTO Book_title (author, book_title_name)
VALUES ('James Clear', 'Atomic Habits');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Eckhart Tolle', 'The Power of Now');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Jen Sincero', 'You Are a Badass');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Jon Krakauer', 'Into the Wild');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Elizabeth Gilbert', 'Eat, Pray, Love');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Bill Bryson', 'In a Sunburned Country');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Bill Bryson', 'A Walk in the Woods');

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Cheryl Strayed', 'Wild', 6);
INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('J.K. Rowling', 'Harry Potter and the Philosopher''s Stone', 6);

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Eric Carle', 'The Very Hungry Caterpillar', 6);

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Maurice Sendak', 'Where the Wild Things Are', 6);

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('Roald Dahl', 'Matilda', 6);

INSERT INTO Book_title (author, book_title_name, min_age)
VALUES ('E.B. White', 'Charlotte''s Web', 6);

INSERT INTO Book_title (author, book_title_name)
VALUES ('Stephen Hawking', 'A Brief History of Time');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Yuval Noah Harari', 'A Brief History of Humankind');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Richard Dawkins', 'The Selfish Gene');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Carl Sagan', 'Cosmos');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Brian Greene', 'The Elegant Universe');
GO

-- ==== Belongto_category ====
-- use Assignment;
INSERT INTO Belongto_category (id_book, name_category)
VALUES (1, 'Khoa hoc vien tuong');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (2, 'Khoa hoc vien tuong');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (3, 'Khoa hoc vien tuong');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (4, 'Khoa hoc vien tuong');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (5, 'Khoa hoc vien tuong');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (6, 'Fantasy');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (7, 'Fantasy');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (8, 'Fantasy');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (9, 'Fantasy');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (10, 'Fantasy');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (11, 'Lang man');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (12, 'Lang man');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (13, 'Lang man');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (14, 'Lang man');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (15, 'Lang man');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (16, 'Lich su');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (17, 'Lich su');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (18, 'Lich su');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (19, 'Lich su');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (20, 'Lich su');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (21, 'Kinh di');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (22, 'Kinh di');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (23, 'Kinh di');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (24, 'Kinh di');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (25, 'Kinh di');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (26, 'Kich tinh');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (27, 'Kich tinh');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (28, 'Kich tinh');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (29, 'Kich tinh');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (30, 'Kich tinh');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (31, 'Bi an');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (32, 'Bi an');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (33, 'Bi an');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (34, 'Bi an');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (35, 'Bi an');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (36, 'Trinh tham');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (37, 'Trinh tham');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (38, 'Trinh tham');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (39, 'Trinh tham');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (40, 'Trinh tham');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (41, 'Tieu su');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (42, 'Tieu su');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (43, 'Tieu su');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (44, 'Tieu su');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (45, 'Tieu su');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (46, 'Self-help');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (47, 'Self-help');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (48, 'Self-help');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (49, 'Self-help');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (50, 'Self-help');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (51, 'Du lich');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (52, 'Du lich');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (53, 'Du lich');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (54, 'Du lich');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (55, 'Du lich');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (56, 'Tre em');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (57, 'Tre em');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (58, 'Tre em');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (59, 'Tre em');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (60, 'Tre em');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (61, 'Khoa hoc');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (62, 'Khoa hoc');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (63, 'Khoa hoc');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (64, 'Khoa hoc');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (65, 'Khoa hoc');
GO
-- ==== User ====
--use Assignment;
INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Hoang', 'G', 'Huong', '1992-01-18', 'huonghoang@outlook.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Vu', 'C', 'Hoa', '2003-07-05', 'hoavu@gmail.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Dang', 'N', 'Nga', '2006-10-31', 'ngadang@yahoo.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Ho', 'C', 'Thao', '2002-04-08', 'thaoho@gmail.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Nguyen', 'Q', 'Trang', '1994-05-11', 'trangnguyen@microsoft.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Bui', 'H', 'Nga', '2013-06-06', 'ngabui@hcmut.edu.vn');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Nguyen', 'C', 'Phuong', '1986-06-21', 'phuongnguyen@hotmail.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Vu', 'T', 'Yen', '1993-07-20', 'yenvu@outlook.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Pham', '', 'Quynh', '2012-08-04', 'quynhpham@hotmail.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Ngo', 'T', 'Minh', '1998-09-28', 'minhngo@yahoo.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Tran', 'K', 'Van', '1996-12-19', 'vantran@microsoft.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Duong', 'P', 'Trang', '1988-11-06', 'trangduong@yahoo.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Le', 'D', 'Minh', '2001-12-25', 'minhle@gmail.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Le', '', 'Chau', '2016-02-02', 'chaule@microsoft.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Dinh', 'Q', 'Uyen', '1993-09-02', 'uyendinh@microsoft.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Hoang', 'N', 'My', '2008-10-28', 'myhoang@microsoft.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Duong', 'S', 'My', '2004-05-24', 'myduong@hcmut.edu.vn');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Tran', 'V', 'Minh', '2010-06-20', 'minhtran@hotmail.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Phan', '', 'Uyen', '1999-11-22', 'uyenphan@gmail.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Phan', '', 'Khanh', '2006-11-25', 'khanhphan@microsoft.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Lam', 'K', 'Van', '2012-04-01', 'vanlam@yahoo.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Hoang', 'V', 'Bao', '2000-08-05', 'baohoang@hcmut.edu.vn');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Ho', 'K', 'Thuy', '1999-08-10', 'thuyho@yahoo.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Lam', 'N', 'Phuong', '2002-06-20', 'phuonglam@gmail.com');

INSERT INTO [User] (fname, minit, lname, bdate, email)
VALUES ('Lam', 'Y', 'Nhan', '2005-11-09', 'nhanlam@gmail.com');
GO
-- ==== Phone_number ====
-- use Assignment;
INSERT INTO Phone_number (id_user, phone_number)
VALUES (1, '0126229225');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (2, '07085363924485');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (3, '0991626830717');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (4, '01327630093895');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (5, '0366495337');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (6, '0333040461476');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (7, '0182826006775');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (8, '014472258473');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (8, '0107109652');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (9, '03249538596');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (9, '07263185765');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (10, '09045008141678');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (10, '07070986028');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (11, '0994019322792');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (12, '075590509484');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (12, '0987395609807');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (13, '0857048046068');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (13, '07057691465092');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (14, '015157514517');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (14, '038976953034');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (15, '03847586044287');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (15, '0909530085');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (16, '08931081525');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (17, '01347304269');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (18, '08983935007');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (18, '0349996538114');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (19, '0309433724110');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (20, '0796640150');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (20, '090542735516');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (21, '0364274052');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (22, '0182622981');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (22, '080192645500');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (23, '03569661580');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (23, '09370203965600');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (24, '089292757932');

INSERT INTO Phone_number (id_user, phone_number)
VALUES (25, '0344472090');
