﻿--PERSON
INSERT INTO Person (FullName, PhoneNumber) VALUES
	('Губанова Дарья Дмитриевна', '89201473971'),
	('Киреева Анна Марковна', '89104445501'),
	('Пантелеева Валерия Егоровна', '89626991262'),
	('Сальникова Кира Вадимовна', '89261703708'),
	('Крылов Олег Степанович', '89201356864 '),
	('Новиков Дмитрий Михайлович', '89852133194'),
	('Акимов Марк Робертович', '89164796307'),
	('Громов Иван Георгиевич', '89265656522'),
	('Дмитриев Павел Владимирович', '89627181595'),
	('Ильин Александр Артёмович', '89201630213'),
	('Фадеев Максим Алексеевич', '89855885559'),
	('Федосеев Артём Семёнович', '89162218129');

--ROLE
INSERT INTO [Role] (RoleName) VALUES
	('Покупатель'),
	('Курьер');
--Покупатель (1, 2, 3 , 4 , 5, 7, 8, 10, 11)
--Курьер (6, 9, 12)

--PERSONROLE
INSERT INTO PersonRole (PersonID, RoleID) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 2),
	(7, 1),
	(8, 1),
	(9, 2),
	(10, 1),
	(11, 1),
	(12, 2);

--PRODUCT
INSERT INTO Product (MenuName, Price) VALUES
	('Пицца Пепперони', 649),--1
	('Пицца Маргарита', 549),--2
	('Пицца Ветчина и грибы', 549),--3
	('Пицца Гавайская', 649),--4
	('Салат Цезарь', 199),--5
	('Паста Карбонара', 269),--6
	('Паста Цыпленок и грибы', 269),--7
	('Чизкейк Нью-Йорк', 129),--8
	('Вишневый пирог', 169),--9
	('Шоколадный молочный коктель', 169),--10
	('Ванильный молочный коктель', 159),--11
	('Клубничный молочный коктель', 169),--12
	('Coca-Cola', 99),--13
	('Sprite', 99),--14
	('BonAqua негазированная', 69);--15

--ORDER
INSERT INTO [Order] (CustomerID, CourierID, [Address], GetTime, DeliveryTime) VALUES
	(1, 6, 'ул. Бориса Галушкина, д. 18, кв. 34', '08:43:54', '09:23:32'),
	(2, 9, 'ул. Сущевская, д. 29, кв. 73', '09:01:15', '09:56:43'),
	(3, 6, 'ул. Космонавтов, д. 14, кв. 62', '10:35:24', '11:16:46'),
	(4, 9, 'ул. Палиха, д. 9, кв. 46', '10:53:23', '11:28:41'),
	(5, 12, 'ул. Верхняя Красносельская, д. 11а, кв. 110', '11:14:53', '11:53:36'),
	(7, 6, 'ул. Ярославская, д. 10 к1, кв. 12', '12:21:42', '13:02:45'),
	(8, 9, 'ул. Тихвинская, д. 4, кв. 191', '12:46:31', '13:30:54'),
	(10, 12, 'ул. Верхняя Красносельская, д. 10, кв. 55', '14:56:43', '15:40:32'),
	(11, 12, 'ул. Лобачика, д. 11', '16:08:03', '16:56:42');

--ORDERPRODUCT
INSERT INTO OrderProduct (OrderID, ProductID) VALUES
	(1, 1),
	(1, 4),
	(1, 11),
	(1, 11),
	(2, 2),
	(2, 5),
	(2, 14),
	(3, 6),
	(3, 7),
	(3, 8),
	(3, 13),
	(3, 15),
	(4, 1),
	(4, 3),
	(4, 6),
	(4, 9),
	(5, 3),
	(5, 10),
	(6, 6),
	(6, 9),
	(6, 12),
	(7, 1),
	(7, 2),
	(8, 7),
	(8, 14),
	(9, 3),
	(9, 4),
	(9, 10),
	(9, 13);