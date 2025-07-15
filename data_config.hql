-- ===============================================
-- Hadoop Ingestion Configuration: Airline Dataset (2009–2018)
-- Purpose: Prepare data files for Hive processing
-- ===============================================

-- Step 1: Create Hive database (one-time)
CREATE DATABASE IF NOT EXISTS flights;

-- Step 2: Move all CSVs to HDFS (1 per year)
-- Files named flights_2009.csv, ..., flights_2018.csv
-- Local path: /home/user/datasets/flights/*.csv

hdfs dfs -mkdir -p /user/flights/2009
hdfs dfs -mkdir -p /user/flights/2010
hdfs dfs -mkdir -p /user/flights/2011
hdfs dfs -mkdir -p /user/flights/2012
hdfs dfs -mkdir -p /user/flights/2013
hdfs dfs -mkdir -p /user/flights/2014
hdfs dfs -mkdir -p /user/flights/2015
hdfs dfs -mkdir -p /user/flights/2016
hdfs dfs -mkdir -p /user/flights/2017
hdfs dfs -mkdir -p /user/flights/2018

-- Step 3: Upload CSVs into HDFS (sample shown for 2009)
hdfs dfs -put /home/user/datasets/flights/2009.csv /user/flights/2009/
hdfs dfs -put /home/user/datasets/flights/2010.csv /user/flights/2010/
hdfs dfs -put /home/user/datasets/flights/2011.csv /user/flights/2011/
hdfs dfs -put /home/user/datasets/flights/2012.csv /user/flights/2012/
hdfs dfs -put /home/user/datasets/flights/2013.csv /user/flights/2013/
hdfs dfs -put /home/user/datasets/flights/2014.csv /user/flights/2014/
hdfs dfs -put /home/user/datasets/flights/2015.csv /user/flights/2015/
hdfs dfs -put /home/user/datasets/flights/2016.csv /user/flights/2016/
hdfs dfs -put /home/user/datasets/flights/2017.csv /user/flights/2017/
hdfs dfs -put /home/user/datasets/flights/2018.csv /user/flights/2018/

-- Step 4: Verify upload
hdfs dfs -ls /user/flights/2009

-- Notes:
-- - Hive will query from the 'flights' database
-- - Each table references its respective HDFS directory
