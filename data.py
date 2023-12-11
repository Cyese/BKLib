import random
from datetime import datetime, timedelta, date
fname = ['Nguyen', 'Tran', 'Pham', 'Lam', 'Dang', 'Le', 'Vu', 'Phan', 'Do', 'Bui', 'Hoang', 'Ngo', 'Duong', 'Ly', 'Phung', 'Ho','Dinh']
minit = ['B', 'C', 'D', 'H', 'G', 'K', 'L', 'M', 'N', 'P', 'Q', 'S', 'T', 'V','Y', '']
lname = ['Anh', 'Bao', 'Chau', 'Dung', 'Giang', 'Hai', 'Hoa', 'Huong', 'Huyen', 'Khanh', 'Lan', 'Linh', 'Loan', 'Mai', 'Minh', 'My', 'Nga', 'Nhan', 'Nhi', 'Nhung', 'Phuong', 'Quynh', 'Thao', 'Thuy', 'Tien', 'Trang', 'Trinh', 'Truc', 'Trung', 'Tuyet', 'Uyen', 'Van', 'Yen']
sex = ['M', 'F']
domain = ['gmail.com', 'yahoo.com', 'outlook.com', 'hotmail.com', 'hcmut.edu.vn', 'microsoft.com']



def gen_email(fname, minit, lname):
    return fname.lower() + minit.lower() + lname.lower() + '@' + random.choice(domain)

def gen_librarian():
    # Data format : Librarian : (fname, minit, lname, email,sex)
    firstname, middle, lastname= random.choice(fname), random.choice(minit), random.choice(lname)
    email = gen_email(firstname, middle, lastname)
    gender = random.choice(sex)
    return (firstname, middle, lastname, email, gender)


def phone_number():
    return '0' + random.choice(['1','3', '7', '8', '9']) + ''.join(random.choice('0123456789') for i in range(random.randint(8,12)))

def gen_lib_phone():
    for i in range(5):
        for _ in range(random.randint(0,1)):
            print(f"( {i+1} , '{phone_number()}'),")

def gen_branch():
    # Format: (branch_name, branch_id, branch_address, librarin_id)
    name = ["Ho Chi Minh", "Da Nang", "Ha Noi", "Hue", "Nha Trang"]
    address = ["18 Cach Mang Thang 8, Ben Thanh, District 1, Ho Chi Minh City",\
               "2 Thang 9, Hai Chau, Da Nang",
                "18 Nguyen Du, Hai Ba Trung, Ha Noi",
                "1 Le Loi, Hue",
                "2 Nguyen Thien Thuat, Nha Trang"]
    for i in range(5):
        print(f"('{name[i]}', {i+1}, '{address[i]}', {i + 1}),")

book_title = [('Frank Herbert', 'Dune'),
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
	('Stephen Hawking', 'A Brief History of Time'),
	('Yuval Noah Harari',  'A Brief History of Humankind'),
	('Richard Dawkins', 'The Selfish Gene'),
	('Carl Sagan', 'Cosmos'),
	('Brian Greene', 'The Elegant Universe')]

genre = ['Khoa hoc vien tuong', 'Fantasy', 'Lang man', 'Lich su', 'Kinh di', 'Kich tinh', 
         'Bi an', 'Trinh tham','Tieu su', 'Self-help', 'Du lich', 'Tre em', 'Ton giao', 'Khoa hoc']

# print(len(book_title), len(genre))

def mapTitleGenre():
    for i, _ in enumerate(book_title):
        print(f"({i+1}, '{genre[i//5]}'),")

# mapTitleGenre()


	
def gen_birthdate():
	start_date = datetime(1980, 1, 1)
	end_date = datetime.now() - timedelta(days=365*5)  # Assuming minimum age of 18

	birthdate = start_date + random.random() * (end_date - start_date)
	birthdate_str = birthdate.strftime("%Y-%m-%d")
	return birthdate, birthdate_str
	
def genUserList():
	ratio = [0, 0 ,0, 0]    
	def genUser():
		# Format (fname, minit, lname, bdate, address, email)
		firstname, middle, lastname= random.choice(fname), random.choice(minit), random.choice(lname)
		birthdate, str = gen_birthdate()
		age = calculate_age(birthdate)
		# print(f"{str}, {age}")
		
		if age < 12:
			ratio[0] += 1
		elif age < 18:
			ratio[1] += 1
		elif age < 30:
			ratio[2] += 1
		else:
			ratio[3] += 1
		email = gen_email(lastname, '', firstname)
		return (firstname, middle, lastname, str, email)
	with open('user.txt', 'w+') as file:
		data = [f"{genUser()}," for _ in range(25)]
		file.writelines('\n'.join(data))

	sumratio = sum(ratio)
	for i in range(len(ratio)):
		ratio[i] /= sumratio
	print(ratio)

def genUserPhone():
	for i in range(25):
		print(f"({i+1}, '{phone_number()}'),")
		for _ in range(random.randint(0,1)): print(f"({i+1}, '{phone_number()}'),") 


def calculate_age(birthdate):
	today = date.today()
	age = today.year - birthdate.year - ((today.month, today.day) < (birthdate.month, birthdate.day))
	return age


def book_copies():
    print('[')
    for i in range(70):

        print(f"({i+1}, {random.randint(1, 2)}),")
    print(']')

numberofbook= [
(1, 2),
(2, 1),
(3, 2),
(4, 1),
(5, 2),
(6, 2),
(7, 1),
(8, 2),
(9, 1),
(10, 2),
(11, 2),
(12, 1),
(13, 2),
(14, 2),
(15, 1),
(16, 2),
(17, 1),
(18, 2),
(19, 1),
(20, 2),
(21, 2),
(22, 1),
(23, 2),
(24, 2),
(25, 1),
(26, 2),
(27, 2),
(28, 2),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 1),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 1),
(44, 2),
(45, 2),
(46, 1),
(47, 1),
(48, 1),
(49, 2),
(50, 2),
(51, 2),
(52, 1),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 1),
(59, 1),
(60, 2),
(61, 2),
(62, 2),
(63, 1),
(64, 2),
(65, 2)
]	
publish_year = [1965,
1985,
1984,
1969,
1992,
1937,
1997,
1996,
2007,
1954,
1813,
1991,
1996,
2012,
2017,
2005,
2014,
2015,
1989,
2009,
1977,
1986,
1971,
1897,
2014,
2005,
2012,
2003,
1988,
2015,
1902,
2007,
2014,
2001,
1998,
1934,
1998,
2013,
1996,
1930,
2011,
1947,
2010,
2010,
2005,
1989,
1936,
2018,
1997,
2013,
1996,
2006,
2000,
1998,
2012,
1997,
1969,
1963,
1988,
1952,
1988,
2014,
1976,
1980,
1999]

def gen_receipt():
    total_receipt = sum([_[1] for _ in numberofbook])
    # Format: (status, date_exported, librarian_id)
    status = ['hu_hong_nhe', 'nguyen_ven']
    date_exported = ['2023-11-01', '2023-11-02', '2023-11-03', '2023-11-04', '2023-11-05', '2023-11-06', '2023-11-07']
    for i in range(total_receipt): 
        print(f"('{random.choice(status)}', '{random.choice(date_exported)}', {random.randint(1, 5)}),")
# print(len(publish_year)== len(book_title))
        
branch =[(1	,1),
(2	,1),
(3	,3),
(4	,4),
(5	,4),
(6	,2),
(7	,1),
(8	,1),
(9	,2),
(10	,2),
(11	,3),
(12	,2),
(13	,2),
(14	,5),
(15	,4),
(16	,4),
(17	,1),
(18	,1),
(19	,5),
(20	,4),
(21	,4),
(22	,2),
(23	,2),
(24	,5),
(25	,1),
(26	,1),
(27	,2),
(28	,1),
(29	,1),
(30	,3),
(31	,2),
(32	,2),
(33	,2),
(34	,2),
(35	,2),
(36	,5),
(37	,5),
(38	,3),
(39	,3),
(40	,3),
(41	,1),
(42	,1),
(43	,5),
(44	,5),
(45	,2),
(46	,2),
(47	,2),
(48	,3),
(49	,2),
(50	,5),
(51	,4),
(52	,4),
(53	,1),
(54	,1),
(55	,4),
(56	,4),
(57	,1),
(58	,1),
(59	,1),
(60	,1),
(61	,1),
(62	,1),
(63	,1),
(64	,4),
(65	,4),
(66	,3),
(67	,3),
(68	,3),
(69	,3),
(70	,1),
(71	,5),
(72	,5),
(73	,3),
(74	,3),
(75	,1),
(76	,3),
(77	,1),
(78	,3),
(79	,3),
(80	,4),
(81	,4),
(82	,5),
(83	,5),
(84	,2),
(85	,3),
(86	,3),
(87	,5),
(88	,5),
(89	,3),
(90	,3),
(91	,2),
(92	,2),
(93	,3),
(94	,3),
(95	,5),
(96	,2),
(97	,2),
(98	,2),
(99	,1),
(100 ,1),
(101	,3),
(102	,3),
(103	,5),
(104	,1),
(105	,1),
(106	,2),
(107	,2)]
def gen_book():
	# Format: (id_branch, status, publish_year, id_book_title)
	for i, book in enumerate(numberofbook):
		for _ in range(book[1]):
			print(f"({branch[i]}, 'available', {publish_year[i]}, {book[0]}),")

# gen_book()
def gen_sendbook():
	# Format: (id_sender, id_book, id_branch, id_sendreceipt, bonuspoint)
	for id, id_branch in branch:
		print(f"({random.randint(1,25)}, {id}, {id_branch}, {id}, 10),")

def pointpayment():
	pointlist = [10, 10, 10, 10, 10, 20,20,  50 ,100]
	for i in range(25):
		for x in range(random.choice([0, 0, 0, 0 ,0 , 1, 1])):
			datemake = [f"'2023-12-{random.randint(1, 12)}'" for _ in range(5)]
			point = random.choice(pointlist)
			print(f"({i+1}, {point}), {random.choice(datemake)}),")
# pointpayment()
