# ODP Permits with DuckDB (and DBT)

## Purpose:
The purpose of this project is to try out a handful of new tools.  Descriptions are pulled from each tool's respective docs.
 - [DuckDB](https://duckdb.org/): DuckDB supports a feature-rich SQL dialect complemented with deep integrations into client APIs.
DuckDB v1.0.0 was released in June 2024.
 - [DBT](https://docs.getdbt.com/): dbt is a transformation workflow that helps you get more work done while producing higher quality results. You can use dbt to modularize and centralize your analytics code, while also providing your data team with guardrails typically found in software engineering workflows. Collaborate on data models, version them, and test and document your queries before safely deploying them to production, with monitoring and visibility.
 - [Polars](https://pola.rs/): Polars is a blazingly fast DataFrame library for manipulating structured data. The core is written in Rust, and available for Python, R and NodeJS.
 - [Pandera](https://pandera.readthedocs.io/en/stable/): pandera is a Union.ai open source project that provides a flexible and expressive API for performing data validation on dataframe-like objects to make data processing pipelines more readable and robust.

## Overview:
1) Data is downloaded via API call in the dev.ipynb notebook, and saved to data/raw -- these are considered raw.
    - Note: the geojson file for census tract geometries is currently being imported manually.
2) Downloaded -- raw -- data is validated through a pandera schema.
3) With DBT, Saved -- raw -- data is imported from data/raw to the import schema, these are considered staged.
4) With DBT, staged data are transformed into metrics and exploratory data.