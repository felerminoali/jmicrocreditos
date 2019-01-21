package com.jmicrocreditos.config;

import com.jmicrocreditos.service.CRUDService;
import com.jmicrocreditos.service.CRUDServiceImpl;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import java.util.Properties;

@Configuration
@EnableTransactionManagement
@ComponentScan("com.jmicrocreditos")
@EnableAutoConfiguration(exclude= HibernateJpaAutoConfiguration.class)
public class HibernateConf {

    @Bean(name="entityManagerFactory")
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan("com.jmicrocreditos.model");
        sessionFactory.setHibernateProperties(hibernateProperties());

        return sessionFactory;
    }

    @Bean
    public DriverManagerDataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.postgresql.Driver");

//        dataSource.setUrl("jdbc:postgresql://localhost:5432/jmicrocreditos");
//        dataSource.setUsername("root");
//        dataSource.setPassword("dblinkx");

        dataSource.setUrl("jdbc:postgresql://ec2-75-101-138-165.compute-1.amazonaws.com/d2d3u704al5gi3");
        dataSource.setUsername("znfzlpxnwaveij");
        dataSource.setPassword("87b7b46433d0c67ee5613c8c416b0f08948f438b80db80bbc01dfc3fee92b26f");

//        dataSource.setUrl("jdbc:postgresql://localhost:5432/jmicrocreditos");
//        dataSource.setUsername("root");
//        dataSource.setPassword("dblinkx");

        return dataSource;
    }

    @Bean(name = "transactionManager")
    public PlatformTransactionManager hibernateTransactionManager() {
        HibernateTransactionManager transactionManager
                = new HibernateTransactionManager();
        transactionManager.setSessionFactory(sessionFactory().getObject());
        return transactionManager;
    }

    private final Properties hibernateProperties() {
        Properties hibernateProperties = new Properties();
        hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
        hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.PostgreSQL82Dialect");
        hibernateProperties.setProperty("hibernate.show_sql", "true");
        hibernateProperties.setProperty("hibernate.jdbc.lob.non_contextual_creation", "true");
        hibernateProperties.setProperty("hibernate.format_sql","true");
        hibernateProperties.setProperty("hibernate.enable_lazy_load_no_trans","true");
        hibernateProperties.setProperty("hibernate.use_sql_comments","true");
        hibernateProperties.setProperty("hibernate.zeroDateTimeBehavior","convertToNull");

        return hibernateProperties;
    }

    @Bean
    public CRUDService CRUDService() {
        return new CRUDServiceImpl();
    }
}
