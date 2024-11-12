use books;

select * from users

select * from roles

--select * from users_roles




--select * from books

--select * from users_books


--select 
--b.title,
--u.username,
--ub.due_date,
--ub.check_in_date
--from users_books ub 
--join books b on b.book_id = ub.book_id
--join users u on u.[user_id] = ub.[user_id]
--where u.user_id = 3
--and due_date < getdate()
--and check_in_date = '1-1-1900'
