--Показать ID товаров (ProductID), имена и адреса электронных почт покупателей (ReviewerName и EmailAddress) 
--и комментарии (Comments) из таблицы Production.ProductReview, где имя покупателя начинается на 'J'.
SELECT ProductID, ReviewerName, EmailAddress, Comments
FROM Production.ProductReview
WHERE ReviewerName LIKE 'J%';