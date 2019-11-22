package test.serviceimple;

import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.junit.Test;

import entity.Students;

public class TestStudents {

	@Test
	public void testSchemaExport(){
		
		//创建配置对象
		Configuration config = new Configuration().configure();
		//创建服务注册对象
		ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
		
		//注册sessionFactory
		SessionFactory sessionFactory = config.buildSessionFactory(serviceRegistry);
		//创建session对象
		Session session = sessionFactory.openSession();
		//创建schemaExport对象
		SchemaExport export = new SchemaExport(config);
		
		export.create(true,true);
	}
	
	@Test
	public void testSaveStudents(){
				//创建配置对象
				Configuration config = new Configuration().configure();
				//创建服务注册对象
				ServiceRegistry serviceRegistry = new ServiceRegistryBuilder().applySettings(config.getProperties()).buildServiceRegistry();
				
				//注册sessionFactory
				SessionFactory sessionFactory = config.buildSessionFactory(serviceRegistry);
				//创建session对象
				Session session = sessionFactory.openSession();
	
				Transaction tx = session.beginTransaction();
				
				Students s1 = new Students("20173772","张三丰","武夷山","20170001");
				Students s2 = new Students("20173773","张二丰","武夷山2","20170001");
				Students s3 = new Students("20173774","张一丰","武夷山1","20170001");
				
				session.save(s1);
				session.save(s2);
				session.save(s3);
				tx.commit();
				sessionFactory.close();
	}
}
