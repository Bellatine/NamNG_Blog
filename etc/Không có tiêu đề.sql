CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
	fullname VARCHAR(255) NOT NULL,
    timecreate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status int DEFAULT 1,
    email VARCHAR(255) NOT NULL
);


insert into users(username, password,fullname,email) values('namng','123','Nguyen Giang Nam','nam.ng205103@sis.hust.edu.vn');
insert into users(username, password,fullname,email) values('abc','abc','Nguyen Giang Nam','nam.ng205103@sis.hust.edu.vn');
insert into users(username, password,fullname,email) values('xyz','789','Nguyen Giang Nam','nam.ng205103@sis.hust.edu.vn');
insert into users(username, password,fullname,email) values('giangnam','0105','Nguyen Giang Nam','nam.ng205103@sis.hust.edu.vn');
insert into users(username, password,fullname,email) values('namdz','123','Nguyen Giang Nam','nam.ng205103@sis.hust.edu.vn');

select * from users where username = 'namng';