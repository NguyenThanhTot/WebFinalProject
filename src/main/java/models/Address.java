package models;

public class Address {
    private String AccountId;
    private String Province_city;
    private String District;
    private String Address_Details;

    public Address(String  accountId, String province_city, String district, String address_details) {
        AccountId = accountId;
        Province_city = province_city;
        District = district;
        Address_Details = address_details;
    }

    public String getAccountId() {
        return AccountId;
    }

    public void setAccountId(String accountId) {
        AccountId = accountId;
    }

    public String getProvince_city() {
        return Province_city;
    }

    public void setProvince_city(String province_city) {
        Province_city = province_city;
    }

    public String getDistrict() {
        return District;
    }

    public void setDistrict(String district) {
        District = district;
    }

    public String getAddress_Details() {
        return Address_Details;
    }

    public void setAddress_Details(String address_Details) {
        Address_Details = address_Details;
    }
}
