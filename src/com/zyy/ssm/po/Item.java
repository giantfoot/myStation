package com.zyy.ssm.po;

import java.io.Serializable;
import java.util.Date;

public class Item implements Serializable{
    private Integer itemid;

    private String itemname;

    private String itemurl;

    private String itempassword;

    private String itemimgurl;

    private Integer itemnum;

    private String itemtab;

    private Date itemtime;

    private String itemename;

    private String itemdesc;

    public Integer getItemid() {
        return itemid;
    }

    public void setItemid(Integer itemid) {
        this.itemid = itemid;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname == null ? null : itemname.trim();
    }

    public String getItemurl() {
        return itemurl;
    }

    public void setItemurl(String itemurl) {
        this.itemurl = itemurl == null ? null : itemurl.trim();
    }

    public String getItempassword() {
        return itempassword;
    }

    public void setItempassword(String itempassword) {
        this.itempassword = itempassword == null ? null : itempassword.trim();
    }

    public String getItemimgurl() {
        return itemimgurl;
    }

    public void setItemimgurl(String itemimgurl) {
        this.itemimgurl = itemimgurl == null ? null : itemimgurl.trim();
    }

    public Integer getItemnum() {
        return itemnum;
    }

    public void setItemnum(Integer itemnum) {
        this.itemnum = itemnum;
    }

    public String getItemtab() {
        return itemtab;
    }

    public void setItemtab(String itemtab) {
        this.itemtab = itemtab == null ? null : itemtab.trim();
    }

    public Date getItemtime() {
        return itemtime;
    }

    public void setItemtime(Date itemtime) {
        this.itemtime = itemtime;
    }

    public String getItemename() {
        return itemename;
    }

    public void setItemename(String itemename) {
        this.itemename = itemename == null ? null : itemename.trim();
    }

    public String getItemdesc() {
        return itemdesc;
    }

    public void setItemdesc(String itemdesc) {
        this.itemdesc = itemdesc == null ? null : itemdesc.trim();
    }
}