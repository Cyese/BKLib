-- Ignore this
-- CREATE DATABASE Assignment;
-- use Assignment;
-- người dùng
CREATE TABLE [User]
(	
    fname		VARCHAR(15)	NOT NULL,
	minit		CHAR(1),					
	lname		VARCHAR(15)	NOT NULL,
	id	INT IDENTITY(1,1)		PRIMARY KEY,
	bdate		DATE,
	address	VARCHAR(30),
	email VARCHAR(50) CONSTRAINT ck_valid_mail CHECK (email LIKE '%_@__%.__%'),
    is_sender BIT DEFAULT 0,
    is_borrower BIT DEFAULT 0
);
    
--  số điện thoại của người dùng
CREATE TABLE Phone_number 
(
    id_user INT,
    phone_number VARCHAR(15) CONSTRAINT ck_numeric_phone CHECK (phone_number NOT LIKE '%[^0-9]%'),
    PRIMARY KEY (id_user, phone_number)
)

-- thủ thư checked
CREATE TABLE Librarian 
(
    id INT IDENTITY(1,1) PRIMARY KEY,
    fname		VARCHAR(15)	NOT NULL,
	minit		CHAR(1),					
	lname		VARCHAR(15)	NOT NULL,
    email VARCHAR(40) CONSTRAINT ck_valid_email CHECK (email LIKE '%_@__%.__%'),
    sex CHAR(1) CHECK (sex IN ('M', 'F'))
)

-- số điện thoại của thủ thư checked
CREATE TABLE Phone_number_librarian 
(
    id_librarian INT,
    phone_number VARCHAR(15) CONSTRAINT ck_num_phone CHECK (phone_number NOT LIKE '%[^0-9]%'),
    PRIMARY KEY (id_librarian, phone_number)
)

-- chi nhánh checked
CREATE TABLE Branch 
(
    name VARCHAR(15)	NOT NULL,
	id		INT IDENTITY(1,1)		PRIMARY KEY,
	address	VARCHAR(100),
    id_librarian INT
)

-- sách
CREATE TABLE Book 
(
    id INT IDENTITY(1,1),
    id_branch INT,
    status VARCHAR(15) CHECK (status IN ('unavailable', 'available')),
    publish INT,
    id_book_title INT NOT NULL,
    PRIMARY KEY (id,id_branch)
)

-- tựa sách
CREATE TABLE Book_title
(
    id	INT IDENTITY(1,1) PRIMARY KEY ,
    author	VARCHAR(40) NOT NULL,
    total_book INT DEFAULT 0,
    book_title_name VARCHAR(40) NOT NULL,
    min_age INT CHECK (min_age > 0) DEFAULT 13,
)

-- danh mục
CREATE TABLE Category
(
    name VARCHAR(40) PRIMARY KEY,
)

-- thuộc về
CREATE TABLE Belongto_category
(
    name_category VARCHAR(40),
    id_book INT,
    PRIMARY KEY (name_category,id_book)
)

-- đơn thanh toán điểm
CREATE TABLE Point_payment
(
    id INT IDENTITY(1,1),
    id_user INT,
    point INT NOT NULL,
    date DATE,
    PRIMARY KEY (id,id_user),
)

-- mượn sách
CREATE TABLE Borrow_book
(
    id_borrower INT,
    id_book INT,
    id_branch INT,
    id_borrow_receipt INT,
    point_lost INT CHECK (point_lost > 0),
    PRIMARY KEY (id_borrower, id_book, id_branch, id_borrow_receipt)
)

-- trả sách
CREATE TABLE Return_book
(
    id_borrower INT,
    id_book INT,
    id_branch INT,
    id_borrow_receipt INT,
    point_penalty INT DEFAULT 0,
    date_return DATE,
    state_return VARCHAR(15),
    PRIMARY KEY (id_borrower, id_book, id_branch, id_borrow_receipt)
)

-- gửi sách
CREATE TABLE Send_book
(
    id_sender INT,
    id_book INT,
    id_branch INT,
    id_send_receipt INT,
    point_bonus INT,
    date_return DATE,
    state_return VARCHAR(15),
    PRIMARY KEY (id_sender,id_book,id_branch,id_send_receipt)
)

-- biên bản
CREATE TABLE Receipt
(
    id INT IDENTITY(1,1) PRIMARY KEY ,
    state VARCHAR(15),
    date_exported DATE NOT NULL,
    id_librarian INT,
)

-- biên nhận sách
CREATE TABLE Receipt_receive_book
(
    id INT PRIMARY KEY ,
    
)

-- biên mượn sách
CREATE TABLE Receipt_borrow_book
(
    id INT PRIMARY KEY,
    expire DATE NOT NULL,
    
)

-- phản hồi
CREATE TABLE Feedback
(
    id INT IDENTITY(1,1) PRIMARY KEY ,
    description VARCHAR(255),
    id_book_title INT NOT NULL ,
    id_user INT NOT NULL,
)

-- phản hồi feedback
CREATE TABLE Rep_feedback
(
    id INT IDENTITY(1,1) PRIMARY KEY ,
    id_feedback INT,
    
)
-- tham chiếu khóa ngoại giữa sdt và user
ALTER  TABLE Phone_number ADD CONSTRAINT fk_phn_user_id	
FOREIGN KEY (id_user) REFERENCES [User] (id)
ON DELETE CASCADE;

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

INSERT INTO Book_title (author, book_title_name)
VALUES ('Cheryl Strayed', 'Wild');

INSERT INTO Book_title (author, book_title_name)
VALUES ('J.K. Rowling', 'Harry Potter and the Philosopher''s Stone');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Eric Carle', 'The Very Hungry Caterpillar');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Maurice Sendak', 'Where the Wild Things Are');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Roald Dahl', 'Matilda');

INSERT INTO Book_title (author, book_title_name)
VALUES ('E.B. White', 'Charlotte''s Web');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Various authors', 'The Bible');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Various authors', 'The Quran');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Various authors', 'Bhagavad Gita');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Laozi', 'Tao Te Ching');

INSERT INTO Book_title (author, book_title_name)
VALUES ('Various authors', 'The Book of Mormon');

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

-- tham chiếu khóa ngoại giữa thủ thư và chi nhánh
ALTER  TABLE Branch ADD CONSTRAINT fk_bra_lib_id	
FOREIGN KEY (id_librarian) REFERENCES Librarian (id)
ON DELETE SET NULL;

-- tham chiếu khóa ngoại giữa sách và chi nhánh và sách vs tựa sách
ALTER  TABLE Book ADD 
CONSTRAINT fk_book_bra_id	
FOREIGN KEY (id_branch) REFERENCES Branch (id)
ON DELETE CASCADE,
CONSTRAINT fk_book_btl_id	
FOREIGN KEY (id_book_title) REFERENCES Book_title (id)
ON DELETE CASCADE
;

-- tham chiếu khóa ngoại giữa sdt và thủ thư
ALTER  TABLE Phone_number_librarian ADD CONSTRAINT fk_phn_lib_id	
FOREIGN KEY (id_librarian) REFERENCES Librarian (id)
ON DELETE CASCADE;

-- tham chiếu giữa belong và danh mục + belong và tựa sách
ALTER  TABLE Belongto_category ADD 
CONSTRAINT fk_bel_cat_name	
FOREIGN KEY (name_category) REFERENCES Category (name)
ON DELETE CASCADE,
CONSTRAINT fk_bel_btl_id	
FOREIGN KEY (id_book) REFERENCES Book_title (id)
ON DELETE CASCADE

-- tham chiêys giữa bảng đơn thanh toán điểm và user
ALTER  TABLE Point_payment ADD CONSTRAINT fk_pop_user_id	
FOREIGN KEY (id_user) REFERENCES [User] (id)
ON DELETE CASCADE;

-- 
-- tham chiếu giữa bảng trả sách vs user + trả sách vs sách + trả sách vs bieen muownj
ALTER  TABLE Return_book ADD 
CONSTRAINT fk_reb_user_id
FOREIGN KEY (id_borrower) REFERENCES [User] (id)
ON DELETE CASCADE,
CONSTRAINT fk_reb_book_id	
FOREIGN KEY (id_book,id_branch) REFERENCES Book (id,id_branch)
ON DELETE CASCADE,
CONSTRAINT fk_reb_rbb_idbr	
FOREIGN KEY (id_borrow_receipt) REFERENCES Receipt_borrow_book (id)
ON DELETE CASCADE;

-- tham chiếu giữa bảng mượn sách vs user + trả sách vs sách + trả sách vs bieen muownj
ALTER  TABLE Borrow_book ADD 
CONSTRAINT fk_brb_user_id
FOREIGN KEY (id_borrower) REFERENCES [User] (id)
ON DELETE CASCADE,
CONSTRAINT fk_brb_book_idbo	
FOREIGN KEY (id_book,id_branch) REFERENCES Book (id,id_branch)
ON DELETE CASCADE,
CONSTRAINT fk_brb_rbb_idbr	
FOREIGN KEY (id_borrow_receipt) REFERENCES Receipt_borrow_book (id)
ON DELETE CASCADE;

-- tham chiếu giữa bảng gửi sách vs user + trả sách vs sách + trả sách vs bieen muownj
ALTER  TABLE send_book ADD 
CONSTRAINT fk_seb_user_id
FOREIGN KEY (id_sender) REFERENCES [User] (id)
ON DELETE CASCADE,
CONSTRAINT fk_seb_book_idbo	
FOREIGN KEY (id_book,id_branch) REFERENCES Book (id,id_branch)
ON DELETE CASCADE,
CONSTRAINT fk_seb_rbb_idbr	
FOREIGN KEY (id_send_receipt) REFERENCES Receipt_receive_book (id)
ON DELETE CASCADE;

-- tham chiếu giữa bảng biên nhận và bảng thủ thư
ALTER  TABLE Receipt ADD CONSTRAINT fk_rec_lib_id	
FOREIGN KEY (id_librarian) REFERENCES Librarian (id)
ON DELETE CASCADE;

-- tham chiếu biên nhận sách và biên nhận
ALTER  TABLE Receipt_receive_book ADD CONSTRAINT fk_rcb_rec_id	
FOREIGN KEY (id) REFERENCES Receipt (id)
ON DELETE CASCADE;

-- tham chiếu giữa biên mượn sách và biên nhận
ALTER  TABLE Receipt_borrow_book ADD CONSTRAINT fk_rbb_rec_id	
FOREIGN KEY (id) REFERENCES Receipt (id)
ON DELETE CASCADE;

-- tham chiêys giữa feedback và user + feedback và tựa sách
ALTER  TABLE Feedback ADD 
CONSTRAINT fk_fee_user_id	
FOREIGN KEY (id_user) REFERENCES [User] (id),
CONSTRAINT fk_fee_bot_id	
FOREIGN KEY (id_book_title) REFERENCES Book_title (id)
;

-- tham chiếu giữa bảng feedback và bảng rep_feedback
ALTER  TABLE Rep_feedback ADD 
CONSTRAINT fk_ref_fee_id	
FOREIGN KEY (id_feedback) REFERENCES Feedback (id);
