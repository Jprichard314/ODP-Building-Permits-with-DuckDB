{{
    config(
        sql_header="load spatial;"
    )
}}

select *
FROM st_read('/home/jprichard/projects/pandera_and_polars/data/raw/Census_Tracts_2010.geojson')