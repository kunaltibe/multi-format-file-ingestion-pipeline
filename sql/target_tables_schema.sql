CREATE TABLE File_Loading_List (
    File_Name NVARCHAR(255),
    File_Delimiter NVARCHAR(10),
    Target_Table NVARCHAR(255)
);

-- Inserting the rows
INSERT INTO File_Loading_List (File_Name, File_Delimiter, Target_Table)
VALUES ('tobacco_consumption.csv', ',', 'Tobacco_Consumption_Dataset');

INSERT INTO File_Loading_List (File_Name, File_Delimiter, Target_Table)
VALUES ('employee.txt', '|', 'Employee_Details');

INSERT INTO File_Loading_List (File_Name, File_Delimiter, Target_Table)
VALUES ('pet_licenses.txt', ';', 'Pet_Licenses_Dataset');

SELECT * FROM File_Loading_List

SELECT * FROM Tobacco_Consumption_Dataset
SELECT COUNT(*) AS RowsCount FROM Tobacco_Consumption_Dataset

SELECT * FROM Employee_Details
SELECT COUNT(*) AS RowsCount FROM Employee_Details

SELECT * FROM Pet_Licenses_Dataset
SELECT COUNT(*) AS RowsCount FROM Pet_Licenses_Dataset