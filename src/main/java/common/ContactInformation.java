package common;

/**
 * Created by Administrator on 2017/5/17.
 */
public class ContactInformation {

    private  String company_name;
    private  String phone1;
    private  String phone2;
    private  String facebookID;
    private  String twitterID;

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public String getPhone1() {
        return phone1;
    }

    public void setPhone1(String phone1) {
        this.phone1 = phone1;
    }

    public String getPhone2() {
        return phone2;
    }

    public void setPhone2(String phone2) {
        this.phone2 = phone2;
    }

    public String getFacebookID() {
        return facebookID;
    }

    public void setFacebookID(String facebookID) {
        this.facebookID = facebookID;
    }

    public String getTwitterID() {
        return twitterID;
    }

    public void setTwitterID(String twitterID) {
        this.twitterID = twitterID;
    }

    @Override
    public String toString() {
        return "ContactInformation{" +
                "company_name='" + company_name + '\'' +
                ", phone1='" + phone1 + '\'' +
                ", phone2='" + phone2 + '\'' +
                ", facebookID='" + facebookID + '\'' +
                ", twitterID='" + twitterID + '\'' +
                '}';
    }
}
