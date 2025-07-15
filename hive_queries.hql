-- ===============================================
-- Hive Script: Airline Performance Data (2009–2018)
-- Purpose: Create database, tables, and load CSV data
-- ===============================================

-- Step 1: Create database 
CREATE DATABASE flights;

-- Step 2: Use the flights database
USE flights;

-- Step 3: Create External Table for 2009
CREATE EXTERNAL TABLE IF NOT EXISTS data_2009 (
  FL_DATE STRING,
  OP_CARRIER STRING,
  OP_CARRIER_FL_NUM INT,
  ORIGIN STRING,
  DEST STRING,
  CRS_DEP_TIME INT,
  DEP_TIME INT,
  DEP_DELAY INT,
  TAXI_OUT INT,
  WHEELS_OFF INT,
  WHEELS_ON INT,
  TAXI_IN INT,
  CRS_ARR_TIME INT,
  ARR_TIME INT,
  ARR_DELAY INT,
  CANCELLED INT,
  CANCELLATION_CODE STRING,
  DIVERTED INT,
  CRS_ELAPSED_TIME INT,
  ACTUAL_ELAPSED_TIME INT,
  AIR_TIME INT,
  DISTANCE INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/flights/2009';

-- Step 4: Repeat Table Creation for Remaining Years (2010–2018)
CREATE EXTERNAL TABLE IF NOT EXISTS data_2010 LIKE data_2010 LOCATION '/user/flights/2010';
CREATE EXTERNAL TABLE IF NOT EXISTS data_2011 LIKE data_2011 LOCATION '/user/flights/2011';
CREATE EXTERNAL TABLE IF NOT EXISTS data_2012 LIKE data_2012 LOCATION '/user/flights/2012';
CREATE EXTERNAL TABLE IF NOT EXISTS data_2013 LIKE data_2013 LOCATION '/user/flights/2013';
CREATE EXTERNAL TABLE IF NOT EXISTS data_2014 LIKE data_2014 LOCATION '/user/flights/2014';
CREATE EXTERNAL TABLE IF NOT EXISTS data_2015 LIKE data_2015 LOCATION '/user/flights/2015';
CREATE EXTERNAL TABLE IF NOT EXISTS data_2016 LIKE data_2016 LOCATION '/user/flights/2016';
CREATE EXTERNAL TABLE IF NOT EXISTS data_2017 LIKE data_2017 LOCATION '/user/flights/2017';
CREATE EXTERNAL TABLE IF NOT EXISTS data_2018 LIKE data_2018 LOCATION '/user/flights/2018';

-- Step 5: Load CSV Data from HDFS into Each Table
LOAD DATA INPATH '/user/flights/2009/flights_2009.csv' INTO TABLE data_2009;
LOAD DATA INPATH '/user/flights/2010/flights_2010.csv' INTO TABLE data_2010;
LOAD DATA INPATH '/user/flights/2011/flights_2011.csv' INTO TABLE data_2011;
LOAD DATA INPATH '/user/flights/2012/flights_2012.csv' INTO TABLE data_2012;
LOAD DATA INPATH '/user/flights/2013/flights_2013.csv' INTO TABLE data_2013;
LOAD DATA INPATH '/user/flights/2014/flights_2014.csv' INTO TABLE data_2014;
LOAD DATA INPATH '/user/flights/2015/flights_2015.csv' INTO TABLE data_2015;
LOAD DATA INPATH '/user/flights/2016/flights_2016.csv' INTO TABLE data_2016;
LOAD DATA INPATH '/user/flights/2017/flights_2017.csv' INTO TABLE data_2017;
LOAD DATA INPATH '/user/flights/2018/flights_2018.csv' INTO TABLE data_2018;

-- Notes:
-- - Tables are defined as EXTERNAL to keep HDFS data persistent
-- - Columns after DISTANCE are omitted due to missing data
