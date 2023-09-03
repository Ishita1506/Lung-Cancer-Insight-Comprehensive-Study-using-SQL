Task 1. How many values are there in the given dataset.
  SELECT count(*) 
  FROM lung_cancer;

Task 2. Select the average age of individuals in the given dataset
  SELECT AVG(age) as average_age
  FROM lung_cancer;

Task 3. Select the total count of 'Smokers' in the given dataset
  SELECT COUNT(DISTINCT Smoking_Category) AS "COUNT(*)"
  FROM lung_cancer
  WHERE Smoking_Category IN ('Heavy Smokers','Mediocre Smokers','Light Smokers');

Task 4. Select the 'Name', 'Age', and 'Alcohol Category' columns for 'Mediocare Drinkers'
  SELECT Name, Age, Alcohol_Category
  FROM lung_cancer
  WHERE Alcohol_Category = 'Mediocre Drinkers';

Task 5. Select the 'Name' and 'Age' of the oldest individual in the given dataset.
  SELECT Name , Age
  FROM lung_cancer
  ORDER BY Age DESC
  LIMIT 2;

Task 6. Select the 'Name' and 'Surname' of individuals whose names start with 'A'.
  SELECT Name, Surname
  FROM lung_cancer
  WHERE Name  LIKE 'A%';

Task 7. Select the 'Name', 'Age', and 'Alcohol' columns for individuals who are both 'Heavy Smokers' and 'Mediocare Drinkers'
  SELECT Name, Age, Alcohol
  FROM lung_cancer
  WHERE Alcohol_Category = 'Mediocre Drinkers'
  AND Smoking_Category = 'Heavy Smokers';

Task 8. Find out the percentage of lung cancer for individuals whose age is greater than 18.
  SELECT
    Result,
    Count,
    (Count * 100.0 / (SELECT COUNT(*) FROM lung_cancer WHERE Age > 18)) AS Percentage
  FROM (
    SELECT
        Result,
        COUNT(*) AS Count
    FROM lung_cancer
    WHERE Age > 18
    GROUP BY Result
  ) AS Subquery;

Task 9. Select the names and ages of individuals whose names contain the word "John".
  SELECT Name, Age 
  FROM lung_cancer
  WHERE Name LIKE '%John%'

Task 10. Find the count of people who have lung cancer with different 'Smoking Category'.
  SELECT Smoking_Category, COUNT(*) AS Count
  FROM lung_cancer
  WHERE Smoking_Category IN ('Mediocre Smokers', 'Heavy Smokers')
  AND Result = '1'
  GROUP BY Smoking_Category;

Task 11. Find the count of people who have lung cancer with different 'Alcohol Category'.
  SELECT Alcohol_Category, COUNT(*) AS Count
  FROM lung_cancer
  WHERE Result = '1'
  AND Alcohol_Category = 'Mediocre Drinkers'
  GROUP BY Alcohol_Category;














