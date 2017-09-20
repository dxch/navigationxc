package com.module.navication.entity;

import java.io.Serializable;

//导航实体类
public class Nav implements Serializable{
    private String id;
    private String aurl;
    private String aName;
    private String aImg;
    private Integer index;
    private String categoryId;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getAurl() {
        return aurl;
    }
    public void setAurl(String aurl) {
        this.aurl = aurl;
    }
    public String getaName() {
        return aName;
    }
    public void setaName(String aName) {
        this.aName = aName;
    }
    public String getaImg() {
        return aImg;
    }
    public void setaImg(String aImg) {
        this.aImg = aImg;
    }
    public Integer getIndex() {
        return index;
    }
    public void setIndex(Integer index) {
        this.index = index;
    }
    public String getCategoryId() {
        return categoryId;
    }
    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    
}
