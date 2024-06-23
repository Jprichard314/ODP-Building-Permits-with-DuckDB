
SELECT 
    NAME10 as CENSUS_TRACT,
    INTPTLAT10 as LAT,
    INTPTLON10 as LON,
    geom as GEOM
FROM {{ref('raw_tracts')}} 