-- users 테이블 삭제 및 재생성
DROP TABLE IF EXISTS `soomgo`.`users`;
CREATE TABLE `soomgo`.`users` (
                                  `user_id` INT NOT NULL AUTO_INCREMENT,
                                  `user_name` VARCHAR(100) NOT NULL,
                                  `nickname` VARCHAR(100) NOT NULL,
                                  `hashed_password` VARCHAR(255) NOT NULL,
                                  `phone` VARCHAR(20),
                                  `user_email` VARCHAR(100) NOT NULL,
                                  `auth_provider_id` INT NOT NULL,
                                  `profile_image` VARCHAR(100) NULL,
                                  PRIMARY KEY (`user_id`),
                                  UNIQUE INDEX `user_email_UNIQUE` (`user_email` ASC) VISIBLE
);

-- SocialLogin 테이블 삭제 및 재생성
DROP TABLE IF EXISTS `social_logins`;
CREATE TABLE `soomgo`.`social_logins` (
                                `social_id` INT PRIMARY KEY AUTO_INCREMENT,
                                `social_company` VARCHAR(255) NOT NULL,
                                `social_login_id` VARCHAR(255) NOT NULL,
                                `token` VARCHAR(512) NOT NULL,
                                `user_id` INT NOT NULL
);

-- AuthProvider 테이블 삭제 및 재생성
DROP TABLE IF EXISTS `auth_providers`;

CREATE TABLE `soomgo`.`auth_providers` (
                                 `provider_id` INT PRIMARY KEY AUTO_INCREMENT,
                                 `provider_name` VARCHAR(255) NOT NULL,
                                 `provider_type` VARCHAR(255) NOT NULL
);