import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class SpringHibernateTest {

	@Test
	public void testIntegrate() {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");		
		SessionFactory sessionFactory = (SessionFactory) context.getBean("sessionFactory");
	}
}
