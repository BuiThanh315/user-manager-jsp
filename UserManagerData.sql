create database demo;
use demo; 
create table users ( 
	id int(3) auto_increment not null primary key, 
	name varchar(120) not null, 
	email varchar(220) not null, 
	country varchar(120)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');

TRUNCATE TABLE users;

insert into users (name, email, country) values
('Bui Hoang Thanh', 'thanh.bui@example.com', 'Viet Nam'),
('Phan Van Luan', 'luan.phan@example.com', 'Viet Nam'),
('Nguyen An', 'an.nguyen@example.com', 'Viet Nam'),
('John Doe', 'john.doe@example.com', 'USA'),
('Alice Smith', 'alice.smith@example.com', 'United Kingdom'),
('Takashi Murakami', 'takashi@example.com', 'Japan'),
('Tran Quoc Toan', 'toan.tran@example.com', 'Viet Nam'),
('Bob Marley', 'bob.marley@example.com', 'Jamaica'),
('David Beckham', 'david.b@example.com', 'United Kingdom'),
('Nguyen Minh Tam', 'tam.nguyen@example.com', 'Viet Nam');

DELIMITER $$
create procedure get_user_by_id(in user_id int)
begin
 select users.name, users.email, users.country
 from users
 where users.id = user_id;
 end$$
DELIMITER ;

DELIMITER $$
create procedure insert_user(in user_name varchar(50),in user_email varchar(50),in user_country varchar(50))
begin
 insert into users(name, email, country) values(user_name, user_email, user_country);
 end$$
DELIMITER ;

create table Permision(
	id int(11) primary key,
	name varchar(50)
);

create table User_Permision(
	permision_id int(11),
	user_id int(11)
);

insert into Permision(id, name) values(1, 'add');

insert into Permision(id, name) values(2, 'edit');

insert into Permision(id, name) values(3, 'delete');

insert into Permision(id, name) values(4, 'view');

create table Employee ( 
	id int(3) auto_increment not null primary key, 
	name varchar(120) not null , 
	salary int(220) not null, 
	created_Date datetime
);