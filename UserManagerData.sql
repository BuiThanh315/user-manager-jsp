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

INSERT INTO users (name, email, country) VALUES
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