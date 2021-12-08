--Показать список причин списания (ScrapReasonID), которые имеют несколько продуктов (ProductID), 
--из таблицы Production.WorkOrder, используя SELF JOIN.
SELECT DISTINCT W2.ScrapReasonID, W2.ProductID
FROM Production.WorkOrder AS W1
INNER JOIN Production.WorkOrder AS W2
ON W1.ScrapReasonID = W2.ScrapReasonID
WHERE W1.ProductID <> W2.ProductID
ORDER BY W2.ScrapReasonID, W2.ProductID;