DROP TABLE IF EXISTS Article;
DROP TABLE IF EXISTS User;
CREATE TABLE IF NOT EXISTS User (
                                    userID INT(11) NOT NULL AUTO_INCREMENT,
                                    username VARCHAR(50) NOT NULL,
                                    password VARCHAR(50) NOT NULL,
                                    email VARCHAR(100) DEFAULT NULL,
                                    phone VARCHAR(20) DEFAULT NULL,
                                    salt VARCHAR(50) NOT NULL,
                                    PRIMARY KEY (UserID)
);
INSERT INTO User (userID, username, password, email, phone, salt) VALUES
                                                                (1, 'kaiyudai', 'laQOftKIQ7NLjArYAPXsfw==', 'kydai@fudan.edu.cn', '13666666666', 'ChBozobr+K74FwDEVmMa8w=='),
                                                                (2, 'fengshuangli', 'laQOftKIQ7NLjArYAPXsfw==', '13302010002@fudan.edu.cn', '13888888888', 'ChBozobr+K74FwDEVmMa8w=='),
                                                                (3, 'zhongyitong', 'laQOftKIQ7NLjArYAPXsfw==', NULL, NULL, 'ChBozobr+K74FwDEVmMa8w==');
CREATE TABLE IF NOT EXISTS Article (
                                       articleID INT(11) NOT NULL AUTO_INCREMENT,
                                       userID INT(11) NOT NULL,
                                       title VARCHAR(100) NOT NULL,
                                       content VARCHAR(5000) NOT NULL,
                                       PRIMARY KEY (articleID),
                                       FOREIGN KEY (userID) REFERENCES User(userID)
);
