package test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import static org.junit.Assert.*;

/**
 * Created by Administrator on 2017/5/15.
 */
public class ItemsMapperTest {
    @Test
    public void selectByPrimaryKey() throws Exception {
        ApplicationContext ac = new ClassPathXmlApplicationContext(new String("applicationContext.xml"));
        System.out.println(ac.toString());
    }

}