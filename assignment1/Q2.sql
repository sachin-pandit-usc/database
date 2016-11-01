/* Name: Sachin Subraya Pandit */

/* These queries were verified and tested using sqlite3 */

CREATE TABLE Salaries(
        CheckNum INTEGER PRIMARY KEY,
        Amount DECIMAL(8,2) NOT NULL
);

INSERT INTO Salaries (CheckNum, Amount)
VALUES
(1111,4532),
(1212,12000),
(1234,12000),
(3344,6000),
(4324,7500),
(4555,6000.12),
(9999,12000);

SELECT Amount, CountAmount FROM
(
        SELECT Amount, COUNT(Amount) AS CountAmount
        FROM Salaries
        GROUP BY Amount
        ORDER BY CountAmount Desc
)
WHERE CountAmount IN
(
        SELECT COUNT(Amount) AS AmountCount
        FROM Salaries
        GROUP BY Amount
        ORDER BY AmountCount Desc LIMIT 1
);
