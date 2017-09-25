

create table users
(
 id int primary key AUTO_INCREMENT,
 NAME varchar(50)  NOT NULL,
 email varchar(50) UNIQUE NOT NULL,
 password varchar(50) NOT NULL,
 active tinyint(1) NOT NULL default 1,
 created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

insert into users(name,email,password) values ('Dilipan', 'udilipan@gmail.com', 'abc@123');