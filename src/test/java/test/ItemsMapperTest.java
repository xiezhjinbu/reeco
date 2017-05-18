package test;

import common.ContactInformation;
import common.GlobalData;
import dao.ItemsMapper;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by Administrator on 2017/5/15.
 */
public class ItemsMapperTest {
    @Test
    public void selectByPrimaryKey() throws Exception {
        ApplicationContext ac = new ClassPathXmlApplicationContext(new String("applicationContext.xml"));
        //System.out.println(ac.toString());
        ItemsMapper itemsMapper=ac.getBean("itemsMapper",ItemsMapper.class);
        System.out.println(itemsMapper.toString());


    }

    @Test
    public  void testGlobalData(){
        ContactInformation ci=GlobalData.getContactInformation();
        System.out.println(ci);
    }
}