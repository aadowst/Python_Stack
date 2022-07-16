insert into dojos (name, created_at, updated_at)
values ('first', now(), now()), ('second', now(), now()), ('third', now(), now());

select * from dojos;

set sql_safe_updates = 0;
delete from dojos;

insert into dojos (name, created_at, updated_at)
values ('fourth', now(), now()), ('fifth', now(), now()), ('sixth', now(), now());

insert into ninjas (first_name, last_name, age, created_at, updated_at, dojo_int)
values ('alex', 'anderson', 30, now(), now(), 7), ('benny', 'bronson', 25, now(), now(), 7), ('charlie', 'chaplin', 35, now(), now(), 7);

insert into ninjas (first_name, last_name, age, created_at, updated_at, dojo_int)
values ('derek', 'danielson', 30, now(), now(), 8), ('eduardo', 'engle', 25, now(), now(), 8), ('francois', 'fudge', 35, now(), now(), 8);

insert into ninjas (first_name, last_name, age, created_at, updated_at, dojo_int)
values ('geralt', 'griffin', 30, now(), now(), 9), ('henry', 'huevo', 25, now(), now(), 9), ('issac', 'iverson', 35, now(), now(), 9);

select * from ninjas
where ninjas.dojo_int = 7;

select * from ninjas
where ninjas.dojo_int = 9;

select name from dojos
join ninjas
on dojos.int = ninjas.dojo_int
where ninjas.id = 9;

