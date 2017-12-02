package com.bear.clothesonline.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	static SessionFactory sessionFactory = null;
	static {
		StandardServiceRegistry registry = new StandardServiceRegistryBuilder().configure().build();
		Configuration cf = new Configuration();
		try {
		    sessionFactory = new MetadataSources(registry)
		        .buildMetadata().buildSessionFactory();
		} catch (Exception e) {
		    // 创建失败手动释放
		    StandardServiceRegistryBuilder.destroy(registry);
		    e.printStackTrace();
		}

	}
	 
	public static Session openSession() {
	        ThreadLocal<Session> threadLocal = new ThreadLocal<Session>();
	        Session session = threadLocal.get();
	        if(session == null || !session.isOpen()){
	            session = sessionFactory.openSession();
	            threadLocal.set(session);
	        }
	        return session;
	    }

}
