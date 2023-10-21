
INSERT INTO Post(id,title) VALUES (1,"Директор");
INSERT INTO Post(id,title) VALUES (2,"Заместитель директора");
INSERT INTO Post(id,title) VALUES (3,"Менеджер по продажам");
INSERT INTO Post(id,title) VALUES (4,"Нефтяник");
INSERT INTO Post(id,title) VALUES (5,"Газовик");
INSERT INTO Post(id,title) VALUES (6,"Бурильщик");

INSERT INTO Staff(id,id_post,FIO,email,number) VALUES (1,1,"Колесников Дмитрий Анатольевич","dimka228@gmail.com","+7942492942");
INSERT INTO Staff(id,id_post,FIO,email,number) VALUES (2,2,"Колесников Владимир Дмитриевич","vlad04ka@gmail.com","+7956923459");
INSERT INTO Staff(id,id_post,FIO,email,number) VALUES (3,3,"Кабордина Дарья Александровна","darkan242@gmail.com","+7994053345");
INSERT INTO Staff(id,id_post,FIO,email,number) VALUES (4,4,"Глушко Виктор Петрович","Vi134@gmail.com","+7945908448");
INSERT INTO Staff(id,id_post,FIO,email,number) VALUES (5,5,"Плещенко Эдуард Федор","Adik213@gmail.com","+7978959504");
INSERT INTO Staff(id,id_post,FIO,email,number) VALUES (6,6,"Кабордин Александр Витальевич","Аlik523@gmail.com","+7935356765");


INSERT INTO Projects(id,id_staff,project_title,mining_location) VALUES (1,4,"OIL BURING", "Самотлорское");
INSERT INTO Projects(id,id_staff,project_title,mining_location) VALUES (2,6,"OIL BURING 2", "Сахалин-5");
INSERT INTO Projects(id,id_staff,project_title,mining_location) VALUES (3,5,"GAS AS", "Астраханская область");
INSERT INTO Projects(id,id_staff,project_title,mining_location) VALUES (4,6,"GAS AS 2", "Иркутская область");


INSERT INTO Type_warehouse(id,title) VALUES (1,"Нефтяной");
INSERT INTO Type_warehouse(id,title) VALUES (2,"Газовый");


INSERT INTO Resource_received(id,id_projects,data,resources,quantity) VALUES (1,1,'2019-6-12',"Oil",10);
INSERT INTO Resource_received(id,id_projects,data,resources,quantity) VALUES (2,1,'2019-6-28',"Oil",8);
INSERT INTO Resource_received(id,id_projects,data,resources,quantity) VALUES (3,1,'2018-7-13',"Gas",5);
INSERT INTO Resource_received(id,id_projects,data,resources,quantity) VALUES (4,1,'2019-7-26',"Gas",6);


INSERT INTO Warehouse(id,id_type,id_resource,address) VALUES (1,1,1,"г. Пенза, Байдукова, 67");
INSERT INTO Warehouse(id,id_type,id_resource,address) VALUES (2,1,2,"г. Ярославль, Тормозное шоссе, 93");
INSERT INTO Warehouse(id,id_type,id_resource,address) VALUES (3,2,3,"г. Санкт-Петербург, проспект Московский, 139");
INSERT INTO Warehouse(id,id_type,id_resource,address) VALUES (4,2,4,"г. Калининград, пл. Победы 10");


INSERT INTO Type_transport(id,title) VALUES (1,"Железнодорожный");
INSERT INTO Type_transport(id,title) VALUES (2,"Водный");
INSERT INTO Type_transport(id,title) VALUES (3,"Трубопроводный");


INSERT INTO Transport(id,id_type,title) VALUES (1,1,"Поезд с цистернами");
INSERT INTO Transport(id,id_type,title) VALUES (2,2,"Танкер «МЕНДЕЛЕЕВ ПРОСПЕКТ»");
INSERT INTO Transport(id,id_type,title) VALUES (3,2,"Танкер «SEASHARK»");
INSERT INTO Transport(id,id_type,title) VALUES (4,3,"Труба");


INSERT INTO Users(id,nickname,login,password,number) VALUES (1,"Luckolut","Luckolut","kajfjfkd221","+7924578282");
INSERT INTO Users(id,nickname,login,password,number) VALUES (2,"Magnat","Magnat","gjasj2452kg","+7988492391");
INSERT INTO Users(id,nickname,login,password,number) VALUES (3,"GASOIL","GASOIL","gkasafkf532","+7990859323");

INSERT INTO orders(id,id_warehouse,id_user,quantity_resources) VALUES (1,4,1,2);
INSERT INTO orders(id,id_warehouse,id_user,quantity_resources) VALUES (2,1,2,6);


INSERT INTO Delivery(id,id_order,id_transport,address_delivery) VALUES (1,1,2,"Республика Башкортостан, г. Кумертау, а/я 33");
INSERT INTO Delivery(id,id_order,id_transport,address_delivery) VALUES (2,2,1,"г. Екатеринбург, улица Горького, 65");


INSERT INTO Capital(id,id_delivery,id_project,income,expenses) VALUES (1,1,1,800000,500000);
INSERT INTO Capital(id,id_delivery,id_project,income,expenses) VALUES (2,2,4,1000000,800000);