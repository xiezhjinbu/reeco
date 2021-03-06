package entity;

public class Picdata {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column picdata.ID
     *
     * @mbggenerated
     */
    private String id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column picdata.PIC_NAME
     *
     * @mbggenerated
     */
    private String picName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column picdata.PIC_PATH
     *
     * @mbggenerated
     */
    private String picPath;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column picdata.ID
     *
     * @mbggenerated
     */
    private String productId;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table picdata
     *
     * @mbggenerated
     */


    public Picdata(String id, String picName, String picPath,String productId) {
        this.id = id;
        this.picName = picName;
        this.picPath = picPath;
        this.productId=productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column picdata.ID
     *
     * @return the value of picdata.ID
     *
     * @mbggenerated
     */
    public String getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column picdata.PIC_NAME
     *
     * @return the value of picdata.PIC_NAME
     *
     * @mbggenerated
     */
    public String getPicName() {
        return picName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column picdata.PIC_PATH
     *
     * @return the value of picdata.PIC_PATH
     *
     * @mbggenerated
     */
    public String getPicPath() {
        return picPath;
    }

    public String getProductId() {
        return productId;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setPicName(String picName) {
        this.picName = picName;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public Picdata() {
    }

    @Override
    public String toString() {
        return "Picdata{" +
                "id='" + id + '\'' +
                ", picName='" + picName + '\'' +
                ", picPath='" + picPath + '\'' +
                ", productId='" + productId + '\'' +
                '}';
    }
}