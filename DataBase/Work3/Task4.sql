--Показать список продуктов (ProductID), которые имеют несколько причин списания (ScrapReasonID), 
--из таблицы Production.WorkOrder, используя SELF JOIN.
SELECT DISTINCT W2.ProductID, W2.ScrapReasonID
FROM Production.WorkOrder AS W1
INNER JOIN Production.WorkOrder AS W2
ON W1.ProductID = W2.ProductID
WHERE W1.ScrapReasonID <> W2.ScrapReasonID
ORDER BY W2.ProductID, W2.ScrapReasonID;
