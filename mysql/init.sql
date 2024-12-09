-- Create table and insert data with Korean characters
ALTER USER 'root'@'localhost' identified with mysql_native_password by 'root';
ALTER USER 'root'@'%' identified with mysql_native_password by 'root';
GRANT ALL PRIVILEGES on *.* TO 'root'@'%' WITH GRANT OPTION;

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

INSERT INTO post VALUE(1, 'REPLICATION TEST', 'workergtfo', 'TESTING REPLICATION', '2024-12-09');

COMMIT;
