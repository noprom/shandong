package com.shandong.human.resource.domain;

/**
 * 公司实体类
 *
 * Author: constantine <1194479264@qq.com>
 * Date: 16/3/11 上午9:56
 */
public class Company {
    private int id;                     //主键
    private int province_id;             //省id
    private int city_id;                //市id
    private int area_id;                //区id
    private String address;             //地址
    private String code;                //组织机构代码,只可输入字母、数字，不超过9位
    private String name;                //企业名称
    private String business;            //主要经营业务
    private String contact;             //联系人,中文、英文
    private String zipcode;             //邮政编码,只可填写6位数字
    private String phone;               //联系电话,格式必须符合（区号）+电话号码或者为手机号码
    private String fax;                 //传真,格式必须符合（区号）+电话
    private String email;                //EMAIL,格式必须符合xxx@xxx.xxx
    private int industry_involved;    //所属行业
    private int industry_type;        //企业性质

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProvince_id() {
        return province_id;
    }

    public void setProvince_id(int province_id) {
        this.province_id = province_id;
    }

    public int getCity_id() {
        return city_id;
    }

    public void setCity_id(int city_id) {
        this.city_id = city_id;
    }

    public int getArea_id() {
        return area_id;
    }

    public void setArea_id(int area_id) {
        this.area_id = area_id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBusiness() {
        return business;
    }

    public void setBusiness(String business) {
        this.business = business;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIndustry_involved() {
        return industry_involved;
    }

    public void setIndustry_involved(int industry_involved) {
        this.industry_involved = industry_involved;
    }

    public int getIndustry_type() {
        return industry_type;
    }

    public void setIndustry_type(int industry_type) {
        this.industry_type = industry_type;
    }

    @Override
    public String toString() {
        return "Company{" +
                "id=" + id +
                ", province_id=" + province_id +
                ", city_id=" + city_id +
                ", area_id=" + area_id +
                ", address='" + address + '\'' +
                ", code='" + code + '\'' +
                ", name='" + name + '\'' +
                ", business='" + business + '\'' +
                ", contact='" + contact + '\'' +
                ", zipcode='" + zipcode + '\'' +
                ", phone='" + phone + '\'' +
                ", fax='" + fax + '\'' +
                ", email='" + email + '\'' +
                ", industry_involved='" + industry_involved + '\'' +
                ", industry_type='" + industry_type + '\'' +
                '}';
    }
}
