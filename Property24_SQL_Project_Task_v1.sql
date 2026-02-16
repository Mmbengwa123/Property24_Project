
----1. Display all properties in the database-----


SELECT * FROM [dbo].[1770794941712_property24];

----2. Show only the CITY, PROVINCE, and PROPERTY_PRICE columns.----
SELECT
CITY,
PROVINCE,
PROPERTY_PRICE
FROM [dbo].[1770794941712_property24];

----3. List all distinct provinces in the table.----

SELECT DISTINCT PROVINCE
FROM [dbo].[1770794941712_property24]
ORDER BY PROVINCE ASC;

----4. Find all properties located in Gauteng----

SELECT *
FROM [dbo].[1770794941712_property24]
WHERE PROVINCE = 'Gauteng';

----5. Show properties priced under R1,500,000----

SELECT *
FROM [dbo].[1770794941712_property24]
WHERE PROPERTY_PRICE < 1500000;

----6. List properties with more than 3 bedrooms----
SELECT *
FROM [dbo].[1770794941712_property24]
WHERE BEDROOMS > 3;

---- 7.Find properties with parking for at least 2 cars---
SELECT *
FROM [dbo].[1770794941712_property24]
WHERE parking >=2;

----8. Show properties where the monthly repayment is greater than R25,000---
SELECT *
FROM [dbo].[1770794941712_property24]
WHERE Monthly_Repayment > 25000;

---9. Show all properties ordered by property price from highest to lowest---

SELECT *
FROM [dbo].[1770794941712_property24]
ORDER BY PROPERTY_PRICE DESC;

---10. List properties ordered by floor size from smallest to largest---
SELECT *
FROM [dbo].[1770794941712_property24]
ORDER BY FLOOR_SIZE DESC;

---11. Show Gauteng properties ordered by monthly repayment.---

SELECT *
FROM [dbo].[1770794941712_property24]
WHERE PROVINCE = 'Gauteng'
ORDER BY Monthly_Repayment ASC;

---12. Find Western Cape properties priced below R3,000,000---

SELECT *
FROM [dbo].[1770794941712_property24]
WHERE PROVINCE = 'Western Cape'
AND PROPERTY_PRICE < 3000000;

---13. Show KwaZulu-Natal properties with 3 or more bedrooms.---

SELECT *
FROM [dbo].[1770794941712_property24]
WHERE PROVINCE = 'KwaZulu-Natal'
  AND BEDROOMS >= 3;

---- 14.Find properties in Limpopo or Free State ordered by property price---

SELECT *
FROM [dbo].[1770794941712_property24]
WHERE PROVINCE IN ('Limpopo', 'Free State')
ORDER BY PROPERTY_PRICE ASC;

---15. Show the 10 most expensive properties---

SELECT TOP 10 *
FROM [dbo].[1770794941712_property24]
ORDER BY PROPERTY_PRICE DESC;

---16. Show the 5 cheapest properties.---

SELECT TOP 5 *
FROM [dbo].[1770794941712_property24]
ORDER BY PROPERTY_PRICE ASC;

---17. Show the top 10 properties with the largest floor size---

SELECT TOP 10 *
FROM [dbo].[1770794941712_property24]
ORDER BY FLOOR_SIZE DESC;

---18. Which province appears to have the highest priced properties?---

SELECT PROVINCE, MAX(PROPERTY_PRICE) AS Highest_Price
FROM [dbo].[1770794941712_property24]
GROUP BY PROVINCE
ORDER BY Highest_Price DESC;

---19. Which cities appear to have the most affordable housing?---

SELECT CITY,
       AVG(CAST(PROPERTY_PRICE AS DECIMAL(18,2))) AS Average_Price
FROM [dbo].[1770794941712_property24]
GROUP BY CITY
ORDER BY Average_Price ASC;



---20. What minimum income is typically required for properties priced above R4,000,000

SELECT PROPERTY_ID,
       CITY,
       PROVINCE,
       PROPERTY_PRICE,
       Monthly_Repayment,
       CAST(Monthly_Repayment / 0.30 AS DECIMAL(18,2)) AS Min_Required_Income
FROM [dbo].[1770794941712_property24]
WHERE PROPERTY_PRICE > 4000000
ORDER BY Min_Required_Income DESC;









