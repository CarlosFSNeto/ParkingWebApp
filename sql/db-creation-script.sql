CREATE TABLE users (
    id bigint not null primary key generated always as identity (start with 1, increment by 1),
    role varchar(200) not null,
    name varchar(200) not null,
    login varchar(20) not null,
    passwordHash bigint not null
);
insert into users values (default, 'ADMIN', 'Administrator', 'admin', 1509442);

create table prices (
    id bigint not null primary key generated always as identity (start with 1, increment by 1),
    timestamp timestamp not null,
    new_price double precision not null
);

create table parking_periods (
    id bigint not null primary key generated always as identity (start with 1, increment by 1),
    model varchar(50) not null, 
    plate varchar(7) not null,
    begin_period timestamp not null,
    end_period timestamp,
    price double precision
);