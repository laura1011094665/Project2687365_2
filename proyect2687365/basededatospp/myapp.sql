create database myapp;
use myapp;

create table users_tbl(
      user_id int(11) auto_increment primary key,
      user_firstname varchar(50) not null,
      user_lastname varchar(50) not null,
      user_email varchar (60) not null,
      user_password varbinary (255) not null
);
alter table users_tbl modify user_password varbinary(255);

create table category(
     category_id int auto_increment primary key,
     category_name varchar(60) not null
);

create table product(
    product_id int auto_increment primary key,
    product_name varchar(50) not null,
    product_value decimal,
    category_id int references category
);

alter table product
    add constraint fk_category  foreign key(category_id) references category(category_id);


INSERT INTO myapp.users_tbl (user_id, user_firstname, user_lastname, user_email, user_password)
VALUES (2,UPPER('vanessa'), UPPER('vega'), 'lalavega160@gmail.com',
        AES_ENCRYPT('COminola123', '
$2a$12$fmV/lBINSxZPHVLjCM03K.TyekVIMjUkGwGeDpUxd29YdwUAfS3kC'));


SELECT *,
       CAST(AES_DECRYPT(user_password,
                        '$2a$12$fmV/lBINSxZPHVLjCM03K.TyekVIMjUkGwGeDpUxd29YdwUAfS3kC') AS CHAR(50))
           end_data FROM users_tbl WHERE user_id = 2;

select *from users_tbl;