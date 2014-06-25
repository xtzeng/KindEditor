import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.immutable.alias.dao.impl.HelloDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class SpringTest {

	@Resource(name="helloDao")
	private HelloDao helloDao;
	
	@Test
	public void testEnviroment() {
		helloDao.insert();
	}
}
