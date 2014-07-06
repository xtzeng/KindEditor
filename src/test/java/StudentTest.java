import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.immutable.alias.pojos.Student;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class StudentTest {

	@Test
	public void testSaveStudent() {
		
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");		
		SessionFactory sessionFactory = (SessionFactory) context.getBean("sessionFactory");
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Student student = new Student();
		student.setName("hello");
		student.setSex("男");
		student.setLastUpdateTime(new Date());
		session.save(student);
		session.getTransaction().commit();
	}
	
}
