

WITH inner_table AS(
    SELECT
        COUNT(*) PERMITS_ISSUED,
        contractorname,
        contractoraddress1,
        contractoraddress2,
        contractorcity,
        contractorzip,
        contractorstate
    FROM
        {{ref("permits")}}
    GROUP BY
        contractorname,
        contractoraddress1,
        contractoraddress2,
        contractorcity,
        contractorzip,
        contractorstate
)

SELECT * FROM inner_table
