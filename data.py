# Data format : Librarian : (fname, minit, lname, email,sex)
import random
fname = ['Nguyen', 'Tran', 'Pham', 'Lam', 'Dang', 'Le', 'Vu', 'Phan', 'Do', 'Bui', 'Hoang', 'Ngo', 'Duong', 'Ly', 'Phung', 'Ho','Dinh']
minit = ['B', 'C', 'D', 'H', 'G', 'K', 'L', 'M', 'N', 'P', 'Q', 'S', 'T', 'V','Y', '']
lname = ['Anh', 'Bao', 'Chau', 'Dung', 'Giang', 'Hai', 'Hoa', 'Huong', 'Huyen', 'Khanh', 'Lan', 'Linh', 'Loan', 'Mai', 'Minh', 'My', 'Nga', 'Nhan', 'Nhi', 'Nhung', 'Phuong', 'Quynh', 'Thao', 'Thuy', 'Tien', 'Trang', 'Trinh', 'Truc', 'Trung', 'Tuyet', 'Uyen', 'Van', 'Yen', '']
sex = ['M', 'F']
domain = ['gmail.com', 'yahoo.com', 'outlook.com', 'hotmail.com', 'hcmut.edu.vn', 'microsoft.com']



def gen_email(fname, minit, lname):
    return fname.lower() + minit.lower() + lname.lower() + '@' + random.choice(domain)

def gen_librarian():
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
	('Various authors', 'The Bible'),
	('Various authors', 'The Quran'),
	('Various authors', 'Bhagavad Gita'),
	('Laozi', 'Tao Te Ching'),
	('Various authors', 'The Book of Mormon'),
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