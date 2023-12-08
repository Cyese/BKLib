use Assignment;
GO
-- ==== Librarian ====
INSERT INTO Librarian (fname, minit, lname, email, sex)
VALUES ('Vu', 'S', 'Trang', 'vustrang@outlook.com', 'F'),
        ('Hoang', 'G', 'Giang', 'hoangggiang@hotmail.com', 'M'),	
        ('Bui', 'V', 'Van', 'buivvan@hcmut.edu.vn', 'M'),
        ('Vu', 'D', 'Thao', 'vudthao@hcmut.edu.vn', 'F'),
        ('Tran', 'D', 'Yen', 'trandyen@yahoo.com', 'M');
GO
INSERT INTO Phone_number_librarian
VALUES ( 1 , '0937572420'),
		( 2 , '01415996136'),
		( 3 , '0808426769237'),
		( 4 , '032988556289'),
		( 5 , '0348402223'),
		( 1 , '070287360678'),
		( 4 , '0894621071');
-- ==== Branch ====
GO
INSERT INTO Branch (name, address, id_librarian)
VALUES 	('Ho Chi Minh',  '18 Cach mang thang 8, Quan 1, TP Ho Chi Minh', 1),
		('Da Nang',  '2 Thang 9, Hai Chau, Da Nang', 2),
		('Ha Noi', '18 Nguyen Du, Hai Ba Trung, Ha Noi', 3),
		('Hue', '1 Le Loi, Hue', 4),
		('Nha Trang', '2 Nguyen Thien Thuat, Nha Trang', 5);
GO
-- ==== Book ====
INSERT INTO Category (name)
VALUES 	('Khoa hoc vien tieuong'), 
		('Fantasy'),
		('Lang man'),
		('Lich su'),
		('Kinh di'),
		('Kich tinh'),
		('Bi an'),
		('Trinh tham'),
		('Tieu su'),
		('Self-help'),
		('Suc khoe'),
		('Huong dan'),
		('Du lich'),
		('Tre em'),
		('Ton giao'),
		('Khoa hoc');
GO
-- ==== BookTitle ====
INSERT INTO Book_title (author, book_title_name)
VALUES 
	('Frank Herbert', 'Dune'),
	('Orson Scott Card', 'Ender''s Game'),
	('William Gibson', 'Neuromancer'),
	('Ursula K. Le Guin', 'The Left Hand of Darkness'),
	('Neal Stephenson', 'Snow Crash'),
	('J.R.R. Tolkien', 'The Hobbit'),
	('J.K. Rowling', 'Harry Potter and the Sorcerer''s Stone'),
	('George R.R. Martin', 'A Game of Thrones'),
	('Patrick Rothfuss', 'The Name of the Wind'),
	('J.R.R. Tolkien', 'The Fellowship of the Ring'),
	('Jane Austen', 'Pride and Prejudice'),
	('Diana Gabaldon', 'Outlander'),
	('Nicholas Sparks', 'The Notebook'),
	('Jojo Moyes', 'Me Before You'),
	('Gail Honeyman', 'Eleanor Oliphant Is Completely Fine'),
	('Markus Zusak', 'The Book Thief'),
	('Anthony Doerr', 'All the Light We Cannot See'),
	('Kristin Hannah', 'The Nightingale'),
	('Ken Follett', 'The Pillars of the Earth'),
	('Hilary Mantel', 'Wolf Hall'),
	('Stephen King', 'The Shining'),
	('Stephen King', 'It'),
	('William Peter Blatty', 'The Exorcist'),
	('Bram Stoker', 'Dracula'),
	('Josh Malerman', 'Bird Box'),
	('Stieg Larsson', 'The Girl with the Dragon Tattoo'),
	('Gillian Flynn', 'Gone Girl'),
	('Dan Brown', 'The Da Vinci Code'),
	('Thomas Harris', 'The Silence of the Lambs'),
	('Paula Hawkins', 'The Girl on the Train'),
	('Arthur Conan Doyle', 'The Hound of the Baskervilles'),
	('Tana French', 'In the Woods'),
	('Liane Moriarty', 'Big Little Lies'),
	('Carlos Ruiz Zafón', 'The Shadow of the Wind'),
	('Dennis Lehane', 'Gone Baby Gone'),
	('Agatha Christie', 'Murder on the Orient Express'),
	('Alexander McCall Smith', 'The No. 1 Ladies'' Detective Agency'),
	('Robert Galbraith', 'The Cuckoo''s Calling'),
	('Michael Connelly', 'The Poet'),
	('Dashiell Hammett', 'The Maltese Falcon'),
	('Walter Isaacson', 'Steve Jobs'),
	('Anne Frank', 'The Diary of a Young Girl'),
	('Laura Hillenbrand', 'Unbroken'),
	('Rebecca Skloot', 'The Immortal Life of Henrietta Lacks'),
	('Jeannette Walls', 'The Glass Castle'),
	('Stephen R. Covey', 'The 7 Habits of Highly Effective People'),
	('Dale Carnegie', 'How to Win Friends and Influence People'),
	('James Clear', 'Atomic Habits'),
	('Eckhart Tolle', 'The Power of Now'),
	('Jen Sincero', 'You Are a Badass'),
	('Jon Krakauer', 'Into the Wild'),
	('Elizabeth Gilbert', 'Eat, Pray, Love'),
	('Bill Bryson', 'In a Sunburned Country'),
	('Bill Bryson', 'A Walk in the Woods'),
	('Cheryl Strayed', 'Wild'),
	('J.K. Rowling', 'Harry Potter and the Philosopher''s Stone'),
	('Eric Carle', 'The Very Hungry Caterpillar'),
	('Maurice Sendak', 'Where the Wild Things Are'),
	('Roald Dahl', 'Matilda'),
	('E.B. White', 'Charlotte''s Web'),
	('Various authors', 'The Bible'),
	('Various authors', 'The Quran'),
	('Various authors', 'Bhagavad Gita'),
	('Laozi', 'Tao Te Ching'),
	('Various authors', 'The Book of Mormon'),
	('Stephen Hawking', 'A Brief History of Time'),
	('Yuval Noah Harari',  'A Brief History of Humankind'),
	('Richard Dawkins', 'The Selfish Gene'),
	('Carl Sagan', 'Cosmos'),
	('Brian Greene', 'The Elegant Universe');
GO 

-- ==== Belongto_category ====
-- use Assignment;
INSERT INTO Belongto_category (id_book, name_category)
VALUES (1, 'Khoa hoc vien tieuong');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (2, 'Khoa hoc vien tieuong');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (3, 'Khoa hoc vien tieuong');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (4, 'Khoa hoc vien tieuong');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (5, 'Khoa hoc vien tieuong');
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
VALUES (61, 'Ton giao');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (62, 'Ton giao');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (63, 'Ton giao');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (64, 'Ton giao');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (65, 'Ton giao');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (66, 'Khoa hoc');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (67, 'Khoa hoc');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (68, 'Khoa hoc');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (69, 'Khoa hoc');
INSERT INTO Belongto_category (id_book, name_category)
VALUES (70, 'Khoa hoc');
-- ==== User ====