# Data Validation Report

## Objective

The purpose of this validation was to verify the quality and integrity of the Instacart dataset before performing exploratory analysis.

## Validation Checks Performed

- Verified total records in each table.
- Checked for duplicate order IDs.
- Checked for duplicate product IDs.
- Checked for missing values.
- Validated order day values (0–6).
- Validated order hour values (0–23).
- Verified product references.
- Verified order references.

## Summary

- All six datasets were successfully imported into PostgreSQL.
- No duplicate primary identifiers were detected.
- Order day and hour values were within expected ranges.
- No invalid product or order references were found.
- The dataset was determined to be suitable for further analysis.

## Conclusion

The dataset passed all validation checks and was considered ready for exploratory data analysis and business analysis.