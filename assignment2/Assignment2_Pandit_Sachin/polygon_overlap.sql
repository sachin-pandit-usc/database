/* DB used: PostGRESql */

SELECT ST_Intersects(Polygon1,Polygon2)
As Overlap
FROM (
SELECT
ST_AsText(
	ST_GeomFromText(
		'POLYGON((
			-118.2909643 34.0169611,
			-118.2846802 34.0169487,
			-118.2849419 34.0265617,
			-118.2906224 34.0244091,
			-118.2909643 34.0169611
		))'
	)
) As Polygon1,
ST_AsText(
	ST_GeomFromText(
		'POLYGON((
			-118.2904955 34.0309532,
            		-118.2932661 34.0320736,
			-118.2939375 34.0288108,
			-118.2822402 34.0230096,
			-118.281013 34.0252024,
			-118.2859008 34.0304735,
			-118.2904955 34.0309532
		))'
	)
) As Polygon2
) AS query2;



/*
 *"ST_Overlaps" works in all the cases, except the case in which
 *one polygon subsumes another polygon

SELECT ST_Overlaps(Polygon1,Polygon2)
As Overlap
FROM (
SELECT
ST_AsText(
	ST_GeomFromText(
		'POLYGON((
			-118.2909643 34.0169611,
			-118.2846802 34.0169487,
			-118.2849419 34.0265617,
			-118.2906224 34.0244091,
			-118.2909643 34.0169611
		))'
	)
) As Polygon1,
ST_AsText(
	ST_GeomFromText(
		'POLYGON((
			-118.2904955 34.0309532,
            		-118.2932661 34.0320736,
			-118.2939375 34.0288108,
			-118.2822402 34.0230096,
			-118.281013 34.0252024,
			-118.2859008 34.0304735,
			-118.2904955 34.0309532
		))'
	)
) As Polygon2
) AS query2;
*/
