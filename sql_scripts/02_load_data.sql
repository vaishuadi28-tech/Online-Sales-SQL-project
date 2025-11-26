SET GLOBAL local_infile = 1;
LOAD DATA LOCAL INFILE 'C:/Users/Lenovo/OneDrive/Documents/online_sales_dataset.csv'
INTO TABLE online_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
select * from online_sales;
SELECT COUNT(*) FROM online_sales;