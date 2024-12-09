-- Create table and insert data with Korean characters
DROP DATABASE IF EXISTS pratice_board;
CREATE DATABASE pratice_board
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_unicode_ci;
	
USE pratice_board;

CREATE TABLE post (
  `num` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `title` VARCHAR(50) NOT NULL,
  `writer` VARCHAR(50) NOT NULL,
  `content` TEXT NOT NULL,
  `reg_date` DATETIME NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CHANGE MASTER TO MASTER_HOST='10.10.10.13', MASTER_USER='root', MASTER_PASSWORD='root', MASTER_LOG_FILE='mysql-bin.000003', MASTER_LOG_POS=157;

COMMIT;
