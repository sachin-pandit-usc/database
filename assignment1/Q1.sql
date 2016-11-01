/* Name: Sachin Subraya Pandit */

/* These queries were verified and tested using sqlite3 */


CREATE TABLE CosineTable
(
	Angle int NOT NULL PRIMARY KEY,
	CosValue float
);

INSERT INTO CosineTable (Angle, CosValue)
VALUES
(0,1),
(5,0.9962),
(10,0.9848),
(15,0.9659),
(20,0.9397),
(25,0.9063),
(30,0.866),
(35,0.8192),
(40,0.766),
(45,0.7071),
(50,0.6428),
(55,0.5736),
(60,0.5),
(65,0.4226),
(70,0.342),
(75,0.2588),
(80,0.1736),
(85,0.0872),
(90,0);


SELECT Value1 + (Value2 - Value1) * (73 - Angle1) /  (Angle2 - Angle1) FROM
(
	(
		SELECT Angle AS Angle1, CosValue AS Value1 FROM CosineTable
		WHERE Angle < 73
		ORDER BY Angle DESC
		LIMIT 1
	)
	JOIN
	(
		SELECT Angle AS Angle2, CosValue AS Value2 FROM CosineTable
		WHERE Angle > 73
		ORDER BY Angle
		LIMIT 1
	)
);
