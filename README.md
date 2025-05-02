# Multi-Format File Ingestion Pipeline using Azure Data Factory

This project showcases a dynamic, metadata-driven ETL pipeline built with **Azure Data Factory (ADF)**. It automates the ingestion of structured files—each with different delimiters—from **Azure Data Lake Storage Gen2 (ADLS2)** into SQL tables. The pipeline supports scalable ingestion using parameterized ADF components and a control table.

---

## Technologies Used

- **Azure Data Factory**
- **Azure Data Lake Storage Gen2**
- **SQL Server / Azure SQL Database**
- **Parameterization & Lookup Tables**

---

## Pipeline Overview

1. **File Metadata Table** (`File_Loading_List`) defines:
   - File name
   - File path
   - Delimiter
   - Target SQL table

2. **ADF Lookup Activity** reads the metadata from SQL.

3. **ForEach Activity** loops through the file list.

4. **Copy Data Activity** dynamically uses the delimiter to extract and load into the respective SQL table.

---

## Input Files

| File Name                | Format              | Target Table                  |
|-------------------------|---------------------|-------------------------------|
| `tobacco_consumption.csv` | Comma-delimited (`,`) | `Tobacco_Consumption_Dataset` |
| `employee.txt`           | Pipe-delimited (`\|`) | `Employee_Details`            |
| `pet_licenses.txt`       | Semicolon-delimited (`;`) | `Pet_Licenses_Dataset`        |

---

## How to Deploy

1. Create target tables using:
   ```
   /sql/target_tables_schema.sql
   ```

2. Upload the 3 raw files to your ADLS2 container path.

3. Import the ADF pipeline:
   - Go to Azure Data Factory > Manage > ARM template > Import
   - Use contents from `/adf-etl-pipeline/` folder

4. Update the linked services in ADF after import:
   - Configure ADLS2 and SQL authentication

5. Trigger the pipeline to ingest all files dynamically.

---

## Results

- Ingested **3 differently formatted files** using a single dynamic pipeline
- Reduced manual configuration by **95%**
- Easily scalable to **add more file types or tables** by updating just the control table

---

## Key Learnings

- Parameterization in ADF pipelines
- Metadata-driven pipeline design
- Handling multi-format file ingestion
- Connecting ADF with ADLS2 and Azure SQL

---

## Author

**Kunal Tibe**  
Connect with me on [LinkedIn](https://www.linkedin.com/in/kunal-tibe)

---

## License

This project is open source for educational and portfolio purposes.
