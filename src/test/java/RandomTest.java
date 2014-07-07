import java.util.Random;

import org.junit.Test;


public class RandomTest {

	
	@Test
	public void testRandom() {
		
		 Random random = new Random();
	   
		 System.out.println(random.nextInt(5000));

	}
}
