package com.zyy.ssm.po;

public class Header {
    private String headerid;

    private Integer userid;

    private byte[] headerimage;

    public String getHeaderid() {
        return headerid;
    }

    public void setHeaderid(String headerid) {
        this.headerid = headerid == null ? null : headerid.trim();
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public byte[] getHeaderimage() {
        return headerimage;
    }

    public void setHeaderimage(byte[] headerimage) {
        this.headerimage = headerimage;
    }
}