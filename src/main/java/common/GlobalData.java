package common;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by Administrator on 2017/5/17.
 */
@SuppressWarnings("Since15")
public class GlobalData {
    public static ContactInformation getContactInformation() {
        ContactInformation ci = new ContactInformation();
        Properties prop = new Properties();
        try {
            //读取属性文件a.properties
            InputStream in = new BufferedInputStream(new FileInputStream(new String(" ContactInformation.properties")));
            prop.load(in);     ///加载属性列表
            ci.setCompany_name(prop.getProperty("company_name"));
            ci.setPhone1(prop.getProperty("phone1"));
            ci.setPhone2(prop.getProperty("phone2"));
            ci.setFacebookID(prop.getProperty("facebookID"));
            ci.setTwitterID(prop.getProperty("twitterID"));
            in.close();

            //return  ci;
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            return ci;
        }

    }
}
