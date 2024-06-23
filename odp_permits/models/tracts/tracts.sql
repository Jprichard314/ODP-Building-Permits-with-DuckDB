with inner_table as (
    select
        censustract,
        count(*) PERMITS_ISSUED
    from import.PERMITS
    GROUP BY
        censustract
)

SELECT * FROM inner_table