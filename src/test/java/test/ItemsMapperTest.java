package test;

import common.ContactInformation;
import common.GlobalData;
import dao.CompanyInfoMapper;
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
        //ItemsMapper itemsMapper=ac.getBean("itemsMapper",ItemsMapper.class);
        //System.out.println(itemsMapper.toString());
        CompanyInfoMapper companyInfoMapper=ac.getBean("companyInfoMapper",CompanyInfoMapper.class);
        System.out.println(companyInfoMapper.selectCompanyInfo());

    }

    @Test
    public  void testGlobalData(){
        ContactInformation ci=GlobalData.getContactInformation();
        System.out.println(ci);
    }
}