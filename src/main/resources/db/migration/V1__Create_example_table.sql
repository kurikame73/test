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
DROP TABLE IF EXISTS `SocialLogin`;

CREATE TABLE `SocialLogin` (
                               `socialId` INT PRIMARY KEY AUTO_INCREMENT,
                               `socialCompany` VARCHAR(255) NOT NULL,
                               `socialLoginId` VARCHAR(255) NOT NULL,
                               `token` VARCHAR(512) NOT NULL,
                               `userId` INT NOT NULL
);

-- AuthProvider 테이블 삭제 및 재생성
DROP TABLE IF EXISTS `AuthProvider`;

CREATE TABLE `AuthProvider` (
                                `providerId` INT PRIMARY KEY AUTO_INCREMENT,
                                `providerName` VARCHAR(255) NOT NULL,
                                `providerType` VARCHAR(255) NOT NULL
);
