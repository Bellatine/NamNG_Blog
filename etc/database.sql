CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
	fullname VARCHAR(255) NOT NULL,
    timecreate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status int DEFAULT 1,
    email VARCHAR(255) NOT NULL
);

create table posts(
	id SERIAL PRIMARY KEY,
	user_id int not null,
	post_content VARCHAR(511),
	timecreate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	image VARCHAR(255)
);




insert into users(username, password,fullname,email) values('namng','123','Nguyen Giang Nam','nam.ng205103@sis.hust.edu.vn');
insert into users(username, password,fullname,email) values('abc','abc','Nguyen Giang Nam','nam.ng205103@sis.hust.edu.vn');
insert into users(username, password,fullname,email) values('xyz','789','Nguyen Giang Nam','nam.ng205103@sis.hust.edu.vn');
insert into users(username, password,fullname,email) values('giangnam','0105','Nguyen Giang Nam','nam.ng205103@sis.hust.edu.vn');
insert into users(username, password,fullname,email) values('namdz','123','Nguyen Giang Nam','nam.ng205103@sis.hust.edu.vn');

insert into posts(user_id, post_content, image) values(5, 'Vietnam sea is so beautiful', 'img-01.jpg' );
insert into posts(user_id, post_content, image) values(5, 'a nice dayy', 'about-03.jpg' );
insert into posts(user_id, post_content, image) values(5, 'she is woderful', 'comment-2.jpg' );
insert into posts(user_id, post_content, image) values(5, 'she is woderful', 'about-03.jpg' );

select * from posts where user_id = '5';




select * from users;