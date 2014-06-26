import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.immutable.alias.pojos.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class SpringHibernateTest {

	@Test
	public void testIntegrate() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");		
		SessionFactory sessionFactory = (SessionFactory) context.getBean("sessionFactory");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		User user = new User();
		user.setId(3);
		user.setName("hello");
		user.setPassword("123456");
		user.setLastUpdateTime(new Date());
		session.save(user);
		session.getTransaction().commit();
		
	}
}
