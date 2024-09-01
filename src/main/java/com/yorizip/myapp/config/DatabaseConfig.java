package com.yorizip.myapp.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.flywaydb.core.Flyway;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.init.DataSourceInitializer;
import org.springframework.jdbc.datasource.init.DatabasePopulator;
import org.springframework.jdbc.datasource.init.ResourceDatabasePopulator;

import javax.sql.DataSource;

@Configuration
public class DatabaseConfig {
    @Bean
    public DataSourceInitializer dataSourceInitializer(DataSource dataSource) {
        DataSourceInitializer initializer = new DataSourceInitializer();
        initializer.setDataSource(dataSource);
        initializer.setDatabasePopulator(databasePopulator());
        return initializer;
    }

    private DatabasePopulator databasePopulator() {
        ResourceDatabasePopulator populator = new ResourceDatabasePopulator();
        populator.addScript(new ClassPathResource("db/migration/V1__Create_example_table.sql"));
        return populator;
    }

    @Bean
    public DataSource dataSource() {
        BasicDataSource dataSource = new BasicDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver"); // MySQL 드라이버를 사용하는 예시
        dataSource.setUrl("jdbc:mysql://localhost:3306/soomgo"); // 데이터베이스 URL
        dataSource.setUsername("root"); // 데이터베이스 사용자 이름
        dataSource.setPassword("abcd1234"); // 데이터베이스 비밀번호
        return dataSource;
    }

    @Bean
    public Flyway flyway(DataSource dataSource) {
        // Flyway 설정
        Flyway flyway = Flyway.configure()
                .dataSource(dataSource)
                .locations("classpath:db/migration")
                .baselineOnMigrate(true)
                .load();
        // Flyway 마이그레이션 실행
        flyway.migrate();
        return flyway;
    }

}
