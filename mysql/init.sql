-- Create table and insert data with Korean characters
CHANGE MASTER TO MASTER_HOST='10.10.10.13', MASTER_USER='root', MASTER_PASSWORD='root', MASTER_LOG_FILE='mysql-bin.000003', MASTER_LOG_POS=157;
COMMIT;
