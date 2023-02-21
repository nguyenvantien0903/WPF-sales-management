create database SalesWPFApp
use SalesWPFApp

create table Product(
	product_id int PRIMARY KEY,
	category_id int not null,
	product_name varchar(40) not null,
	weight varchar(20) not null,
	unit_price money not null,
	unit_stock int not null
)

create table OrderDetail(
	order_id int,
	product_id int,
	unit_price money not null,
	quantity int not null,
	discount float not null,
	PRIMARY KEY(order_id, product_id)
)

create table Orders(
	order_id int PRIMARY KEY,
	member_id int not null,
	order_date datetime not null,
	required_date datetime null,
	shipped_date datetime null,
	freight money null
)

create table Memeber(
	member_id int PRIMARY KEY,
	email varchar(100) not null,
	company_name varchar(40) not null,
	city varchar(15) not null,
	country varchar(15) not null,
	password varchar(30) not null
)

insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (1, 'Bread - Raisin', 86, '9kg', '$0.98', 50);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (2, 'Wine - Cousino Macul Antiguas', 98, '7kg', '$5.31', 62);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (3, 'Sugar - Splenda Sweetener', 44, '4kg', '$6.85', 81);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (4, 'Vacuum Bags 12x16', 56, '6kg', '$2.54', 39);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (5, 'Foie Gras', 61, '5kg', '$5.93', 29);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (6, 'Rum - Cream, Amarula', 73, '0kg', '$7.80', 36);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (7, 'Longos - Cheese Tortellini', 91, '3kg', '$5.52', 2);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (8, 'Mix - Cappucino Cocktail', 26, '1kg', '$2.71', 48);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (9, 'Red Currants', 100, '4kg', '$8.01', 10);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (10, 'Longos - Lasagna Veg', 78, '2kg', '$8.83', 78);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (11, 'Sauce - Vodka Blush', 56, '8kg', '$9.64', 88);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (12, 'Foie Gras', 95, '5kg', '$8.39', 28);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (13, 'Puree - Strawberry', 19, '0kg', '$1.45', 91);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (14, 'Pepsi, 355 Ml', 96, '1kg', '$1.04', 94);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (15, 'Cake - Lemon Chiffon', 22, '1kg', '$2.70', 88);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (16, 'Flower - Leather Leaf Fern', 60, '1kg', '$6.25', 46);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (17, 'Bread - Pumpernickel', 37, '4kg', '$5.28', 70);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (18, 'Spinach - Baby', 26, '2kg', '$8.06', 54);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (19, 'Lettuce - Belgian Endive', 60, '5kg', '$7.16', 93);
insert into Product (product_id, product_name, category_id, weight, unit_price, unit_stock) values (20, 'Bread - Pain Au Liat X12', 71, '2kg', '$2.58', 31);

insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (1, 1, '$1.94', 39, 23);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (2, 2, '$5.92', 39, 10);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (3, 3, '$8.33', 58, 100);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (4, 4, '$9.72', 63, 87);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (5, 5, '$6.92', 83, 58);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (6, 6, '$5.94', 28, 73);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (7, 7, '$4.24', 22, 45);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (8, 8, '$5.95', 22, 40);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (9, 9, '$6.30', 58, 45);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (10, 10, '$5.48', 27, 32);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (11, 11, '$0.24', 96, 24);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (12, 12, '$4.80', 86, 79);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (13, 13, '$9.06', 7, 44);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (14, 14, '$7.37', 2, 96);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (15, 15, '$9.58', 29, 66);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (16, 16, '$3.17', 37, 75);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (17, 17, '$4.01', 50, 4);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (18, 18, '$1.36', 39, 35);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (19, 19, '$8.53', 33, 20);
insert into OrderDetail (order_id, product_id, unit_price, quantity, discount) values (20, 20, '$0.96', 98, 12);

insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (1, 36, '6/21/2022', '12/31/2022', '1/13/2023', '$5.45');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (2, 79, '6/12/2022', '3/7/2022', '10/15/2022', '$4.16');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (3, 24, '6/1/2022', '12/6/2022', '2/14/2022', '$7.89');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (4, 89, '12/5/2022', '4/27/2022', '5/19/2022', '$4.42');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (5, 100, '7/8/2022', '11/6/2022', '10/5/2022', '$5.55');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (6, 51, '10/27/2022', '2/16/2022', '6/7/2022', '$0.88');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (7, 21, '3/19/2022', '10/15/2022', '8/21/2022', '$4.26');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (8, 77, '7/10/2022', '7/7/2022', '8/3/2022', '$6.84');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (9, 10, '5/21/2022', '2/24/2022', '7/30/2022', '$0.62');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (10, 90, '5/22/2022', '3/23/2022', '11/25/2022', '$5.46');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (11, 1, '11/27/2022', '11/13/2022', '4/12/2022', '$9.33');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (12, 94, '1/17/2023', '7/22/2022', '6/9/2022', '$5.74');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (13, 46, '1/28/2023', '1/4/2023', '6/19/2022', '$2.73');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (14, 77, '12/6/2022', '1/29/2023', '7/12/2022', '$1.83');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (15, 2, '7/9/2022', '12/30/2022', '5/12/2022', '$1.62');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (16, 90, '12/18/2022', '6/14/2022', '1/7/2023', '$6.07');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (17, 5, '11/7/2022', '3/15/2022', '3/9/2022', '$2.05');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (18, 84, '10/2/2022', '6/5/2022', '1/22/2023', '$5.57');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (19, 35, '11/17/2022', '1/23/2023', '10/17/2022', '$6.51');
insert into Orders (order_id, member_id, order_date, required_date, shipped_date, freight) values (20, 19, '11/23/2022', '9/17/2022', '1/25/2023', '$0.01');

insert into Memeber (member_id, email, company_name, city, country, password) values (1, 'acaisley0@livejournal.com', 'Leenti', 'Mali Iđoš', 'Serbia', '9YJoJAMZu3');
insert into Memeber (member_id, email, company_name, city, country, password) values (2, 'jfinlan1@guardian.co.uk', 'Eadel', 'Castelo', 'Brazil', 'RFfdFcvdy9OG');
insert into Memeber (member_id, email, company_name, city, country, password) values (3, 'sketley2@weather.com', 'Wikido', 'Indaial', 'Brazil', '0rF431U1');
insert into Memeber (member_id, email, company_name, city, country, password) values (4, 'statlowe3@stanford.edu', 'Devcast', 'Tuguanpu', 'China', 'yCu422');
insert into Memeber (member_id, email, company_name, city, country, password) values (5, 'atynnan4@feedburner.com', 'Avavee', 'Hồ Xá', 'Vietnam', 'gqssSeb');
insert into Memeber (member_id, email, company_name, city, country, password) values (6, 'avockings5@slate.com', 'Cogidoo', 'Hostavice', 'Czech Republic', 'H8lTPTrP');
insert into Memeber (member_id, email, company_name, city, country, password) values (7, 'lgossart6@jimdo.com', 'Topicware', 'Okahandja', 'Namibia', 'bzF69b');
insert into Memeber (member_id, email, company_name, city, country, password) values (8, 'kbroomer7@bbc.co.uk', 'Shufflebeat', 'Novyye Kuz’minki', 'Russia', 'MbRML13N');
insert into Memeber (member_id, email, company_name, city, country, password) values (9, 'bfeaveryear8@cnbc.com', 'Gabspot', 'Longvic', 'France', 'uQJcIloME');
insert into Memeber (member_id, email, company_name, city, country, password) values (10, 'wgwatkin9@yolasite.com', 'Jatri', 'Shihua', 'China', 'Mxez5Y8iB');
insert into Memeber (member_id, email, company_name, city, country, password) values (11, 'idesforgesa@hexun.com', 'Feedfish', 'Žeravice', 'Czech Republic', 'tHE2KPVbfeD');
insert into Memeber (member_id, email, company_name, city, country, password) values (12, 'cmethleyb@thetimes.co.uk', 'Dazzlesphere', 'Tagog', 'Indonesia', 'YwycixMEDkjI');
insert into Memeber (member_id, email, company_name, city, country, password) values (13, 'kblickc@who.int', 'Jabberstorm', 'Brasília', 'Brazil', 'I6opVjekbWla');
insert into Memeber (member_id, email, company_name, city, country, password) values (14, 'jblackalld@cnbc.com', 'Lazzy', 'Lebak Timur', 'Indonesia', '3qV1Fu');
insert into Memeber (member_id, email, company_name, city, country, password) values (15, 'rottone@ox.ac.uk', 'Voonte', 'Zarzis', 'Tunisia', 'HD5KjxR');
insert into Memeber (member_id, email, company_name, city, country, password) values (16, 'rcleminsonf@jiathis.com', 'Aimbu', 'Providence', 'Mauritius', '2AeFoJFXFX');
insert into Memeber (member_id, email, company_name, city, country, password) values (17, 'mletteresseg@trellian.com', 'Thoughtbridge', 'Žďár nad Sázavou Druhy', 'Czech Republic', '8VXdBd');
insert into Memeber (member_id, email, company_name, city, country, password) values (18, 'abrennenstuhlh@tripadvisor.com', 'Browsezoom', 'Zábřeh', 'Czech Republic', 'fEliq6PXsiR');
insert into Memeber (member_id, email, company_name, city, country, password) values (19, 'kbathai@ibm.com', 'Fadeo', 'Lianyi', 'China', 'SmG4zjhE');
insert into Memeber (member_id, email, company_name, city, country, password) values (20, 'cgrinikhinovj@reference.com', 'Tagfeed', 'Katrineholm', 'Sweden', 'GJYOkVu');