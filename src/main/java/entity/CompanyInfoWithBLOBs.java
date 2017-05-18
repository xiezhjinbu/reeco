package entity;

public class CompanyInfoWithBLOBs extends CompanyInfo {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column company_info.INFORMATION
     *
     * @mbggenerated
     */
    private String information;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column company_info.ADDR_CO
     *
     * @mbggenerated
     */
    private String addrCo;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_info
     *
     * @mbggenerated
     */
    public CompanyInfoWithBLOBs(String companyName, String contacCo, Integer telCo, Integer phone, String fb, String tw, String eMail, String information, String addrCo) {
        super(companyName, contacCo, telCo, phone, fb, tw, eMail);
        this.information = information;
        this.addrCo = addrCo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column company_info.INFORMATION
     *
     * @return the value of company_info.INFORMATION
     *
     * @mbggenerated
     */
    public String getInformation() {
        return information;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column company_info.ADDR_CO
     *
     * @return the value of company_info.ADDR_CO
     *
     * @mbggenerated
     */
    public String getAddrCo() {
        return addrCo;
    }
}