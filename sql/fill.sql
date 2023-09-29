--Заполнение таблицы Post
INSERT INTO Post(id,title) VALUES (1,"Директор");
INSERT INTO Post(id,title) VALUES (2,"Заместитель директора");
INSERT INTO Post(id,title) VALUES (3,"Менеджер по продажам");
INSERT INTO Post(id,title) VALUES (4,"Нефтяник");
INSERT INTO Post(id,title) VALUES (5,"Газовик");
INSERT INTO Post(id,title) VALUES (6,"Бурильщик");

--Заполнение таблицы Staff
INSERT INTO Post(id,id_post,FIO,email,number) VALUES (1,1,"Колесников Дмитрий Анатольевич","dimka228@gmail.com","+7942492942");
INSERT INTO Post(id,id_post,FIO,email,number) VALUES (2,2,"Колесников Владимир Дмитриевич","vlad04ka@gmail.com","+7956923459");
INSERT INTO Post(id,id_post,FIO,email,number) VALUES (3,3,"Кабордина Дарья Александровна","darkan242@gmail.com","+7994053345");
INSERT INTO Post(id,id_post,FIO,email,number) VALUES (4,4,"Глушко Виктор Петрович","Vi134@gmail.com","+7945908448");
INSERT INTO Post(id,id_post,FIO,email,number) VALUES (5,5,"Плещенко Эдуард Федор","Adik213@gmail.com","+7978959504");
INSERT INTO Post(id,id_post,FIO,email,number) VALUES (6,6,"Кабордин Александр Витальевич","Аlik523@gmail.com","+7935356765");

--Заполнение таблицы Projects
INSERT INTO Post(id,id_staff,project_title,mining_location) VALUES (1,4,"OIL BURING", "республика Татарстан");
INSERT INTO Post(id,id_staff,project_title,mining_location) VALUES (2,6,"OIL BURING", "республика Татарстан");
INSERT INTO Post(id,id_staff,project_title,mining_location) VALUES (3,5,"GAS AS", "Астраханская область");
INSERT INTO Post(id,id_staff,project_title,mining_location) VALUES (4,6,"GAS AS", "Астраханская область");

--Заполнение таблицы Type_warehouse
INSERT INTO Post(id,title) VALUES (1,"Нефтяной");
INSERT INTO Post(id,title) VALUES (2,"Газовый");

--Заполнение таблицы Warehouse
