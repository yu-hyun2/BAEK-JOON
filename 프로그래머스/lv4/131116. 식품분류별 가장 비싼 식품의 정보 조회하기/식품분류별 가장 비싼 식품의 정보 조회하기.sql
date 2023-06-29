SELECT CATEGORY, PRICE AS MAX_PRCIE, PRODUCT_NAME
FROM FOOD_PRODUCT F
WHERE CATEGORY IN ('과자', '국', '김치', '식용유') 
    AND PRICE = (
    SELECT MAX(PRICE)
    FROM FOOD_PRODUCT
    WHERE CATEGORY = F.CATEGORY
  )
ORDER BY PRICE DESC;

# SELECT CATEGORY, MAX(PRICE) AS MAX_PRICE, PRODUCT_NAME
# FROM FOOD_PRODUCT
# WHERE CATEGORY IN ('과자','국','김치','식용유') 
# GROUP BY CATEGORY
# ORDER BY PRICE DESC;

# SELECT CATEGORY, PRICE, PRODUCT_NAME
# FROM FOOD_PRODUCT
# WHERE CATEGORY IN ('과자','국','김치','식용유')
# ORDER BY PRICE DESC;