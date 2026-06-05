# Data Cleaning and Preparation

### **Project Overview:**

**Project 1: Excel Dataset**, Data Cleaning focuses on cleaning and preparing a sales dataset using Python Pandas to ensure the data is accurate, consistent, and ready for Exploratory Data Analysis (EDA). The project demonstrates a structured data-cleaning workflow designed to identify and resolve common data quality issues that could negatively impact business insights and analytical outcomes.

---

**Key Data Cleaning Steps**
  - Imported and explored the Excel dataset using `Pandas` and `NumPy`.
  - Inspected dataset structure, data types, and missing values.
  - Identified and handled missing values in the `CouponCode` column by replacing them with "No Coupon" to preserve transaction records.
  - Checked for duplicate records and confirmed dataset uniqueness.
  - Validated numeric fields to ensure there were no negative quantities or invalid prices.
  - Verified `TotalPrice` consistency against calculated totals `(Quantity × UnitPrice)`.
  - Standardized text columns to remove formatting inconsistencies.
  - Reviewed categorical values to detect unexpected labels or typographical errors.
  - Detected potential outliers using the IQR method and confirmed pricing consistency.
  - Conducted a final audit to ensure the dataset was fully clean and analysis-ready.

---

**Business Insights Enabled**

The cleaning process improved data reliability and enabled:
  - Better understanding of customer coupon usage behavior.
  - Accurate sales and revenue analysis.
  - Reliable customer, product, and payment segmentation.
  - Improved forecasting and reporting accuracy.

---

**Repository Contents**

The repository includes:

- [Original Excel dataset](./Dataset_Data_Analytics.xlsx)
- [Python cleaning script](./data_cleaning.ipynb)
- [Cleaned dataset output](./Cleaned_Dataset.xlsx)
- [Supporting project documentation](./DATA_ANALYTICS_p1.pdf) | [Script PDF](./data_cleaning.pdf)

All files can be accessed directly within the repository for review and reference.
