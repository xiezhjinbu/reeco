package entity;

public class CompanyInfo {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column company_info.COMPANY_NAME
     *
     * @mbggenerated
     */
    private String companyName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column company_info.CONTAC_CO
     *
     * @mbggenerated
     */
    private String contacCo;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column company_info.TEL_CO
     *
     * @mbggenerated
     */
    private Integer telCo;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column company_info.PHONE
     *
     * @mbggenerated
     */
    private Integer phone;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column company_info.FB
     *
     * @mbggenerated
     */
    private String fb;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column company_info.TW
     *
     * @mbggenerated
     */
    private String tw;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column company_info.E_MAIL
     *
     * @mbggenerated
     */
    private String information;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column company_info.E_MAIL
     *
     * @mbggenerated
     */
    private String addrCo;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column company_info.E_MAIL
     *
     * @mbggenerated
     */
    private String eMail;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table company_info
     *
     * @mbggenerated
     */
    public CompanyInfo(String companyName, String contacCo, Integer telCo, Integer phone, String fb, String tw, String information, String addrCo, String eMail) {
        this.companyName = companyName;
        this.contacCo = contacCo;
        this.telCo = telCo;
        this.phone = phone;
        this.fb = fb;
        this.tw = tw;
        this.information = information;
        this.addrCo = addrCo;
        this.eMail = eMail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column company_info.COMPANY_NAME
     *
     * @return the value of company_info.COMPANY_NAME
     *
     * @mbggenerated
     */
    public String getCompanyName() {
        return companyName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column company_info.CONTAC_CO
     *
     * @return the value of company_info.CONTAC_CO
     *
     * @mbggenerated
     */
    public String getContacCo() {
        return contacCo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column company_info.TEL_CO
     *
     * @return the value of company_info.TEL_CO
     *
     * @mbggenerated
     */
    public Integer getTelCo() {
        return telCo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column company_info.PHONE
     *
     * @return the value of company_info.PHONE
     *
     * @mbggenerated
     */
    public Integer getPhone() {
        return phone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column company_info.FB
     *
     * @return the value of company_info.FB
     *
     * @mbggenerated
     */
    public String getFb() {
        return fb;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column company_info.TW
     *
     * @return the value of company_info.TW
     *
     * @mbggenerated
     */
    public String getTw() {
        return tw;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column company_info.E_MAIL
     *
     * @return the value of company_info.E_MAIL
     *
     * @mbggenerated
     */
    public String geteMail() {
        return eMail;
    }

    public String getInformation() {
        return information;
    }

    public String getAddrCo() {
        return addrCo;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public void setContacCo(String contacCo) {
        this.contacCo = contacCo;
    }

    public void setTelCo(Integer telCo) {
        this.telCo = telCo;
    }

    public void setPhone(Integer phone) {
        this.phone = phone;
    }

    public void setFb(String fb) {
        this.fb = fb;
    }

    public void setTw(String tw) {
        this.tw = tw;
    }

    public void setInformation(String information) {
        this.information = information;
    }

    public void setAddrCo(String addrCo) {
        this.addrCo = addrCo;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    @Override
    public String toString() {
        return "CompanyInfo{" +
                "companyName='" + companyName + '\'' +
                ", contacCo='" + contacCo + '\'' +
                ", telCo=" + telCo +
                ", phone=" + phone +
                ", fb='" + fb + '\'' +
                ", tw='" + tw + '\'' +
                ", information='" + information + '\'' +
                ", addrCo='" + addrCo + '\'' +
                ", eMail='" + eMail + '\'' +
                '}';
    }
}