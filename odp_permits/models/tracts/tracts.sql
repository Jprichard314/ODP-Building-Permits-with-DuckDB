with inner_table as (
    select
        censustract,
        count(*) PERMITS_ISSUED
    from {{ref("fct_permits")}}
    GROUP BY
        censustract
)

SELECT 
    inner_table.censustract as CENSUS_TRACT,
    inner_table.PERMITS_ISSUED,
    dim_tracts.LAT,
    dim_tracts.LON,
    dim_tracts.GEOM
FROM inner_table
LEFT JOIN
    {{ref("dim_tracts")}} dim_tracts
    on
        inner_table.censustract = dim_tracts.CENSUS_TRACT