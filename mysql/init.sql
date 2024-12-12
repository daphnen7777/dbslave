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

DROP DATABASE IF EXISTS user_management;
CREATE DATABASE user_management
       DEFAULT CHARACTER SET utf8mb4
       DEFAULT COLLATE utf8mb4_unicode_ci;

USE user_management;

CREATE TABLE users (
       username varchar(50) PRIMARY KEY NOT NULL,
       password varchar(100) NOT NULL,
       fullname VARCHAR(100) NOT NULL,
       email VARCHAR(100) NOT NULL,
       phone VARCHAR(10),
       phone2 VARCHAR(10) NOT NULL,
       phone3 VARCHAR(10) NOT NULL,
       gender CHAR(1) CHECK(GENDER IN ('m', 'f'))
);

ALTER DATABASE pratice_board READ ONLY = 1;
ALTER DATABASE user_management READ ONLY = 1;

CHANGE MASTER TO MASTER_HOST='10.10.30.30', MASTER_USER='root', MASTER_PASSWORD='root', MASTER_LOG_FILE='mysql-bin.000003', MASTER_LOG_POS=157;

COMMIT;
