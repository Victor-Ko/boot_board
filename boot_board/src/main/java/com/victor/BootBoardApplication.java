package com.victor;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@SpringBootApplication
@MapperScan(value = {"com.victor.board.dao"})
public class BootBoardApplication {

	public static void main(String[] args) {
		SpringApplication.run(BootBoardApplication.class, args);
	}
	
	//sessionFactory configure
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource)throws Exception{
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		sqlSessionFactoryBean.setDataSource(dataSource);
		
		 Resource[] res = new PathMatchingResourcePatternResolver().getResources("classpath:mappers/*Mapper.xml");
         
		 for(Resource r : res) {
			 System.out.println("---------" + r.getFilename());
		 }
		 
		 sqlSessionFactoryBean.setMapperLocations(res);
		
		return sqlSessionFactoryBean.getObject();
	}
}
