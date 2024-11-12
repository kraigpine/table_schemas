use books;

CREATE TABLE users (
    [user_id] INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,   
	dob datetime null,
	gender varchar(1) null,

    username VARCHAR(50) UNIQUE,
    INDEX IX_users_username (username)
);

CREATE TABLE roles (
    role_id INT PRIMARY KEY IDENTITY(1,1),
    role_name VARCHAR(50) unique,
	[description] varchar(200)
);





CREATE TABLE users_roles (
    [user_id] INT,
    role_id INT,
    PRIMARY KEY ([user_id], role_id),
    FOREIGN KEY ([user_id]) REFERENCES users([user_id]),
    FOREIGN KEY (role_id) REFERENCES roles(role_id)
	--,

	--UNIQUE ([user_id], role_id) -- This line adds a unique constraint
);



CREATE TABLE books (
    book_id INT PRIMARY KEY IDENTITY(1,1),
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50)
);

CREATE TABLE users_books (
    [user_id] INT,
    book_id INT,
	check_out_date Datetime,
	due_date Datetime,
	check_in_date Datetime Default '1-1-1900',
    PRIMARY KEY ([user_id], book_id),
    FOREIGN KEY ([user_id]) REFERENCES users([user_id]),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

