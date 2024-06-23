with inner_table as (
    select
        censustract,
        count(*) PERMITS_ISSUED
    from {{ref("permits")}}
    GROUP BY
        censustract
)

SELECT * FROM inner_table