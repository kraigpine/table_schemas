use books;

INSERT INTO users (first_name, last_name, email, dob, gender, username)
VALUES
    ('John', 'Doe', 'johndoe@example.com', '1990-01-01', 'M', 'johndoe'),
    ('Jane', 'Smith', 'janesmith@example.com', '1992-05-15', 'F', 'janesmith'),
    ('Michael', 'Johnson', 'michaeljohnson@example.com', '1985-12-25', 'M', 'mjohnson');

INSERT INTO roles (role_name, [description])
VALUES
    ('Admin', 'Administrator role'),
    ('User', 'Standard user role'),
    ('Moderator', 'Content moderator role');





INSERT INTO users_roles ([user_id], role_id)
VALUES
  	(1, 2), -- John Doe with role User
	(2, 2), -- Jane Smith with role User
	(3, 2) -- Jane Smith with role User

INSERT INTO users_roles ([user_id], role_id)
VALUES
    (1, 1) -- John Doe with role Admin  

INSERT INTO users_roles ([user_id], role_id)
VALUES
    (3, 3); -- Michael Johnson with role Moderator



INSERT INTO books (title, author, genre)
VALUES
    ('The Lord of the Rings', 'J.R.R. Tolkien', 'Fantasy'),
    ('Pride and Prejudice', 'Jane Austen', 'Romance'),
    ('To Kill a Mockingbird', 'Harper Lee', 'Fiction');

INSERT INTO users_books ([user_id], book_id, check_out_date, due_date)
VALUES
(1, 1, '20241111', '20241125'), -- John Doe reads Lord of the Rings
(2, 2, '20241110', '20241124'), -- Jane Smith reads Pride and Prejudice
(3, 3, '20241028', '20241104'); -- Michael Johnson reads To Kill a Mockingbird