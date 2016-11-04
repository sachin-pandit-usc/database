/* DB used: PostGRESql */

SELECT ST_AsText(
	ST_ConvexHull(
		ST_Collect(
			ST_GeomFromText(
				'MULTIPOINT(
					-118.2904955 34.0309532,
					-118.2939375 34.0288108,
					-118.2822402 34.0230096,
					-118.2846802 34.0169487,
					-118.2906224 34.0244091,
					-118.2932661 34.0320736,
					-118.2909643 34.0169611,
					-118.2859008 34.0304735,
					-118.281013 34.0252024,
					-118.2849419 34.0265617
				)'
			)
		)
	)
);


