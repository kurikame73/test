package com.yorizip.myapp;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

@Configuration
public class DataSourceConfig {
    @Bean
    public DataSource dataSource() {
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver"); // MySQL 드라이버를 사용하는 예시
        dataSource.setUrl("jdbc:mysql://localhost:3306/soomgo"); // 데이터베이스 URL
        dataSource.setUsername("root"); // 데이터베이스 사용자 이름
        dataSource.setPassword("abcd1234"); // 데이터베이스 비밀번호
        return dataSource;
    }
}
