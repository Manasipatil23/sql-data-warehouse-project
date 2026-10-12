# SQL Data Warehouse Project

A SQL-based data warehouse that consolidates CRM and ERP source data into clean, business-ready tables using the **Medallion Architecture** (Bronze → Silver → Gold).

## Problem Statement

Business data is scattered across separate systems (CRM and ERP) and delivered as raw CSV files. These files are inconsistent, contain duplicates and errors, and use different formats, so analysts cannot reliably combine them or trust the results.

This project solves that by:

- **Integrating** CRM and ERP data into a single source of truth
- **Cleaning and standardizing** the data so it is accurate and consistent
- **Modeling** it for analytics, so BI, reporting, and machine learning teams can use it directly

## Data Flow

| Stage        | Description                                                        |
|--------------|--------------------------------------------------------------------|
| **Sources**  | CRM and ERP data delivered as CSV files in folders                 |
| **Bronze**   | Raw data loaded as-is, with no transformation                      |
| **Silver**   | Cleaned and standardized data                                      |
| **Gold**     | Business-ready data exposed as views, modeled for analytics        |
| **Consume**  | BI & reporting, machine learning, and ad-hoc SQL queries           |

## Layer Details

| Attribute           | Bronze                                             | Silver                                                                                             | Gold                                                   |
|---------------------|----------------------------------------------------|----------------------------------------------------------------------------------------------------|--------------------------------------------------------|
| **Purpose**         | Raw data                                           | Cleaned, standardized data                                                                         | Business-ready data                                    |
| **Object type**     | Tables                                             | Tables                                                                                             | Views                                                  |
| **Load method**     | Batch processing<br>Full load<br>Truncate & insert | Batch processing<br>Full load<br>Truncate & insert                                                 | No load                                                |
| **Transformations** | None                                               | Data cleaning<br>Data standardization<br>Data normalization<br>Derived columns<br>Data enrichment  | Data integration<br>Data aggregation<br>Business logic |
| **Data model**      | None (as-is)                                       | None (as-is)                                                                                       | Star schema<br>Flat table<br>Aggregated table          |

## Tech Stack

| Component    | Technology                    |
|--------------|-------------------------------|
| Database     | SQL                           |
| Source data  | CSV files (CRM, ERP)          |
| Consumption  | BI tool, ad-hoc SQL queries   |

## Project Structure

```
├── datasets/      # Source CRM and ERP CSV files
├── scripts/
│   ├── bronze/    # Raw data load scripts
│   ├── silver/    # Cleaning and transformation scripts
│   └── gold/      # Analytical views
├── docs/          # Architecture diagram and documentation
└── README.md
```

## How to Run

1. Set up the database and create the Bronze, Silver, and Gold schemas.
2. Run the Bronze scripts to load the raw CSV files.
3. Run the Silver scripts to clean and standardize the data.
4. Run the Gold scripts to create the analytical views.
5. Query the Gold layer from your BI tool or with SQL.
